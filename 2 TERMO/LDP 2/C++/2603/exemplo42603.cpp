#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int num;

    cout << "Digite um valor: " << endl;
    cin >> num;

    if (num>=0)
        cout << "numero positivo" << endl;
    else
        cout << "numero negativo" << endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}