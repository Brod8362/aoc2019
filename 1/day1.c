#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int req(int input) {
    return (input/3)-2;
}

int req_r(int input) {
    int t = 0;
    while (1) {
        int a = req(input);
        if (a < 0) break;
        t+=a;
        input=a;
    } 
    return t;
}

int main() {
    FILE* file = fopen("input", "r");
    if (!file) {
        printf("file not found\n");
        return 1;
    }
    char *lb = NULL;
    size_t buf_size = 0;

    int t = 0;
    int at = 0;
    while (getline(&lb, &buf_size, file) > 0) {
        int r = atoi(lb);
        t+=req(r);
        at+=req_r(r);
    }

    free(lb);
    fclose(file);
    printf("Total:%d\nAdjusted:%d\n", t, at);
    return 0;
}