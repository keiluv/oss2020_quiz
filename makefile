CC = gcc
CFLAGS = -g -Wall
TARGETS = main.out
OBJECTS = main.c user.o group.o
.SUFFIXES = .c .o
main_debug : $(TARGETS)
main_debug : DEBUGOPTION = -DDEBUG

$(TARGETS) : $(OBJECTS)
	$(CC) $(CFLAGS) $(DEBUGOPTION) -o $@ $^
.c.o :
	$(CC) $(CFLAGS) $(DEBUGOPTION) -c $<
clean :
	rm *.o $(TARGETS)
