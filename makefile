NAME = malloc

SRCS = ./srcs/malloc.c

OBJ = $(SRCS:.c=.o)

AR = ar -rcs

CFLAGS = -Wall -Wextra -Werror

CC = cc

RM = rm -f

FFLAGS = -fsanitize=address -g

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(FFLAGS) $(OBJ) -o $(NAME)

.c.o:
		$(CC) $(CFLAGS) $(FFLAGS) -c $< -o $(<:.c=.o)

all: $(NAME)

clean:
		$(RM) $(OBJ) $(BONUSOBJ)

fclean: clean 
		$(RM) $(NAME)

re :	fclean all

.PHONY: all clean fclean re bonus
