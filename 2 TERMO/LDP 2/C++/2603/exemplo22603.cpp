#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int temp;

    cout << "Digite um valor de temperatura: " << endl;
    cin >> temp;

    if (temp>=23)
        cout << "ligue o ar condicionado" << endl;
    
    if (temp<23)
        cout << "desligue o ar condicionado" << endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}