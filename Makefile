CC=gcc
CFLAGS=-Wall -Wextra -g
SRC=src/main.c
OBJ=$(SRC:.c=.o)
EXEC=my_c_project

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXEC)