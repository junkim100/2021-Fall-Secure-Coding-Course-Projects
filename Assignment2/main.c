#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <errno.h>
#include "safe-math.h"

int main(void){
    long A, B;
    char input1[128], input2[128];

    //read A and B
    if(fgets(input1, 128, stdin) == NULL) {
        A = 0;
    }
    if(fgets(input2, 128, stdin) == NULL) {
        B = 0;
    }
    
    //convert input1 and input2 to long variables
    A = strtol(input1, NULL, 10);
    B = strtol(input2, NULL, 10);
    
    //variable to check if operation succeeded or not
    psnip_safe_bool test;
    
    //char multiplication
    char res1 = 0;
    test = psnip_safe_char_mul(&res1, (char)A, (char)B);
    if (test == 1 && (CHAR_MIN < A && A < CHAR_MAX) && (CHAR_MIN < B && B < CHAR_MAX)) {
        printf("%ld and %ld can be successfully multiplied as chars, producing product %d.\n", A, B, res1);
        return 0;
    }
    
    //int multiplication
    int res2;
    test = psnip_safe_int_mul(&res2, (int)A, (int)B);
    if (test == 1 && (INT_MIN< A && A < INT_MAX) && (INT_MIN < B && B < INT_MAX)) {
        printf("%ld and %ld can be successfully multiplied as ints, producing product %d.\n", A, B, res2);
        return 0;
    }
    
    //long multiplication
    long res3;
    test = psnip_safe_long_mul(&res3, A, B);
    if (test == 1 && (LONG_MIN< A && A < LONG_MAX) && (LONG_MIN < B && B < LONG_MAX)) {
        printf("%ld and %ld can be successfully multiplied as longs, producing product %ld.\n", A, B, res3);
        return 0;
    }
    
    //when input1 or input2 is out of long's bounds
    printf("%ld and %ld cannot be multiplied as longs.\n", A, B);

    
    return 0;
}
