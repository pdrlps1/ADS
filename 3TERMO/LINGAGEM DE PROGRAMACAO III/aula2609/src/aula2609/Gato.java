/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula2609;

/**
 *
 * @author pedro
 */
public class Gato extends Animal {
    
    private String pelagem;

    public Gato(String nome, int idade, String pelagem) {
        super(nome, idade);
        this.pelagem = pelagem;
    }
    
    @Override
    public void emitirSom(){
        System.out.println("Miau!");
    }
    
}
