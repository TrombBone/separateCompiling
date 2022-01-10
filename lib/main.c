#include <stdio.h>
#include "sort.h"

int main() {
    int k = 4;
    int array[] = {15, 6, 9, 1, 5}; /* 1  5  6  9  15 */
    size_t size = sizeof(array) / sizeof(int);
    for (int i = 0; i < size; i++) {
        printf("%u ", array[i]);
    }
    printf("\n");
    sort(array, size, k);
    for (int i = 0; i < size; i++) {
        printf("%u ", array[i]);
    }
    printf("\n%u", sort(array, size, k));
    return 0;
}
