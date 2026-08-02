// baisic definitions
#define _GNU_SOURCE

// Includes (imports)
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "shell.h"


// Prototypes
char *cell_read_line(void);

// shell data
char *user_input = NULL;
size_t input_size = 0;

// read cell line
char *cell_read_line(void) {
    char *buf;
    size_t buf_size;
    char cwd[BUFSIZ];

    buf = NULL;
    
}

// execute shell
void cell_execute() {
    while (true)
    {
        printf("Mini-Shell > ");
        if(getline(&user_input, &input_size, stdin) == -1) {
            printf("Wrong input!\n");
            continue;
        }
        printf("damn: %s\n", user_input);
    } 
}

