/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package aula_2908;

/**
 *
 * @author pedro
 */
public class aula_2908 {

    public static void main(String args[]) {
        Conta c1 = new Conta();
        c1.saldo = 1500;
        c1.depositar(800);
        c1.sacar(750);
        
//        boolean retSaque c1.sacar(750);
        //if (retSaque == true) {
        //    System.out.println("Saque concluido. Novo valor: " + c1.saldo);
        //} else{
        //    System.out.println("Saque nao concluido. Saldo insuficiente: " + c1.saldo);
        //}
        
        System.out.println("------------------------------");
        
        Conta c2 = new Conta();
        c2.saldo=200;
        c1.depositar(500);
        c2.sacar(800);
        
//        boolean retSaque2 c2.sacar(800);
//        if (ret2Saque == true) {
//            System.out.println("Saque concluido. Novo valor: " + c2.saldo);
//        } else{
//            System.out.println("Saque nao concluido. Saldo insuficiente: " + c2.saldo);
//        }
    }
}
