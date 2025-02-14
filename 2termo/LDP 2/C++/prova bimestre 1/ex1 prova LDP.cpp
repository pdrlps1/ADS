#include <iostream> 
#include <locale.h> 
#include <stdlib.h> 

using namespace std; 

int main() {
    setlocale(LC_ALL, "Portuguese");

    int proc_att, ram_att, HD_att, proc_min, ram_min, HD_min;

    cout << "Digite seu processador atual (GHz): " << endl;
    cin >> proc_att;

    cout << "Digite sua RAM atual (GB): " << endl;
    cin >> ram_att;

    cout << "Digite seu HD atual (GB): " << endl;
    cin >> HD_att;

    cout << "Digite o processador minimo (GHz): " << endl;
    cin >> proc_min;

    cout << "Digite a RAM minima (GB): " << endl;
    cin >> ram_min;

    cout << "Digite o HD minimo (GB): " << endl;
    cin >> HD_min;

    if (proc_att >= proc_min && ram_att >= ram_min && HD_att >= HD_min)
    {
        cout << "Suas especificacoes atendem o minimo do jogo" << endl;
    } else if (proc_att<proc_min && ram_att >= ram_min && HD_att >= HD_min)
    {
        cout << "Seu processador precisa ser atualizado!" << endl;
    } else if (proc_att >= proc_min && ram_att < ram_min && HD_att >= HD_min)
    {
        cout << "Sua memoria RAM precisa ser atualizada!" << endl;
    } else if (proc_att >= proc_min && ram_att >= ram_min && HD_att < HD_min)
    {
        cout << "Seu HD precisa ser atualizado!" << endl;
    } else if (proc_att < proc_min && ram_att < ram_min && HD_att >= HD_min)
    {
        cout << "Seu processador e sua memoria RAM precisam ser atualizados!" << endl;
    } else if (proc_att < proc_min && ram_att >= ram_min && HD_att < HD_min)
    {
        cout << "Seu processador e seu HD precisam ser atualizados!" << endl;
    } else if (proc_att >= proc_min && ram_att < ram_min && HD_att < HD_min)
    {
        cout << "Sua memoria RAM e seu HD precisam ser atualizados!" << endl;
    }  
    
    system("pause"); 
    return 0;
}