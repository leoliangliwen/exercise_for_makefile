x=a.o b.o c.o
simple: main.o foo.o
	gcc -o simple main.o foo.o

%.o: %.c
	gcc -o $@ -c $^

.PHONY:clean
clean:
	rm simple main.o foo.o

#objects = file1.o file2.o

#helloworld : $(objects) 
#	gcc -g $(objects) -o helloworld
      
#file1.o : file2.h
              
#.PHONY : clean
#clean :
#	rm -rf helloworld $(objects)
