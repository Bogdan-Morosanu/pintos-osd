/*
 * moro-lazy-load.h
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#ifndef SRC_VM_MORO_COMMON_H_
#define SRC_VM_MORO_COMMON_H_

#include <stdbool.h>
#include <stdint.h>

#include "filesys/off_t.h"

#include "lib/kernel/list.h"

struct file;

bool
actually_load_segment (struct file *file, off_t ofs, uint8_t *upage,
                       uint32_t read_bytes, uint32_t zero_bytes, bool writable);

// source of the paged file handle
enum paged_file_type { PAGED_ELF, PAGED_MMAP };

/* lazily registers need to load segment at some time in the future
 * Eventually the following will happen
 * Loads a segment starting at offset OFS in FILE at address
   UPAGE.  In total, READ_BYTES + ZERO_BYTES bytes of virtual
   memory are initialized, as follows:

        - READ_BYTES bytes at UPAGE must be read from FILE
          starting at offset OFS.

        - ZERO_BYTES bytes at UPAGE + READ_BYTES must be zeroed.

   The pages initialized by this function must be writable by the
   user process if WRITABLE is true, read-only otherwise.
 *
*/
bool setup_lazy_load (struct file *file, off_t ofs, uint8_t *upage,
                      uint32_t read_bytes, uint32_t zero_bytes,
                      bool writable);

/// shared between handling lazy loading and mmap files
struct paged_file_handle {

    // for list purposes
    struct list_elem elem;

    // path to file
    struct file *f;

    // offset in file
    off_t ofs;

    // address to map to
    uint8_t *upage;

    // actual data bytes
    uint32_t read_bytes;

    // extra bytes set to zero
    uint32_t zero_bytes;

    // is page writable
    bool writable;

    // source of this file
    enum paged_file_type type;

};



#endif /* SRC_VM_MORO_COMMON_H_ */
