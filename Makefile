# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hferjani <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/03 14:18:35 by hferjani          #+#    #+#              #
#    Updated: 2022/06/07 10:25:23 by hferjani         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

##present :
##		@echo "\e[1;42m     PRINTF MAKER !    \e[0m"

SRC		= 	ft_printf.c \
	 		ft_principales.c \
	 		ft_secondaires.c  \
			ft_hexa.c

OBJ		=	${SRC:.c=.o}

NAME	= 	libftprintf.a

CC 		= 	gcc

FLAGS 	= 	-Wall -Werror -Wextra

RM		=  rm -f

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o} -I .

${NAME}:	${OBJ}
		ar -rc ${NAME} ${OBJ}

all: $(NAME)

clean:
		${RM} ${OBJ}

fclean:	clean
		${RM} ${NAME}

re: 		fclean $(NAME)

.PHONY: 	all clean fclean re