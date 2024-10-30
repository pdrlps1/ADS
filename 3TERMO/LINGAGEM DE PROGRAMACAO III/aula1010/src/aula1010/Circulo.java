/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula1010;

/**
 *
 * @author pedro
 */
public class Circulo extends FormaGeometrica {
    
    public double pi = 3.14;
    private double r;
    private double area;
    
    public Circulo (double r){
        this.r = r;
    }
    
    @Override
    public void calcularArea(){
        this.area = pi * (r*r);
        System.out.println("A area do circulo e: " + area);
    }
    
}
