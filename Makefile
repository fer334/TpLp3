#se guarda en la variable la direccion del directorio
DIR1.1=src/listing1.1/
DIR1.2=src/listing1.2/
DIR1.3=src/listing1.3/
DIR2.1=src/listing2.1/
DIR2.2=src/listing2.2/
DIR2.3=src/listing2.3/

all: listing1.1 listing1.2 listing1.3 listing2.1 listing2.2 listing2.3 clean

#1.1
listing1.1: listing1.2 listing1.3
	g++ -o programa/reciprocal $(DIR1.1)main.o $(DIR1.2)reciprocal.o
clean-listing1.1:
	rm $(DIR1.1)/*.o


#1.2
listing1.2: $(DIR1.1)main.c 
	gcc -c  $(DIR1.1)main.c -I src/listing1.3 -o src/listing1.1/main.o
clean-listing1.2:
	rm $(DIR1.2)/*.o

#1.3
listing1.3: 
	g++ -c $(DIR1.2)reciprocal.cpp -o $(DIR1.2)reciprocal.o
clean-listing1.3:
	rm $(DIR1.3)/*.o


#2.1
listing2.1: $(DIR2.1)arglist.o
	gcc -o programa/arglist $(DIR2.1)arglist.o
clean-listing2.1:
	rm $(DIR2.1)/*.o

#2.2
listing2.2: $(DIR2.2)getopt_long.o
	gcc -o programa/getopt_long $^
clean-listing2.2:
	rm $(DIR2.2)/*.o

#2.3
listing2.3: $(DIR2.3)print-env.o
	gcc -o programa/print-env $^
clean-listing2.3:
	rm $(DIR2.3)/*.o

#borra todo
clean:
	rm */*/*.o

#para todos .o que necesiten .c
*/*/*.o: */*/*.c
