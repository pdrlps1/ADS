#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

    int id_user, id_pass;
    int user, pass;

    user = 302010;
    pass = 102030;

    cout << "----------------"<<endl;
    cout << "-BANCO DE DADOS-"<<endl;
    cout << "----------------"<<endl;



    cout << "Digite usuario: " << endl;
    cin >> id_user;
    cout << "Digite senha: " << endl;
    cin >> id_pass;

    if (id_user == user)
        if (id_pass == pass)
            cout << "Seja bem vindo, usuario!"<<endl;
        else
        cout << "Senha incorreta!" << endl;
    else
    cout << "Usuario incorreto!" << endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}