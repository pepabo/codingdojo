#include <stdio.h>

int fib(int a, int b);

int main()
{
    int i, a, b, results[10];

    for (i = 0; i <= 10; i++) {
        results[i] = fib(results[i-1], results[i-2]);
        printf("%d\n", results[i]);
    }
    return 0;
}

int fib(int a, int b)
{
    int num;

    num = a + b;
    return num;
}
