#include <iostream> 
#include <locale.h> 
#include <stdlib.h> 
#include <Windows.h> // biblioteca do sleep

using namespace std; 

void func1(int valor);
void func2(int valor);

int 
main() {
    int x;
    
    x = 100;

    cout << "Valor de X dentro da funcao main: " << x << endl;

    func1(x);
    func2(x);

    cout << "Valor de X dentro da funcao main: " << x << endl;

    system("pause"); 
    return 0;
}
void func1(int valor)
{
    cout << "Valor de X dentro da funcao 1: " << valor << endl;
}
void func2(int valor)
{
    valor = 300;
    cout << "Valor de X dentro da funcao 1: " << valor << endl;
}