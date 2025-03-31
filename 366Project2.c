// A C inplmentation of 366 Project 2
/* 
I thought it might be useful to see a full C implementation,
that way we might get an idea of all the logic occuring at once,
in case seeing it in full might make it easier to translate this into 
Assembly.
This was based pretty much entirely on the provided psuedocode.
Will most likely delete this before final submission.
-Moiz
*/

#include <stdio.h>
#include <stdbool.h>

int fib(int n) {
    if(n <= 1) return n;
    
    int a = 0;
    int b = 1;
    int temp;
    
    for(int i = 0; i < n - 1; i++) {
        temp = b;
        b = a + b;
        a = temp;
    }
    return b;
}

int division(int x, int y) {
    int quotient = 0;
    
    while(x > y) {
        x = x - y;  //divsion is repeated subtraction
        quotient = quotient + 1; //update # of times subtraction has occured
    }
    return x;
}

bool odd(int m) {
    int remainder = 0;
    
    remainder = division(m,2);
    if(remainder != 0)
        return true;
    else
        return false;
}


int main()
{
    int input;
    int fibNum;
    bool isOdd;
    
    printf("Enter the Fibbonacci number you would like to calculate: ");
    scanf("%d", &input);

    fibNum = fib(input);
    isOdd = odd(fibNum);
    
    printf("Your Fibonacchi number is: %d\n", fibNum);

    if(isOdd)
        printf("Your number is odd!\n");
    else
        printf("Your number is even!\n");
    return 0;
}
