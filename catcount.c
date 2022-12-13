#include<stdio.h> 
#include<sys/wait.h> 
#include<unistd.h> 

int main(int argc, char *argv[]) 
{
    int n1 = fork();
    if (n1 == 0) {
        printf("Hello from child1\n"); 
        execlp("/bin/Desktop/OS/count", "count", argv[1], NULL);
    }
    else
    { 
        wait(NULL); 
        int n2 = fork();
        
        if(n2 == 0){
            printf("Hello from child2\n"); 
            execlp("/usr/bin/OS/catcount", "CC", argv[1], NULL);
        }
    } 

    return 0; 
}