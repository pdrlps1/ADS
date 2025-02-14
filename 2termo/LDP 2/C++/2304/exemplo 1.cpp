#include <iostream> 
#include <locale.h> 
#include <stdlib.h> 
#include <Windows.h> // biblioteca do sleep
#include <iomanip>

using namespace std; 

void conversor();

int 
main() {
    
    conversor();
    
    system("pause"); 
    return 0;
}
void conversor(){
    double vlr_cm = 0.0, vlr_pol = 0.0, i=0;

    system ("cls");
    system ("color 4C");

    cout << "TABELA DE CONVERSAO CM/POL" << endl;
    cout << "--------------------------" << endl;
    do
    {
        cout << vlr_cm <<"     " << vlr_pol << endl;
        vlr_cm = vlr_cm + 0.5;
        vlr_pol = vlr_cm * 2.54;
        i++;

    } while (i<=10);
}