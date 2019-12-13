#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int req(int input) {
    return (input/3)-2;
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
    while (getline(&lb, &buf_size, file) > 0) {
        t+=req(atoi(lb));
    }

    free(lb);
    fclose(file);
    printf("%d\n", t);
    return 0;
}