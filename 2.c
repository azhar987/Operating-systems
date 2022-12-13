#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/ipc.h>
#include<sys/msg.h>

struct msgbuf  
{
    long mtype;
	char data[30];
};


int main()
{
	char txt[30];
    struct msgbuf u1,u2;
	int id;

	id=msgget(4,IPC_CREAT|0644);  
	if(id<0)
	{
		perror("msgget");
		return 0;
	}

	
	if(fork()==0)
	{//child//msg_rcv
		while(1)
		{
			msgrcv(id,&u1,sizeof(u1),2,0);  
            printf("\rhim/her: %s\n",u1.data);
			printf("me: ");
			fflush(stdout);  
		}
	}
	else
	{//parent//msg_snd 
		while(1)
		{
			u2.mtype=3;
            printf("me: ");
			scanf(" %[^\n]s",txt);
			strcpy(u2.data,txt);
            msgsnd(id,&u2,strlen(u2.data)+1,0);  
		}
	}
}