/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aula_1209;

/**
 *
 * @author pedro
 */
public class CalculadoraMedia {
    public double calcularMedia(double[] array){
        
        double soma = 0;
        int n = array.length;
        
        for (int i = 0; i < n; i++) {
            soma = array[i] + soma;
        }
        double media = (soma/n);
    return media;
    }
}
