#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int temp;

    cout << "Digite a temperatura do etanol:" << endl;
    cin >> temp;

    if (temp >= 0 && temp <= 75)
        cout << "Temperatura baixa" << endl;
    else if (temp > 75 && temp <= 85)
        cout << "Temperatura ideal" << endl;
    else
        cout << "Passou do ponto" << endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}