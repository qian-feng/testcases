#include <stdio.h>

int main(int argc, char* a[])
{
    int n = argc;
    int c = 0;
    int x[2]= {1,2};
    if(argc<2) return 0;
    for(int i=0; i< 10; i++){
        if(a!=NULL && a[1]!= NULL && a[1][i]=='B')
            c++;
    }

    if(c == 5){
        x[100000] = 100;
    }
    return 0;
}
