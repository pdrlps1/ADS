#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

// repetição incerta

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int i=0, tab=10;

    while (i<=10)
    {
        cout << i << "x" << tab << "=" << i*tab << endl;
        i++;
    }
    

    system("pause"); // não fecha o executável (.exe)
    return 0;
}