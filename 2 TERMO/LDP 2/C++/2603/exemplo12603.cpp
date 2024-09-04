#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int a, b;

    cout << "Digite um valor A: " << endl;
    cin >> a;
    cout << "Digite um valor B: " << endl;
    cin >> b;

    if (a>b)
        cout << "A eh maior que B" << endl;
    
    if (b>a)
        cout << "B eh maior que A" << endl;

    if (b==a)
        cout << "B e A sao iguais" << endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}