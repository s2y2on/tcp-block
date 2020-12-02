all: tcp-block

tcp-block: tcp-block.o functions.o
	g++ -g -o tcp-block tcp-block.o functions.o -lpcap

functions.o: functions.cpp tcp-block.h
	g++ -g -c -o functions.o functions.cpp

tcp-block.o: tcp-block.cpp tcp-block.h
	g++ -g -c -o tcp-block.o tcp-block.cpp

clean:
	rm -f tcp-block *.o