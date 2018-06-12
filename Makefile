NAME = libftprintf.a
HEADER = -c -I ./includes/
FLAGS = -Wall -Wextra -Werror
SRC = ft_memchr.c ft_putstr.c ft_striter.c ft_strnew.c ft_atoi.c \
ft_memcmp.c	ft_putstr_fd.c ft_striteri.c ft_strnstr.c ft_bzero.c \
ft_memcpy.c ft_strcat.c ft_strjoin.c ft_strrchr.c ft_isalnum.c ft_memdel.c \
ft_strchr.c ft_strsplit.c ft_isalpha.c ft_memmove.c ft_strclr.c \
ft_strlen.c ft_strstr.c ft_isascii.c ft_memset.c ft_strcmp.c ft_strsub.c \
ft_isdigit.c ft_putchar.c ft_strcpy.c ft_strmap.c ft_strtrim.c \
ft_isprint.c ft_putchar_fd.c ft_strdel.c ft_strmapi.c ft_tolower.c \
ft_itoa.c ft_putendl.c ft_putendl_fd.c ft_strdup.c ft_strncat.c ft_toupper.c \
ft_memalloc.c ft_putnbr.c ft_strnequ.c ft_strncmp.c \
ft_memccpy.c ft_putnbr_fd.c ft_strequ.c ft_strncpy.c ft_lstnew.c ft_lstdelone.c \
ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_strlcat.c ft_sqrt.c \
ft_swap.c ft_countstrclen.c ft_is_negative.c ft_print_numbers.c \
ft_strlen.c ft_strdel.c ft_itoa.c ft_strdup.c main_printf.c \
check_flags.c check_types.c ft_strlen_int.c \
print_o_u.c add_o_u.c print_type_x_bx_p.c add_x_bx_p.c flags_x_bx_p.c print_uni_c.c \
print_s.c add_unis_c.c print_type_uni_s.c print_d_i_bd.c add_fl_d_i_bd.c add_main_printf.c \
check_flags1.c \

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
		ar rc $@ $^

%.o: %.c
		@gcc $(HEADER) $(FLAGS) -c -o $@ $<

clean:
			rm -f *.o

fclean: clean
			rm -f $(NAME)

re: fclean all
