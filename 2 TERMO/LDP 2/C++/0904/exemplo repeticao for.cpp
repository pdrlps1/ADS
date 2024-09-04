#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

//repetição bem definida

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int i;

    for (i=0;i<=10;i++)
    {
        cout << i << endl;
    }
    

    system("pause"); // não fecha o executável (.exe)
    return 0;
}