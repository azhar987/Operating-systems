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
	char data[10];
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

	
	if(fork())	
	{//parent//msg_snd
		while(1)
		{
			u1.mtype=2;
            printf("me: ");
            scanf(" %[^\n]s",txt);
			strcpy(u1.data,txt);
            msgsnd(id,&u1,strlen(u1.data)+1,0); 
		}
	}
	else
	{//child//msg_rcv

		while(1)
		{
			msgrcv(id,&u2,sizeof(u2),3,0);  
            printf("\rhim/her: %s\n",u2.data);
			printf("me: ");
			fflush(stdout); 
	}
}
}