/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula03;

/**
 *
 * @author pedro
 */
public class Corretora {
    
    public int numero;
    public String agencia;
    public String titular;
    public double saldo;
    
    public void depositar(double valor){
        this.saldo = this.saldo + valor;
        System.out.println("Deposito realizado. Saldo atual: " + this.saldo);
        this.imprimir();
        }
    public void sacar (double valor){
        if (valor > this.saldo) {
            System.out.println("Saldo insuficiente para o saque: " + this.saldo);
        } else{
            this.saldo = this.saldo - valor;
            System.out.println("Saque efetuado. Saldo atual: " + this.saldo);
        }
        this.imprimir();
    }
    public void investir(){
        this.saldo = this.saldo*1.05;
        this.imprimir();
    }
    public void imprimir(){
        System.out.println("-----------------------");
        System.out.println("Numero: " + this.numero);
        System.out.println("Agencia: " + this.agencia);
        System.out.println("Titular: " + this.titular);
        System.out.println("Saldo: " + this.saldo); 
    }
}
