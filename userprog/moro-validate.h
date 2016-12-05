/*
 * moro-sanitize.h
 *
 *  Created on: Dec 4, 2016
 *      Author: carmina
 */

#ifndef SRC_USERPROG_MORO_SANITIZE_H_
#define SRC_USERPROG_MORO_SANITIZE_H_

#include <stdlib.h>
#include <stddef.h>

int validate_read_addr(const void *addr, size_t size);

int validate_write_addr(void *addr, size_t size);

int validate_read_string(const char *str);

int validate_write_string(char *str);

#endif /* SRC_USERPROG_MORO_SANITIZE_H_ */
