/*
 * moro-lazy-loaded.c
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#include "moro-lazy-loaded.h"
#include "lib/debug.h"

struct paged_file_handle *
setup_lazy_load(struct file *file)
{
    ASSERT(file);
    struct paged_file_handle *pfh = malloc(sizeof *pfh);
    ASSERT(pfh);

    pfh->begin;
    pfh->f = file;

    return pfh;
}

void
handle_lazy_load(uint32_t * pte , uint32_t * sup_pte)
{

}

void
handle_lazy_load_evict(uint32_t * pte, uint32_t *sup_pte)
{

}

void
cleanup_lazy_load(struct paged_file_handle * pfh)
{

}



