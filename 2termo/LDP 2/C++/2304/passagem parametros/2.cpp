#include <iostream> 
#include <locale.h> 
#include <stdlib.h> 
#include <Windows.h> // biblioteca do sleep

using namespace std; 

void func1(int valor);
void func2(int *valor);

int 
main() {
    int x;

    x = 100;
    cout << "Valor de X em main antes das funcoes: " << x << endl;

    func1(x);
    cout << "Valor de X depois da funcao 1: " << x << endl;

    func2(&x);
    cout << "Valor de X depois da funcao 2: " << x << endl;

    system("pause"); 
    return 0;
}
void func1(int valor)
{
    valor = 200;
    cout << "Valor de X dentro da funcao 1: " << valor << endl;
}
void func2(int *valor)
{
    *valor = 300;
    cout << "Valor de X dentro da funcao 2: " << *valor << endl;
}
