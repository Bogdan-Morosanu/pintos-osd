/*
 * moro-mmap.h
 *
 *  Created on: Jan 20, 2017
 *      Author: moro
 */

#ifndef SRC_VM_MORO_MMAP_H_
#define SRC_VM_MORO_MMAP_H_

#include "common-vm.h"

/// maps file from path at addr , adds entry to
/// current process descriptor ’s mmaped
/// files list , adds pages in user_page_list .
struct paged_file_handle *setup_mmap(const char * path , void * addr);

/// loads the memory mapped page described by
/// page table entries passed in .
/// called by load_page .
void handle_mmap_load(uint32_t * pte , uint32_t * sup_pte);

/// handles mmap evictions , gets pointers in page table and
/// supplemental page table , called inside evict_page .
void handle_mmap_evict(uint32_t * pte , uint32_t * sup_pte);

/// changes pages from user_page_list into normal memory pages ,
/// writes contents back to HDD ( if applicable )
/// and frees allocated memory .
/// called in process exit for all files still in mmaped_files
void cleanup_mmap(struct paged_file_handle * mfh);


#endif /* SRC_VM_MORO_MMAP_H_ */
