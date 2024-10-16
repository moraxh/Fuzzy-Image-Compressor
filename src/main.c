#include <stdio.h>

int main() {
    FILE *fptr;
    fptr = fopen("images/image2.png", "rb");

    if (fptr == NULL) {
        printf("Error opening file");
        return 1;
    }

    fseek(fptr, 0, SEEK_SET);

    char buffer[100];

    size_t bytesRead = fread(buffer, sizeof(char), 100, fptr);

    printf("%zu", bytesRead);

    fclose(fptr);
}