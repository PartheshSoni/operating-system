#include <stdio.h>
#include <stdlib.h>

void main(int argc, char **argv){
    FILE *fp;
    //String filename=argv[1];
    fp=fopen(argv[1], "r");

    char ch;
    int c=0;
    while(((ch=fgetc(fp))!=EOF))
        {
        printf("%c", ch);
        c++;
        }

    printf("\n %d\n", c);
    fclose(fp);


}
