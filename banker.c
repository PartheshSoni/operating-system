#include <stdio.h>

void main(){
int n, m;
printf("Enter the number of processes in system: ");
scanf("%d", &n);
printf("Enter the number of resources of each type: ");
scanf("%d", &m);
int max[n][m];
printf("Enter the maximum requirement of each process for type resource...\n");

int i, j=0;

int available[m];
printf("Enter the available resources...\n");
for(i=0; i<m; i++){
    printf("Resource %d: ", i+1);
    scanf("%d", &available[i]);
}


printf("The maximum resources need for each process...\n");
for(i=0; i<n; i++){
    printf("Enter for process %d\n", i+1);
    for(j=0; j<m; j++){
        printf("Resource %d: ", (j+1));
        scanf("%d" ,&max[i][j]);
    }
}

int allocated[n][m];
printf("Enter the allocated resources...");
for(i=0; i<n; i++){
    printf("For process %d: \n", (i+1));
    for(j=0; j<m; j++){
        printf("Resource %d: ", (j+1));
        scanf("%d", &allocated[i][j]);
    }
}

int need[n][m];
for(i=0; i<n; i++){
    for(j=0; j<m; j++){
        need[i][j]=max[i][j]-allocated[i][j];
    }
}

printf("The following is the need matrix...\n");
for(i=0; i<n; i++){
    for(j=0; j<m; j++){
        printf("%d ", need[i][j]);
    }
    printf("\n");
}
int finish[n];
for(i=0; i<n; i++)
    finish[i]=0;

int complete=1;
int temp=0;
int count=0;

int index=0;
int list[n];
while(count<10000){
    for(i=0; i<n; i++){
        temp=0;
        for(j=0; j<m; j++){
            if(need[i][j]>available[j])
                temp=1;
        }

        if(temp==0&&finish[i]==0){
            for(j=0; j<m; j++){
                int k;
                for(k=0; k<n; k++){
                    available[j]=available[j]+allocated[k][j];
                }

            }
            finish[i]=1;
            list[index++]=i;

        }


    }

    for(i=0; i<n; i++)
        if(finish[i]==0)
            complete=0;
    if(complete==1)
        break;
count++;
}
if(complete==1){
     printf("The system is in safe state!");
     printf("The following is the sequence...\n");
     for(i=0; i<n; i++){
        printf("%d ", list[i]);
    }
}

else
    printf("Unsafe state!");

printf("\n\n\n");
}
