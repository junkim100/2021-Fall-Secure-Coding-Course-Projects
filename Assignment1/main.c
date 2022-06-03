#include <stdio.h>
#include "bstrlib.h"

//Removes the newline character at the end of the bstring, if one is present.
void rmNewLine(bstring a) {
    if(a->data[a->slen - 1] == '\n') {
        bdelete(a, a->slen - 1, 1);
    }
}

//print s, and print the length of s.
void question1(bstring s) {
    if(s) {  //Check that a string was read
        rmNewLine(s);
        printf("The input string is: %s\n", s->data);
        printf("The length of this string is: %d\n", s->slen);
    }
    else {
        puts("Please provide input in the Input tab.\n");
    }
    bdestroy(s);
}

//append s2 to s1, and print the result.
void question2(bstring s1, bstring s2) {
    rmNewLine(s1);
    rmNewLine(s2);
    
    printf("The concatenation of '%s' and '%s' is: ", s1->data, s2->data);
    
    int concatCheck = bconcat(s1, s2);
    
    if (concatCheck == BSTR_OK)
        printf("%s\n", s1->data);
    else if (concatCheck == BSTR_ERR)
        puts("Operation Unsuccessful\n");
    
    bdestroy(s1);
    bdestroy(s2);
}

//print a message indicating whether s2 is a substring of s1.
void question3(bstring s1, bstring s2) {
    rmNewLine(s1);
    rmNewLine(s2);
    
    int pos = binstr(s1, 0, s2);
    
    if (pos == BSTR_ERR)
        printf("Finally, '%s' is not a substring of '%s'.\n", s2->data, s1->data);
    else
        printf("Finally, '%s' is a substring of '%s'.\n", s2->data, s1->data);
}

int main(void) {
    //read strings
    bstring s = bgets ((bNgetc) fgetc, stdin, '\n');
    bstring s1 = bgets ((bNgetc) fgetc, stdin, '\n');
    bstring s2 = bgets ((bNgetc) fgetc, stdin, '\n');
    bstring s3 = bgets ((bNgetc) fgetc, stdin, '\n');
    bstring s4 = bgets ((bNgetc) fgetc, stdin, '\n');
    
    //call question 1-3
    question1(s);
    question2(s1, s2);
    question3(s3, s4);
}

