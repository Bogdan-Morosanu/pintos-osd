/*
 * moro-mmap.h
 *
 *  Created on: Jan 20, 2017
 *      Author: moro
 */

#ifndef SRC_VM_MORO_MMAP_H_
#define SRC_VM_MORO_MMAP_H_

#include "common-vm.h"
#include "moro-common.h"

struct thread;

/// loads the memory mapped page described by
/// page table entries passed in .
/// called by load_page .
void handle_mmap_load(struct thread *t, void *v_addr);

/// handles mmap evictions , gets pointers in page table and
/// supplemental page table , called inside evict_page .
void handle_mmap_evict(struct thread *t, void *v_addr);

/// changes pages from user_page_list into normal memory pages ,
/// writes contents back to HDD ( if applicable )
/// and frees allocated memory .
/// called in process exit for all files still in mmaped_files
void cleanup_mmap(struct thread *mfh);


#endif /* SRC_VM_MORO_MMAP_H_ */
