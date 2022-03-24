# nom des executable
COLLEEN = colleen
GRACE = grace
SULLY = sully

# nom des fichiers code source (*.s)
NAME_SRC = Colleen.s Grace.s Sully.s

# nom des fichier objects (*.o)

NAME_OBJ = $(NAME_SRC:.s=.o)

# les sources

SRC = NAME_SRC

#compilateur + flags
CC = gcc -Wall -Wextra -Werror
NASM = nasm -f macho64

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) : Colleen.o
	$(CC) $^ -o $@

$(GRACE) : Grace.o
	$(CC) $^ -o $@

$(SULLY) : Sully.o
	$(CC) $^ -o $@

./%.o : ./%.s
	$(NASM) $< -o $@

clean:
	@rm -f $(NAME_OBJ)
	@rm -f Grace_kid.s Sully_0.s Sully_1.s Sully_2.s Sully_3.s Sully_4.s colleen_output

fclean: clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY)

run: all
	@./$(COLLEEN) > $(COLLEEN)_output ; ./$(GRACE) ; ./$(SULLY)

re: fclean all

.PHONY: all clean fclean re run