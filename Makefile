# build helloworld executable when user executes "make"
CC = gcc
FLAG = -Wall

helloworld:
	$(CC) $(FLAG) helloworld.c -o helloworld
