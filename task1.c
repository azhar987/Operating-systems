#include <stdio.h> 
#include <sys/types.h> 
#include <unistd.h>
#include <stdlib.h>
int main() 
{ 
    fork();
    printf("Hello world!\n");
    printf("Hello world!\n");
    printf("Hello world!\n");
    printf("Hello world!\n");
    fork(); 
    printf("Hello world!\n");
    printf("Hello world!\n");
    fork();
    printf("Hello world!\n");
    printf("Hello world!\n");
    fork();
    printf("Hello world!\n");
    printf("Hello world!\n");
    return 0; 
} 