/*
 * moro-lazy-load.h
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#ifndef SRC_VM_MORO_COMMON_H_
#define SRC_VM_MORO_COMMON_H_

struct file;

/// shared between handling lazy loading and mmap files
struct paged_file_handle {

    // path to file
    struct file *f;

    // address belonging to offset 0 inside file
    void *begin;
};



#endif /* SRC_VM_MORO_COMMON_H_ */
