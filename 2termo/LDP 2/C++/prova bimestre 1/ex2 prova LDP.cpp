#include <iostream> 
#include <locale.h> 
#include <stdlib.h> 

using namespace std; 

int main() {
    setlocale(LC_ALL, "Portuguese");

    int n, i=0, soma_down=0, soma_up=0, med_down, med_up, vlr_down, vlr_up;

    cout << "Insira quantas medicoes deseja realizar: " << endl;
    cin >> n;

    do
    {
        cout << "Insira velocidade de download: " << endl;
        cin >> vlr_down;
        soma_down = soma_down + vlr_down;

        cout << "Insira velocidade de upload: " << endl;
        cin >> vlr_up;
        soma_up = soma_up + vlr_up;

        i++;

        cout << "Velocidades registradas!" << endl;

    } while (i < n);

        med_down = soma_down/n;
        med_up = soma_up/n;

        cout << "Sua media de download: " << med_down << endl;
        cout << "Sua media de upload: " << med_up << endl;    

    system("pause"); 
    return 0;
}