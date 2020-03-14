/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>

int main()
{
    int rows, i, j, k;

    printf("Masukan panjang baris : ");
    scanf("%d", &rows);
   

    k = 1;

    for(i=1; i<=rows; i++)
    {
        for(j=1; j<=rows; j++)
        {
            if(k == 1)
            {
                printf("= ");
            }
            else
            {
                printf("* ");
            }

            
            k *= -1;
        }

        

        printf("\n");
    }

    return 0;
}
