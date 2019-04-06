#se guarda en la variable la direccion del directorio
DIR1.1=src/listing1.1/
DIR1.2=src/listing1.2/
DIR1.3=src/listing1.3/
DIR2.1=src/listing2.1/
DIR2.2=src/listing2.2/
DIR2.3=src/listing2.3/
DIR2.4=src/listing2.4/
DIR2.5=src/listing2.5/
DIR2.6=src/listing2.6/
DIR2.7=src/listing2.7/
DIR2.8=src/listing2.8/
DIR2.9=src/listing2.9/
DIR3.1=src/listing3.1/
DIR3.2=src/listing3.2/
DIR3.3=src/listing3.3/
DIR3.4=src/listing3.4/
DIR3.5=src/listing3.5/
DIR3.6=src/listing3.6/
DIR3.7=src/listing3.7/
DIR4.1=src/listing4.1/
DIR4.2=src/listing4.2/
DIR4.3=src/listing4.3/
DIR4.4=src/listing4.4/
DIR4.5=src/listing4.5/
DIR4.6=src/listing4.6/
DIR4.7=src/listing4.7/
DIR4.8=src/listing4.8/
DIR4.9=src/listing4.9/
DIR4.10=src/listing4.10/
DIR4.11=src/listing4.11/
DIR4.12=src/listing4.12/
DIR4.13=src/listing4.13/
DIR4.14=src/listing4.14/
DIR4.15=src/listing4.15/
DIR5.1=src/listing5.1/
DIR5.2=src/listing5.2/
DIR5.3=src/listing5.3/
DIR5.4=src/listing5.4/
DIR5.5=src/listing5.5/
DIR5.6=src/listing5.6/
DIR5.7=src/listing5.7/
DIR5.8=src/listing5.8/
DIR5.9=src/listing5.9/
DIR5.10=src/listing5.10/
DIR5.11=src/listing5.11/
DIR5.12=src/listing5.12/

all: cap1 cap2 cap3 cap4 cap5 clean
cap1: listing1.1 listing1.2 listing1.3 
cap2: listing2.1 listing2.2 listing2.3 listing2.4 listing2.5 listing2.6 listing2.7\
listing2.8 listing2.9 
cap3: listing3.1 listing3.2 listing3.3 listing3.4 listing3.5 listing3.6 listing3.7
cap4: listing4.1 listing4.2 listing4.3 listing4.4 listing4.5 listing4.6 listing4.7\
listing4.8 listing4.9 listing4.10 listing4.11 listing4.12 listing4.13 listing4.14\
listing4.15
cap5: listing5.1 listing5.2 listing5.3 listing5.4 listing5.5 listing5.6 listing5.7\
listing5.8 listing5.9 listing5.10 listing5.11 listing5.12

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

#2.4
listing2.4: $(DIR2.4)cliente.o 
	gcc -o programa/cliente $^ 
clean-listing2.4:
	rm $(DIR2.4)cliente.o

#2.5
listing2.5: $(DIR2.5)temp_file.o
	gcc -o programa/temp_file $^
clean-listing2.5: 
	rm $(DIR2.5)temp_file.o

#2.6
listing2.6: $(DIR2.6)readfile.o
	gcc -o programa/readfile $^
clean-listing2.6: 
	rm $(DIR2.6)readfile.o

#2.7
listing2.7: $(DIR2.7)test.o
	gcc -o programa/test $^
clean-listing2.7: 
	rm $(DIR2.7)test.o

#2.8
listing2.8: $(DIR2.8)app.o
	gcc -o programa/app $^
clean-listing2.8: 
	rm $(DIR2.8)app.o

#2.9 
listing2.9: libtiff $(DIR2.9)tifftest.o
	gcc -o programa/tifftest $(DIR2.9)tifftest.o
libtiff: 
	sudo apt-get install libtiff4-dev
clean-listing2.9: 
	rm $(DIR2.9)tifftest.o

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

#3.6
listing3.6: $(DIR3.6)zombie.o
	gcc -o programa/zombie $^
