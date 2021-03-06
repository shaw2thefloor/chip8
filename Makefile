
# define some Makefile variables for the compiler and compiler flags
# to use Makefile variables later in the Makefile: $()
#
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
#
# for C++ define  CC = g++
CC = cc
CFLAGS  = -g -Wall

# typing 'make' will invoke the first target entry in the file 
# (in this case the default target entry)
# you can name this target entry anything, but "default" or "all"
# are the most commonly used names by convention
#
default: emu

# build executable from *.o files
emu:  emu.o chip8.o 
	$(CC) $(CFLAGS) -o emu emu.o chip8.o 

# compile .o file for chip8.c
chip8.0:  chip8.c
	$(CC) $(CFLAGS) -c chip8.c

# compile .o fore for emu.c including headers for chip8
emu.o:  emu.c chip8.h
	$(CC) $(CFLAGS) -c emu.c


# To start over from scratch, type 'make clean'.  This
# removes the executable file, as well as old .o object
# files and *~ backup files:
#
clean: 
	$(RM) emu *.o *~
