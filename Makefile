#se guarda en la variable la direccion del directorio
DIR1.1=src/listing1.1/
DIR1.2=src/listing1.2/
DIR1.3=src/listing1.3/
DIR2.1=src/listing2.1/
DIR2.2=src/listing2.2/
DIR2.3=src/listing2.3/
DIR3.1=src/listing3.1/
DIR3.2=src/listing3.2/
DIR3.3=src/listing3.3/
DIR3.4=src/listing3.4/
DIR3.5=src/listing3.5/

all: cap1 cap2 cap3 clean
cap1: listing1.1 listing1.2 listing1.3 
cap2: listing2.1 listing2.2 listing2.3 
cap3: listing3.1 listing3.2 listing3.3 listing3.4 listing3.5

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

#3.1
listing3.1: $(DIR3.1)print-pid.o
	gcc -o programa/print-pid $^
clean-listing3.1:
	rm $(DIR3.1)/*.o

#3.2
listing3.2: $(DIR3.2)system.o
	gcc -o programa/system $^
clean-listing3.2:
	rm $(DIR3.2)/*.o

#3.3
listing3.3: $(DIR3.3)fork.o
	gcc -o programa/fork $^
clean-listing3.3:
	rm $(DIR3.3)/*.o

#3.4
listing3.4: $(DIR3.4)fork-exec.o
	gcc -o programa/fork-exec $^
clean-listing3.4:
	rm $(DIR3.4)/*.o

#3.5
listing3.5: $(DIR3.5)sigusr1.o
	gcc -o programa/sigusr1 $^
clean-listing3.5:
	rm $(DIR3.5)/*.o



#borra todos los .o
clean:
	rm */*/*.o

#borra todos los programas compilados
clean-programa:
	rm programa/*

#para todos .o que necesiten .c
*/*/*.o: */*/*.c
