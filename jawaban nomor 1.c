/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>

int main()
{
    float uang=2921690;
    float bunga=2.1;
    float bulan;
    float jumlah;
    
    printf("Jumlah uang yang disimpan pada Bank adalah : 2.921.690\n");
    printf("Pada bulan ke-berapa jumlah uang mau dicek (dengan bunga) : ");
    scanf("%f",&bulan);
    jumlah = uang+(uang*(bunga/100)*bulan);
    printf("Jumlah uang pada bulan ke-%.0f adalah : %.2f",bulan,jumlah);

    return 0;
}
