#include <stdio.h>

void main(int argc, char **argv){
    FILE *fp;
    fp=fopen(argv[1], "a");
    char *temp=argv[2];


    fprintf(fp, "%s", temp);
    fclose(fp);
}
