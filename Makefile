CC=gcc
CFLAGS=-Wall -Werror -Wextra -c 

SRC = ft_isdigit.c \
	ft_printf.c\
	ft_strlen.c\
	pars.c\
	ft_bzero.c\
	ft_isalpha.c\
	ft_memalloc.c\
	ft_strchr.c\
	ft_putc.c\
	ft_strnew.c\
	ft_putstring.c\
	ft_putnumber.c\
		  
OBJ = $(SRC:.c=.o)

NAME = libftprintf.a

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $@ $^
	ranlib $@
%.o: %.c
	$(CC) $(CFLAGS) -o $@ $< 
clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
