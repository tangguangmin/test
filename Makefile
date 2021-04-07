OBJS = ftp.o main.o
CC = g++
CFLAGS = -Wall -g
CURRENT_PATH := $(shell pwd)
ftp:$(OBJS)
	$(CC) $(OBJS) -lpthread -o ftp
ftp.o:ftp.cpp ftp.h
	$(CC) $(CFLAGS) -c ftp.cpp -I $(CURRENT_PATH) -o ftp.o
main.o:main.cpp
	$(CC) $(CFLAGS) -c main.cpp -I $(CURRENT_PATH) -o main.o
clean:
	rm ftp ftp.o main.o