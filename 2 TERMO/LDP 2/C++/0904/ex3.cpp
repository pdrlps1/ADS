#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

//repetição bem definida

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int n1, n2;

    cout << "Insira o numero: " << endl;
    cin >> n1;

    for (n2=0;n2<=10;n2++)
    {
        cout << n1 << "x" << n2 << "=" << n1*n2 << endl;
    }

    system("pause"); // não fecha o executável (.exe)
    return 0;
}