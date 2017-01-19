/*
 * moro-lazy-loaded.h
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#ifndef SRC_VM_MORO_LAZY_LOADED_H_
#define SRC_VM_MORO_LAZY_LOADED_H_

#include <stdint.h>

#include "moro-common.h"

/// allocates and populates paged_file_handle
/// at process creation
struct paged_file_handle *
setup_lazy_load(struct file *f);

/// loads the lazy loaded page described by page
/// table entries passed in .
/// called by load_page .
void
handle_lazy_load(uint32_t * pte , uint32_t * sup_pte);

/// handles eviction of lazy loaded page at
/// page table and suplemental page table entries passed in .
void
handle_lazy_load_evict(uint32_t * pte, uint32_t *sup_pte);

/// releases memory allocated , ( for paged_file_handle )
/// and page inside user_page_list
/// called in process exit only .
void
cleanup_lazy_load(struct paged_file_handle * pfh);


#endif /* SRC_VM_MORO_LAZY_LOADED_H_ */
