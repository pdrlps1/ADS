/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula1909;

/**
 *
 * @author pedro
 */
public class Carro {
    String marca;
    String modelo;
    int ano;
    
    public Carro(){
        this.marca = "Desconhecido";
        this.modelo = "Desconhecido";
        this.ano = 0;
    }
    
    public Carro(String nMarca, String nModelo, int nAno){
        this.marca = nMarca;
        this.modelo = nModelo;
        this.ano = nAno;
    }
    
    public Carro(String nMarca, String nModelo){
        this.marca = nMarca;
        this.modelo = nModelo;
        this.ano = 0;
    }
}
