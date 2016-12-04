#ifndef __LIB_STDLIB_H
#define __LIB_STDLIB_H

#include <stddef.h>


/* Added by Carmina. Taken from stdlib.h from ubuntu */

/* We define these the same for all machines.
   Changes from this to the outside world should be done in `_exit'.  */
#define	EXIT_FAILURE	1	/* Failing exit status.  */
#define	EXIT_SUCCESS	0	/* Successful exit status.  */

/* Standard functions. */
int atoi (const char *);
void qsort (void *array, size_t cnt, size_t size,
            int (*compare) (const void *, const void *));
void *bsearch (const void *key, const void *array, size_t cnt,
               size_t size, int (*compare) (const void *, const void *));

/* Nonstandard functions. */
void sort (void *array, size_t cnt, size_t size,
           int (*compare) (const void *, const void *, void *aux),
           void *aux);
void *binary_search (const void *key, const void *array, size_t cnt,
                     size_t size,
                     int (*compare) (const void *, const void *, void *aux),
                     void *aux);

#endif /* lib/stdlib.h */
