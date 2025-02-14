#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int cod;

    cout << "Digite o codigo:" << endl;
    cin >> cod;

    if (cod == 1)
        cout << "Alimento nao perecivel" << endl;
    else if (cod >= 2 && cod <=4)    
        cout << "Alimento perecivel" << endl;
    else if (cod == 5 || cod ==6 )
        cout << "Vestuario" << endl;
    else if (cod == 7)
        cout << "Higiene pessoal" << endl;
    else if (cod >=8 && cod <= 15)
        cout << "Limpeza e utensilios domesticos" << endl;
    else
        cout << "Invalido" << endl;
    

    system("pause"); // não fecha o executável (.exe)
    return 0;
}