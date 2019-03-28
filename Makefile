DIR2.4=src/listing2.4/
DIR2.5=src/listing2.5/
DIR2.6=src/listing2.6/
DIR2.7=src/listing2.7/
DIR2.8=src/listing2.8/
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


all: listing2.4 clean-listing2.4 listing2.5 clean-listing2.5 listing2.6 clean-listing2.6 listing2.7 clean-listing2.7 listing2.8 clean-listing2.8 listing4.1 clean-listing4.1 listing4.2 clean-listing4.2 listing4.3 clean-listing4.3 listing4.4 clean-listing4.4 listing4.5 clean-listing4.5 listing4.6 clean-listing4.6 listing4.7 clean-listing4.7 listing4.8 clean-listing4.8 listing4.9 clean-listing4.9 listing4.10 clean-listing4.10 listing4.11 clean-listing4.11 listing4.12 clean-listing4.12 listing4.13 clean-listing4.13 listing4.14 clean-listing4.14 listing4.15 clean-listing4.15 clean
	
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


#GENERAl
clean:
	rm */*/*.o

*/*/*.o: */*/*.c */*/*.cpp
	
