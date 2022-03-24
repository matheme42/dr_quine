# executable
COLLEEN = colleen.dart
GRACE = grace.dart
SULLY = sully.dart


all:
	@dart $(COLLEEN) > $(COLLEEN)_output ; dart $(GRACE) ; dart $(SULLY)

clean:
	@rm -f Grace_kid.dart Sully_0.dart Sully_1.dart Sully_2.dart Sully_3.dart Sully_4.dart $(COLLEEN)_output

fclean: clean

run: all

re: fclean all

.PHONY: all clean fclean re run