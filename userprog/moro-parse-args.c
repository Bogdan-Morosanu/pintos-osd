/*
 * moro-parse-args.c
 *
 *  Created on: Dec 5, 2016
 *      Author: moro
 */

#include "moro-parse-args.h"

#include <stdlib.h>
#include <threads/malloc.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

/// helper structure holds args to main
struct Argcv {
    int argc;
    char **argv;
};

/// helper function prints memory contents as pointers
static void
dump_ptrs(void **from, void **to)
{
    while (from != to) {
        printf("%p : %p\n", from, *from);
        from++;
    }
}

/// helper function prints memory contents as in memory strings
static void
dump_chars(void *from, void *to)
{
    int start_string = 1;
    while (from != to) {
        if ('\0' == *(char*)from) {
            printf("\\0\n");
            start_string = 1;

        } else {
            if (start_string) {
                printf("%p : %c", from, *(char*)from);
                start_string = 0;

            } else {
                printf("%c", *(char*)from);
            }
        }

        from++;
    }
}

void *parse_args(const char *args, void *where)
{

    struct Argcv *acv = malloc(sizeof(*acv));

    const char *src = args; // data source
    int num_wds = 0; // number of words found
    int globbed_wspace = 0; // number of extra whitespace

    // --- First Pass, see how much memory we need ---

    // count words
    int parsing_word = 0; // true if currently parsing word
    if (*args) {

        do {
            // seen space
            if (isspace(*src)) {
                parsing_word = 0; // mark end of word

                // glob up extra whitespace
                while (src[1] && isspace(src[1])) {
                    src++;
                    globbed_wspace++;
                }

            } else {

                // mark begining of new word
                if (!parsing_word) {
                    num_wds++;
                    parsing_word = 1;
                }
            }
        } while (*src++);
    }

    // allocate num words + 1 for num words ptrs
    // and NULL sentinel as well
    acv->argc = num_wds;
    acv->argv = malloc((num_wds + 1) * sizeof(char*));

    // setup destination char and ptr, allocate room on stack for strings
    char **dst_ptr = acv->argv;
    // leave enough room inside where to hold all strings
    // (+1 for the NULL termination of the big string, which
    //  is not counted by strlen)
    // --- where ---    (current top of stack : high address)
    // ...
    // --- dst_char --- (place to write next char to : somewhere in between)
    // ...
    // --- esp --- (start address of strings : low address)
    void *esp = where - (strlen(args) + 1 - globbed_wspace);
    char *dst_char = esp;

    // ---- Second Pass, Copy Data ----
    // now copy chars to where and setup ptrs in argv to good values
    parsing_word = 0;
    src = args; // reset src
    do {

        if (isspace(*src)) {

            // if currently parsing, end this string
            if (parsing_word) {
                parsing_word = 0;
                *dst_char++ = '\0'; // null terminate them strings!
            }

            // glob up extra whitespace
            while (src[1] && isspace(src[1])) {
                src++;
            }

        } else { // handle part of command line arg

            // if not currently parsing, start new string
            if (!parsing_word) {
                *dst_ptr++ = dst_char; // link argv to actual string address
                *dst_char++ = *src; // copy over char
                parsing_word = 1;   // mark that we are currently parsing a word

            } else {
                *dst_char++ = *src; // just copy over char
            }
        }

    } while (*src++);

    *dst_ptr = NULL; // sentinel value
    // here dst_char == where should be true

    // now we will just copy over argv, argc and *argv
    // note dst points to next available char

    // size align to char*
    size_t sz = sizeof(char*);
    size_t remainder = ((size_t)esp) % sz;
    void *dst_argv = ((char*)esp) - remainder;

    void *argv_end = dst_argv;

    // copy *argv
    size_t argv_sz = sz * (acv->argc + 1); // +1 for the sentinel NULL
    dst_argv = ((char*)dst_argv) - argv_sz;
    memcpy(dst_argv, acv->argv, argv_sz);

    // copy argv and argc
    void *argv_begin = dst_argv;
    dst_argv = ((char*)dst_argv) - sizeof(acv->argv);
    (*(void**)dst_argv) = argv_begin;
    
    dst_argv = ((char*)dst_argv) - sizeof(acv->argc);
    (*(int*)dst_argv) = acv->argc;
    
    // put the dummy return address 0.
    dst_argv = ((char*)dst_argv) - sizeof(void*);
    (*(void**)dst_argv) = NULL;

    free(acv->argv);
    free(acv);

    return dst_argv;
}