clean-listing3.6:
	rm $(DIR3.6)/*.o

#3.7
listing3.7: $(DIR3.7)sigchld.o
	gcc -o programa/sigchld $^
clean-listing3.7:
	rm $(DIR3.7)/*.o

#4.1
listing4.1: $(DIR4.1)thread-create.o
	cc -o programa/thread-create $^ -lpthread
clean-listing4.1: 
	rm $(DIR4.1)thread-create.o

#4.2
listing4.2: $(DIR4.2)thread-create2.o
	cc -o programa/thread-create2 $^ -lpthread
clean-listing4.2: 
	rm $(DIR4.2)thread-create2.o


#4.3
listing4.3: $(DIR4.3)thread-create2.1.o
	cc -o programa/thread-create2.1 $^ -lpthread
clean-listing4.3: 
	rm $(DIR4.3)thread-create2.1.o

#4.4
listing4.4: $(DIR4.4)primes.o
	cc -o programa/primes $^ -lpthread
clean-listing4.4: 
	rm $(DIR4.4)primes.o

#4.5
listing4.5: $(DIR4.5)detached.o
	cc -o programa/detached $^ -lpthread
clean-listing4.5: 
	rm $(DIR4.5)detached.o

#4.6
listing4.6: $(DIR4.6)critical-section.o
	cc -o programa/critical-section $^ -lpthread
clean-listing4.6: 
	rm $(DIR4.6)critical-section.o

#4.7
listing4.7: $(DIR4.7)tsd.o
	cc -o programa/tsd $^ -lpthread
clean-listing4.7: 
	rm $(DIR4.7)tsd.o

#4.8
listing4.8: $(DIR4.8)cleanup.o
	cc -o programa/cleanup $^ -lpthread
clean-listing4.8: 
	rm $(DIR4.8)cleanup.o

#4.9
listing4.9: $(DIR4.9)cxx-exit.o
	g++ -o programa/cxx-exit $^ -lpthread
clean-listing4.9: 
	rm $(DIR4.9)cxx-exit.o

#4.10*
listing4.10: $(DIR4.10)job-queue1.o
	cc -o programa/job-queue1 $^ -lpthread
clean-listing4.10: 
	rm $(DIR4.10)job-queue1.o

#4.11*
listing4.11: $(DIR4.11)job-queue2.o
	cc -o programa/job-queue2 $^ -lpthread
clean-listing4.11: 
	rm $(DIR4.11)job-queue2.o

#4.12*
listing4.12: $(DIR4.12)job-queue3.o
	cc -o programa/job-queue3 $^ -lpthread
clean-listing4.12: 
	rm $(DIR4.12)job-queue3.o

#4.13*
listing4.13: $(DIR4.13)spin-condvar.o
	cc -o programa/spin-condvar $^ -lpthread
clean-listing4.13: 
	rm $(DIR4.13)spin-condvar.o

#4.14*
listing4.14: $(DIR4.14)condvar.o
	cc -o programa/condvar $^ -lpthread
clean-listing4.14: 
	rm $(DIR4.14)condvar.o

#4.15*
listing4.15: $(DIR4.15)thread-pid.o
	cc -o programa/thread-pid $^ -lpthread
clean-listing4.15: 
	rm $(DIR4.15)thread-pid.o

#5.1
listing5.1: $(DIR5.1)shm.o
	gcc -o programa/shm $^
clean-listing5.1:
	rm $(DIR5.1)/*.o

#5.2
listing5.2: $(DIR5.2)sem_all_deall.o
	gcc -o programa/sem_all_deall $^
clean-listing5.2:
	rm $(DIR5.2)/*.o

#5.3
listing5.3: $(DIR5.3)sem_init.o
	gcc -o programa/sem_init $^
clean-listing5.3:
	rm $(DIR5.3)/*.o

#5.4
listing5.4: $(DIR5.4)sem_pv.o
	gcc -o programa/sem_pv $^
clean-listing5.4:
	rm $(DIR5.4)/*.o

#5.5
listing5.5: $(DIR5.5)mmap-write.o
	gcc -o programa/mmap-write $^
clean-listing5.5:
	rm $(DIR5.5)/*.o

#5.6
listing5.6: $(DIR5.6)mmap-read.o
	gcc -o programa/mmap-read $^
clean-listing5.6:
	rm $(DIR5.6)/*.o

#5.7
listing5.7: $(DIR5.7)pipe.o
	gcc -o programa/pipe $^
clean-listing5.7:
	rm $(DIR5.7)/*.o

#5.8
listing5.8: $(DIR5.8)dup2.o
	gcc -o programa/dup2 $^
clean-listing5.8:
	rm $(DIR5.8)/*.o

#5.9
listing5.9: $(DIR5.9)popen.o
	gcc -o programa/popen $^
clean-listing5.9:
	rm $(DIR5.9)/*.o

#5.10
listing5.10: $(DIR5.10)socket-server.o
	gcc -o programa/socket-server $^
$(DIR5.10)socket-server.o:
	gcc -c -w -o $@ $(DIR5.10)socket-server.c
clean-listing5.10:
	rm $(DIR5.10)/*.o

#5.11
listing5.11: $(DIR5.11)socket-client.o
	gcc -o programa/socket-client $^
$(DIR5.11)socket-client.o:
	gcc -c -w -o $@ $(DIR5.11)socket-client.c
clean-listing5.11:
	rm $(DIR5.11)/*.o

#5.12
listing5.12: $(DIR5.12)socket-inet.o
	gcc -o programa/socket-inet $^
$(DIR5.12)socket-inet.o:
	gcc -c -w -o $@ $(DIR5.12)socket-inet.c
clean-listing5.12:
	rm $(DIR5.12)/*.o


#GENERAl

#borra todos los .o
clean:
	rm */*/*.o

#borra todos los programas compilados
clean-programa:
	rm programa/*

#para todos .o que necesiten .c/.cpp
*/*/*.o: */*/*.c */*/*.cpp
	
