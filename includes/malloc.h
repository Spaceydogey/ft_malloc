#ifndef MALLOC_H
# define MALLOC_H

# include <stdlib.h>

# define SMALL_N 32
# define BIG_N 32
# define SMALL_M 64
# define BIG_M 64
void	free(void *ptr);
void	*malloc(size_t size);
void	*realloc(void *ptr, size_t size);
void	show_alloc_mem();

#endif
