package aula1010;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author pedro
 */
public class Retangulo extends FormaGeometrica {
    private int base;
    private int altura;
    private int area;
    
    public Retangulo (int base, int altura){
        this.base = base;
        this.altura = altura;
    }
    
    @Override
    public void calcularArea(){
        this.area = base * altura;
    }
}
