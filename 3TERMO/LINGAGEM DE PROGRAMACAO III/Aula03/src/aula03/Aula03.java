/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package aula03;

/**
 *
 * @author pedro
 */
public class Aula03 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
//        Contato c1 = new Contato();
//        c1.nome = "Fulano 1";
//        c1.telefone = "(12)3243-3232";
//        c1.email = "fulano1@gmail.com";
//        c1.endereco = "Rua 1, Cidade 1";
//        
//        System.out.println(c1.nome);
//        System.out.println(c1.telefone);
//        System.out.println(c1.email);
//        System.out.println(c1.endereco);
//        
//        System.out.println("-----------------");
//        
//        Contato c2 = new Contato();
//        c2.nome = "Fulano 2";
//        c2.telefone = "(13)3243-3232";
//        c2.email = "fulano2@gmail.com";
//        c2.endereco = "Rua 2, Cidade 2";
//        
//        System.out.println(c2.nome);
//        System.out.println(c2.telefone);
//        System.out.println(c2.email);
//        System.out.println(c2.endereco);
//        
//        System.out.println("-----------------");
//        
//        Contato c3 = new Contato();
//        c3.nome = "Fulano 3";
//        c3.telefone = "(14)3243-3232";
//        c3.email = "fulano3@gmail.com";
//        c3.endereco = "Rua 3, Cidade 3";
//        
//        System.out.println(c3.nome);
//        System.out.println(c3.telefone);
//        System.out.println(c3.email);
//        System.out.println(c3.endereco);
//        
//        System.out.println("-----------------");
//        
//        Contato c4 = new Contato();
//        c4.nome = "Fulano 4";
//        c4.telefone = "(15)3243-3232";
//        c4.email = "fulano4@gmail.com";
//        c4.endereco = "Rua 4, Cidade 4";
//        
//        System.out.println(c4.nome);
//        System.out.println(c4.telefone);
//        System.out.println(c4.email);
//        System.out.println(c4.endereco);
//        
//        System.out.println("-----------------");

        Corretora c1 = new Corretora();
        c1.agencia = "123";
        c1.numero = 123;
        c1.saldo = 2500;
        c1.titular = "Fulano 1";
        
        c1.depositar(200);
        c1.sacar(1700);
        c1.investir();
        c1.sacar(1500);
        
        c1.imprimir();
    }
}

   