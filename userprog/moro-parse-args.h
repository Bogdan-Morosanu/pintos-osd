/*
 * moro-parse-args.h
 *
 *  Created on: Dec 5, 2016
 *      Author: moro
 */

#ifndef SRC_USERPROG_MORO_PARSE_ARGS_H_
#define SRC_USERPROG_MORO_PARSE_ARGS_H_


/// @brief put command line args on stack space
///        bellow sp.
/// @return new stack pointer.
void *parse_args(const char *src, void *sp);

/// helper function prints memory contents as pointers
void
dump_ptrs(void **from, void **to);

/// helper function prints memory contents as in memory strings
void
dump_chars(void *from, void *to);


#endif /* SRC_USERPROG_MORO_PARSE_ARGS_H_ */
