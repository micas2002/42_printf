# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mibernar <mibernar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/06 13:33:51 by mibernar          #+#    #+#              #
#    Updated: 2022/09/09 12:27:06 by mibernar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_printf.c ft_printf_c.c ft_printf_d.c ft_printf_i.c ft_printf_p.c \
		ft_printf_s.c ft_printf_u.c ft_printf_x_lower.c ft_printf_x_upper.c \
		ft_printf_utils_1.c ft_printf_utils_2.c ft_unsigned_itoa.c

OBJS = $(SRCS:.c=.o)

CC = gcc
RM = rm -rf
CFLAGS = -Werror -Wextra -Wall 

NAME = libftprintf.a

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)

$(OBJS): $(SRCS)
	@$(CC) $(CFLAGS) -c $(SRCS) $(INC)

clean:
	@$(RM) $(OBJS) $(BONUS_OBJS)

fclean:	clean
	@$(RM) $(NAME)

re:	fclean all

bonus: $(OBJS) $(BONUS_OBJS)
	@ar -rcs $(NAME) $(OBJS) $(BONUS_OBJS)
