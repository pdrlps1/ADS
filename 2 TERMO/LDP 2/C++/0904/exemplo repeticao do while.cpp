#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

// do while - precisa entrar pelo menos uma vez um código e checar no final

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int i=0, tab=10;

    do
    {
       cout << i << "x" << tab << "=" << i*tab << endl;
       i++;
    } while (i<=10);
    

    system("pause"); // não fecha o executável (.exe)
    return 0;
}