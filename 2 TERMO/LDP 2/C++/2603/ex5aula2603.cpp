#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int vel_atual, vel_pista, vel_radar;

    cout << "Digite a velocidade atual:"<<endl;
    cin >> vel_atual;
    cout << "Digite a velocidade da pista:"<<endl;
    cin >> vel_pista;

    vel_radar = vel_pista*1.1;

    if (vel_atual > vel_radar)
        cout << "Voce foi multado" << endl;
    else
        cout << "Voce se salvou" << endl;  

    system("pause"); // não fecha o executável (.exe)
    return 0;
}