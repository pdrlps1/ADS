/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aula_0509;

/**
 *
 * @author pedro
 */
public class Circulo {
    private double raio;

    public double pi=3.14159265359;

    

    public double getRaio(){return this.raio;}

    public void setRaio(double raio){this.raio=raio;}

    

    public double calcularArea(){return pi*(this.raio*this.raio);}

    public double calcularPerimetro(){return 2*pi*this.raio;}
}
