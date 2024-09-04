#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int num;

    cout << "Insira um numero: "<<endl;
    cin>> num;

    if (num %2==0)
    cout << "Numero par"<<endl;
    else
    cout << "Numero impar"<<endl;
    
    system("pause"); // não fecha o executável (.exe)
    return 0;
}