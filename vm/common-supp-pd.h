/*
 * common-supp-pd.h
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#ifndef SRC_VM_COMMON_SUPP_PD_H_
#define SRC_VM_COMMON_SUPP_PD_H_

void sup_page_dir_set(struct thread *t, void *v_addr, uint32_t val);

uint32_t sup_page_dir_get(struct thread *t, void *v_addr);

/// sets up supplemental page table to be filled with info for missing
/// pages.
uint32_t *sup_page_dir_alloc(void);

/// called in process exit , removes any remaining pages from
/// global user_page_list and frees memory .
void sup_page_dir_free(uint32_t * sup_pd);

#endif /* SRC_VM_COMMON_SUPP_PD_H_ */
