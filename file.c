#include<unistd.h>
#include<string.h>
#include<fcntl.h> 
#include<stdio.h>
int main(){
    char str[29] = "hello world";
    int fifo_write ;
    //open " pipe_one " with WRITE only mode // and return its file descriptor 
    fifo_write = open("azhar.txt",'r+'); 
    //check if open call was successful
    if (fifo_write < 0){
        printf(" Error opening file \n");
    }
    else {

        strcpy(str , "Azhar Jadoon\nBCS-5A\nP20-0631");
        write (fifo_write , str , sizeof(str));

        read(fifo_write, str , sizeof(str));

        printf("%s" ,str);


        close(fifo_write);
    }



    return 0;
}