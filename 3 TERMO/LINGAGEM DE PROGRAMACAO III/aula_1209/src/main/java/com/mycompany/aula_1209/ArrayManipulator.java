/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aula_1209;

/**
 *
 * @author pedro
 */

public class ArrayManipulator {
        public void encontrarMenorValor(int[] numeros){
            
        int maior = numeros[0];
        
        for(int numero : numeros){
            if (numero > maior) {
                maior = numero;
            }
        }
    }
}
