#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int ano, ano_atual, idade;

    cout << "Insira seu ano de nascimento: "<<endl;
    cin>>ano;
    cout << "Insira o ano atual: "<<endl;
    cin>>ano_atual;

    idade = ano_atual - ano;

    if (idade >=18)
        cout << "Pode dirigir" << endl;
    else
        cout << "No puedes dirigir" << endl;
    
    system("pause"); // não fecha o executável (.exe)
    return 0;
}