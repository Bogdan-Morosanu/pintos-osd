/*
 * moro-validate.c
 *
 *  Created on: Dec 5, 2016
 *      Author: moro
 */

#include "moro-validate.h"
#include "threads/vaddr.h"

/* Reads a byte at user virtual address UADDR.
UADDR must be below PHYS_BASE.
Returns the byte value if successful, -1 if a segfault
occurred. */
static int
get_user (const uint8_t *uaddr)
{
    int result;
    asm ("movl $1f, %0; movzbl %1, %0; 1:"
            : "=&a" (result) : "m" (*uaddr));
    return result;
}
/* Writes BYTE to user address UDST.
UDST must be below PHYS_BASE.
Returns true if successful, false if a segfault occurred. */
static bool
put_user (uint8_t *udst, uint8_t byte)
{
    int error_code;
    asm ("movl $1f, %0; movb %b2, %1; 1:"
            : "=&a" (error_code), "=m" (*udst) : "q" (byte));
    return error_code != -1;
}

bool
memory_chunk_in_userspace(const void *addr, size_t size)
{
    bool begin_ok = addr < PHYS_BASE;
    bool end_ok = ((char*)addr) + size < PHYS_BASE;

    return begin_ok && end_ok;
}

/// TODO Implement
int validate_read_addr(const void *addr, size_t size)
{
    if (!memory_chunk_in_userspace(addr, size)) {
        return 0;
    }

    const char *begin = addr;
    const char *end = ((char*)addr) + size;

    // make sure every page is mapped
    while (begin < end) {
        if (-1 == get_user(begin)) {
            return 0; // not mapped!
        }

        begin += PGSIZE;
    }

    return 1; // all mapped
}

/// TODO Implement
int validate_write_addr(void *addr, size_t size)
{
    if (!memory_chunk_in_userspace(addr, size)) {
        return 0;
    }

    const char *begin = addr;
    const char *end = ((char*)addr) + size;

    // make sure every page is mapped
    while (begin < end) {
        if (!put_user(begin, '\0')) {
            return 0; // not mapped!
        }

        begin += PGSIZE;
    }

    return 1; // all mapped
}

/// TODO Implement
int validate_read_string(const char *str)
{
    const char *src = str;
    while ('\0' != *src) {
        if (src < PHYS_BASE && (-1 != get_user(src))) {
            src++; // can read another byte

        } else {

            return 0; // in kernel or not mapped
        }
    }

    return 1; // all good
}

