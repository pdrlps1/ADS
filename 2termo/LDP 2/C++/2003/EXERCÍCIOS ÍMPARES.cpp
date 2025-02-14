#include <iostream> // usar entradas e saídas
#include <locale.h> // usar setlocale
#include <stdlib.h> // usar system

using namespace std; // usar entradas e saídas e não repetir std::

int main() {
    setlocale(LC_ALL, "Portuguese"); // utilizar acentos em Português

   int L, A, area;
   float tinta;
   cout << "Altura: " << endl;
   cin >> A;
   cout << "Largura: " << endl;
   cin >> L;

   area = A * L;
   tinta = (0.1*area)/2;

   cout << "Area de parede (m quadrados): " << area << endl;
   cout << "Quantidade de tinta (L): " << tinta << endl;

    system("pause"); // não fecha o executável (.exe)
    return 0;
}