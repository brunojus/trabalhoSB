#include <stdio.h>
#include <inttypes.h>

int triangulo(int n, int c1, int c2);

int main() {
    int i1,i2,i3;
	printf("Entre com valor da hipotenusa: ");
    scanf("%d", &i1);
    printf("Entre com valor do cateto 1: ");
    scanf("%d", &i2);
    printf("Entre com valor do cateto 2: ");
    scanf("%d", &i3);


    if(triangulo(i1, i2, i3))
        printf("É triângulo retângulo\n");
    else
        printf("Não é triângulo retângulo\n");
    return 0;
}

