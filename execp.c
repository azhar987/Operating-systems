#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdio.h>
#include<errno.h> 
#include<stdlib.h>
int main() {
    pid_t childpid = fork();
    if ( childpid ==0){ 
        printf ( " I am a child proce with pid = %d \n" , getpid()); 
        printf("The next statement is execv and ls will run \n");
        char* argv []={"ls", "−l", "/usr",NULL};
        execlp("ls", argv);
        
        printf("Execv failed\n") ;
        exit(0);
    }
    else if (childpid >0){
        wait(NULL) ;
        printf("\n I am parent process with pid = %d and finished waiting \n", getpid());
    }
    return 0;
}