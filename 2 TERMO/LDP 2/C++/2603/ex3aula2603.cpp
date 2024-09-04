#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int nota1, nota2, med;

    cout << "Insira a nota 1: "<<endl;
    cin>> nota1;
    cout << "Insira a nota 2: "<<endl;
    cin>> nota2;
    
    med = (nota1 + nota2)/2;

    cout << "Media: " << med << endl;

    if(med >=5)
        cout << "Aprovado"<<endl;
    else
        cout << "Reprovado"<<endl;
    
    system("pause"); // não fecha o executável (.exe)
    return 0;}
    