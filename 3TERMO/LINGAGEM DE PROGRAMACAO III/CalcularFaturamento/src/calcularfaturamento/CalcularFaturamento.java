/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package calcularfaturamento;
import java.util.Scanner;
import javax.swing.JOptionPane;
/**
 *
 * @author pedro
 */
public class CalcularFaturamento {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        int faturamentoJaneiro = 1500;
//        int faturamentoFevereiro = 4500;
//        int faturamentoMarco = 9800;
//        int faturamentoTrimestre;
//        
//        faturamentoTrimestre = faturamentoJaneiro + faturamentoFevereiro + faturamentoMarco;
//        System.out.println("Faturamento do trimestre: " + faturamentoTrimestre);
          
//          Scanner scanner = new Scanner (System.in);
//          System.out.print("Digite um numero: ");
//          int n1 = scanner.nextInt(); 
//          if (n1 % 2 == 0) {
//              System.out.println("Esse numero e par");
//        } else  System.out.println("Esse numero e impar");
//    }     
//
//
//          String entrada1 = JOptionPane.showInputDialog("Escolha a operacao\n1 - adicao\n2 - subtracao\n3 - multiplicacao\n4 - divisao");
//          int operacao = Integer.valueOf(entrada1);
//          String entrada2 = JOptionPane.showInputDialog("Escolha o numero 1: ");
//          int n1 = Integer.valueOf(entrada2);
//          String entrada3 = JOptionPane.showInputDialog("Escolha o numero 2: ");
//          int n2 = Integer.valueOf(entrada3);
//          int result;
//          
//          switch (operacao){
//              case 1:
//                  result = n1 + n2;
//                  System.out.println("Resultado: " + result);
//                  break;
//              case 2:
//                  result = n1 - n2;
//                  System.out.println("Resultado: " + result);
//                  break;
//              case 3:
//                  result = n1 * n2;
//                  System.out.println("Resultado: " + result);
//                  break;
//              case 4:
//                  result = n1 / n2;
//                  System.out.println("Resultado: " + result);
//                  break;
//              default:
//                  System.out.println("Erro");
//          }
//            for (int i = 1; i <= 10; i++) {
//                System.out.println("Teste: " + i);
//        }
//    }
//            int i = 0;
//            while(i <= 20){
//                if(i % 2 == 0){
//                    System.out.println("Teste: " + i);
//                    i = i + 1;}
//                else{
//                    i = i + 1;
//                }
//            }
//    }
//}
//            String entrada1 = JOptionPane.showInputDialog("Insira o numero 1: ");
//            int n1 = Integer.valueOf(entrada1);
//            String entrada2 = JOptionPane.showInputDialog("Insira o numero 2: ");
//            int n2 = Integer.valueOf(entrada2);
//            String entrada3 = JOptionPane.showInputDialog("Insira o numero 3: ");
//            int n3 = Integer.valueOf(entrada3);
//            
//            if (n1 > n2 & n1 > n3) {
//                JOptionPane.showMessageDialog(null, "O numero 1 (" + n1 + ") e o maior");
//        }   else if (n2 > n1 & n2 > n3) {
//                JOptionPane.showMessageDialog(null, "O numero 2 (" + n2 + ") e o maior");
//        }   else if (n3 > n1 & n3 > n2) {
//                JOptionPane.showMessageDialog(null, "O numero 3 (" + n3 + ") e o maior");
//        }   else {
//            JOptionPane.showMessageDialog(null, "Erro");                    
//        }
        

//        String entrada1 = JOptionPane.showInputDialog("Insira o numero que deseja realizar a tabuada: ");
//        int n = Integer.valueOf(entrada1);
//        int mult = 0;
//        int result;
//        
//        do {
//            result = n * mult;
//            System.out.println(n + "*" + mult + "=" + result);
//            mult = mult + 1;
//        } while (mult <=10);
//        
//        String entrada = JOptionPane.showInputDialog("Insira uma letra: ");
//        if (entrada.equals("a") ) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("A")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("e")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("E")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("i")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("I")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("o")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("O")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("u")) {
//            System.out.println("Uma vogal!");
//        } else if (entrada.equals("U")) {
//            System.out.println("Uma vogal!");
//        } else{
//            System.out.println("Uma consoante!");
//        }

//        for (int i = 10; i >= 0; i--) {
//            System.out.println(i);
//        }

//        String entrada1 = JOptionPane.showInputDialog("Insira o valor da gasolina: ");
//        float valor_gas = Float.valueOf(entrada1);
//        String entrada2 = JOptionPane.showInputDialog("Insira o valor do álcool: ");
//        float valor_al = Float.valueOf(entrada2);
//        
//        float vantagem = valor_al/valor_gas;
//        
//        if (vantagem <=0.7) {
//            System.out.println("Esta vantajoso abastecer com alcool");
//        } else{
//            System.out.println("Esta vantajoso abastecer com gasolina");
//        }

        String entrada1 = JOptionPane.showInputDialog("Insira sua altura: ");
        Double alt = Double.valueOf(entrada1);
        String entrada2 = JOptionPane.showInputDialog("Insira seu peso: ");
        Double peso = Double.valueOf(entrada2);
        
        Double IMC = peso / (alt*alt);
        
        System.out.println("Seu valor de IMC: " + IMC);
        
    }
}