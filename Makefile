#man gcc, kdzy nevim, jak se to pise. [man - manual]
CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Werror -pedantic #modifikace chovani programu, konfigurace pro ten nastroj

#-std=c11 - c z roku 2011
#-Werror - Udela ze vsech varovani prekladove chyby
#-pedantic - striktni varovani, kdyz nedelame neco podle standartu

#main: main.c
#	gcc main.c -o main

.PHONY: clean #Specifikujeme, ze tento recept nevytvari zadny soubor

main: main.c #pridavam dalsi sem
	$(CC) $(CFLAGS) $^ -o "$@"

#$@ - vystup se bude jmenovat stejne jako vstup

clean:
	rm -Rf *.o main odevzdani.tar.gz

#pack vytvori archiv, se kterym potom muzy pracovat
pack:
	tar -czvf odevzdani.tar.gz ./*