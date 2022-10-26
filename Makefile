prefix = /usr/local
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
export prefix
export exec_prefix
export bindir

SRC = $(wildcard *.cc)
OBJ = $(patsubst %.cc, %.o, $(SRC))
 
ALL: main

main: $(OBJ)
	gcc $< -o $@

$(OBJ): $(SRC)
	gcc -c $< -o $@ -g -std=c++11  -I /usr/include/x86_64-linux-gnu/ -L  /usr/local/lib/   $(pkg-config --cflags --libs gtk+-3.0)

clean:

    rm main

install:

         install -d $(bindir)

         install -m 0755 main  $(bindir)

uninstall:

         rm $(bindir)/main
