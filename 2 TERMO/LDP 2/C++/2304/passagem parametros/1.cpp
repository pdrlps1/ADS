#include <iostream> 
#include <locale.h> 
#include <stdlib.h> 
#include <Windows.h> // biblioteca do sleep

using namespace std; 

void funcmed(int soma);

int 
main() {
    int n1, n2, n3, n4, soma;

    cout << "insira as 4 notas " << endl;
    cin >> n1 >> n2 >> n3 >> n4;

    soma = n1+n2+n3+n4;
    funcmed(soma);

    system("pause"); 
    return 0;
}
void funcmed(int soma)
{
    int media;
    media = soma/4;
    cout << "Media: " << media <<   endl;
}
