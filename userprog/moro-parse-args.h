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


#endif /* SRC_USERPROG_MORO_PARSE_ARGS_H_ */
