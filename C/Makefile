# nom des executable
COLLEEN = colleen
GRACE = grace
SULLY = sully

# nom des fichiers code source (*.c)
NAME_SRC = Colleen.c Grace.c Sully.c

# nom des fichier objects (*.o)

NAME_OBJ = $(NAME_SRC:.c=.o)

# les sources

SRC = NAME_SRC

#compilateur + flags
CC = gcc -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) : Colleen.o
	$(CC) $^ -o $@

$(GRACE) : Grace.o
	$(CC) $^ -o $@

$(SULLY) : Sully.o
	$(CC) $^ -o $@

./%.o : ./%.c
	$(CC) -c $< -o $@

clean:
	@rm -f $(NAME_OBJ)
	@rm -f Grace_kid.c Sully_0.c Sully_1.c Sully_2.c Sully_3.c Sully_4.c colleen_output

fclean: clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY)

run: all
	@./$(COLLEEN) > $(COLLEEN)_output ; ./$(GRACE) ; ./$(SULLY)

re: fclean all

.PHONY: all clean fclean re run