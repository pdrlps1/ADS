#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int idade;

    cout << "Digite a idade:" << endl;
    cin >> idade;

    if (idade > 0 && idade <= 12)
        cout << "crianca" << endl;
    else if (idade > 12 && idade <= 18)    
        cout << "adolescente" << endl;
    else if (idade > 18 && idade <= 59)
        cout << "adulto" << endl;
    else
        cout << "idoso" << endl;  

    system("pause"); // não fecha o executável (.exe)
    return 0;
}