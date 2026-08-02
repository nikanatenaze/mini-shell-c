#include <stdio.h>
#include <stdbool.h>
#include "shell.h"

char user_input[50];

void test() {
    printf(BASIC_TEST_VALUE);
}

void shell_execute() {
    while (true)
    {
        printf("Mini-Shell > ");
        if(scanf("%49s", user_input) != 1) {
            printf("Wrong input!\n");
            continue;
        }
        printf("Unknowns command, yet we dont have any commands!\n");
    } 
}