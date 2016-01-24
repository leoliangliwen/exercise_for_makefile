objects = file1.o file2.o

helloworld : $(objects) 
	gcc $(objects) -o helloworld
      
file1.o : file2.h
              
.PHONY : clean
clean :
	rm -rf helloworld $(objects)
