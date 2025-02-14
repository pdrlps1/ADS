#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int salario_atual, salario_novo;

    cout << "Digite seu salario: "<<endl;
    cin>>salario_atual;

    if (salario_atual <=3500)
        salario_novo = salario_atual*1.1;
    else
        salario_novo = salario_atual*1.05;
    
    cout <<"Seu novo salario: "<<salario_novo<<endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}