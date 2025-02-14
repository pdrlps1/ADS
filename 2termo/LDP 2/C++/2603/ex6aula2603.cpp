#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int n1, n2, n3;

    cout << "Insira 3 numeros inteiros: "<<endl;
    cin >> n1 >> n2 >> n3;
    
    if(n1<n2 && n1<n3)
        cout << "numero 1 e menor"<<endl;
    else if (n2<n1 && n2<n3)
        cout << "numero 2 e menor"<<endl;
    else
        cout << "numero 3 e menor" << endl;
    
    system("pause"); // não fecha o executável (.exe)
    return 0;
}