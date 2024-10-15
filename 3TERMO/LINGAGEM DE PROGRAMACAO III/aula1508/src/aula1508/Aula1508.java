/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package aula1508;

/**
 *
 * @author pedro
 */
public class Aula1508 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        for (int i = 10; i > 0; i--) {
            System.out.println("Imprimindo o " + i);
        }
        
        int teste = 0;
        while (teste < 10){
            System.out.println("Teste: "+ teste);
            teste = teste + 1;
        }
        
        int teste2 = 0;
        do {
            System.out.println("Teste 2: " + teste2);
            teste2 = teste2 + 1;
        } while (teste2 < 10);
    }
    
}
