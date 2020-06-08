#include "chip8.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


int main (int argc, char**argv)
{
    FILE *f= fopen(argv[1], "rb");
    if (f==NULL)
    {
        printf("error: Couldn't open %s\n", argv[1]);
        exit(1);
    }

    //Get the file size
    fseek(f, 0L, SEEK_END);
    int fsize = ftell(f);
    fseek(f, 0L, SEEK_SET);

    //CHIP-8 convention puts programs in memory at 0x200
    // They will all have hardcoded addresses expecting that
    //
    //Read the file into memory at 0x200 and close it.
    unsigned char *buffer=malloc(fsize+0x200);
    fread(buffer+0x200, fsize, 1, f);
    fclose(f);

    int pc = 0x200;
    while (pc < (fsize+0x200))
    {
        DisassembleChip8Op(buffer, pc);
        pc += 2;
        printf ("\n");
    }
    return 0;
}

