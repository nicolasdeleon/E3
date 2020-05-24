objects = main.c functions.c
#si se quieren agregar mas archivos *.o, que se agreguen a esta declaracion del principio
#para que el programa los trabaje en conjunto.

#la declaracion del principio es una especie de DEFINE 


run : $(objects)
	gcc -o run $(objects)

main.o : functions.h
functions.o : functions.h 
#makefile tiene una regla implicita para los archivos .c
#tal que los compila solos

TEST1: run
	./run 0 1 1
	
TEST2: run
	./run a 1 1
TEST3: run
	./run 0 s 1
TEST4: run
	./run 0 1 -
TEST5: run
	./run 0 1 1 2 3 4
TEST6: run
	./run 0 1 
TEST7: run
	./run 1 3 3
TEST8: run
	./run - 5 2
.PHONY: clean
clean :
	rm run $(objects) 
#esto se hace para que no haya errores al eliminar
#en el caso de que algun archivo se llame clean
