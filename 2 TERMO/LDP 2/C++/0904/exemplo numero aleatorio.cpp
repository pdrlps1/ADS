#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

// do while - precisa entrar pelo menos uma vez um código e checar no final

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int numX, num10;

    numX = rand();
    num10 = numX % 10;
    
    cout << "O numero aleatorio:" << numX << endl;
    cout << "O numero aleatorio entre 0 e 10: " << num10 << endl;    

    system("pause"); // não fecha o executável (.exe)
    return 0;
}