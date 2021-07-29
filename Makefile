##
## EPITECH PROJECT, 2020
## Anthony Becarne
## File description:
## Makefile
##

CFLAGS	= -W -Wall -Wextra

CFLAGS += -I./include/ -Llib/my -lmy -lncurses

SRC	=	src/main.c			\
		src/map.c			\
		src/cursor.c		\
		src/loading.c		\
		src/interactions.c	\
		src/objectives.c	\
		src/endgame.c		\
		src/gameloop.c		\
		src/boxes.c			\
		src/error_map.c		\

OBJ	=	$(SRC:.c=.o)

NAME	=	my_sokoban

all:	$(NAME)

$(NAME):	$(OBJ)
		make -C lib/my
		make -C lib/my clean
		gcc $(OBJ) -o $(NAME) $(CFLAGS)

clean:
		rm -f $(OBJ)
		rm -f libmy.a
		rm -f *.o
		rm -f *~
		rm -f *#
		rm -f lib/my/*.o

fclean: clean
		rm -rf $(NAME)
		make -C lib/my fclean

re:	fclean all