#se guarda en la variable la direccion del directorio
DIR1.1=src/listing1.1/
DIR1.2=src/listing1.2/
DIR1.3=src/listing1.3/
DIR2.1=src/listing2.1/
DIR2.2=src/listing2.2/
DIR2.3=src/listing2.3/

#1.1
programa/reciprocal: $(DIR1.1)main.o $(DIR1.2)reciprocal.o
	g++ -o programa/reciprocal $(DIR1.1)main.o $(DIR1.2)reciprocal.o

#1.2
$(DIR1.1)main.o: $(DIR1.1)main.c 
	gcc -c  $(DIR1.1)main.c -I src/listing1.3 -o src/listing1.1/main.o


#1.3
$(DIR1.3)reciprocal.o: 
	g++ -c $(DIR1.2)reciprocal.cpp -o $(DIR1.2)reciprocal.o

#2.1
programa/arglist: $(dir2.1)arglist.o
	gcc -o programa/arglist $(dir2.1)arglist.o

#2.2
programa/getopt_long: $(DIR2.2)getopt_long.o
	gcc -o $@ $^

#2.3
programa/print-env: $(DIR2.3)print-env.o
	gcc -o $@ $^

#para todos .o que necesiten .c
*/*/*.o: */*/*.c

clean:
	rm */*/*.o
