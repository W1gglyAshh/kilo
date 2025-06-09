BIN=kilo
PREFIX=$(HOME)/local

all: $(BIN)

$(BIN): kilo.c
	$(CC) -o $(BIN) kilo.c -Wall -Wextra -std=c99 -O1 -flto

clean:
	rm $(BIN)

install:
	cp $(BIN) $(PREFIX)/bin/

uninstall:
	rm $(PREFIX)/bin/$(BIN)
