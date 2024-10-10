/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula2609;

/**
 *
 * @author pedro
 */
public class Cachorro extends Animal {
    
    private String raca;

    public Cachorro(String nome, int idade, String raca) {
        super(nome, idade);
        this.raca = raca;
    }
    
    @Override
    public void emitirSom(){
        System.out.println("Au Au!");
    }
    
}
