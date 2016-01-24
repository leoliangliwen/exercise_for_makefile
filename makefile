objects = file1.o file2.o

helloworld : $(objects) 
	gcc $(objects) -o helloworld
      
file1.o : file1.c file2.h
	gcc -c file1.c -o file1.o
          
file2.o : file2.c file2.h
	gcc -c file2.c -o file2.o
              
clean :
	rm -rf helloworld $(objects)
