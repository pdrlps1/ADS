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
    public int encontrarMaiorValor(int[] nums){

        int maior = 0;

        for(int num : nums){
            if (num > maior) {
                maior = num;
            }
        }
        return maior;
    }
    public int encontrarMenorValor(int[] nums){
            int menor = nums[0];
            
            for(int num : nums){
                if (num < menor){
                menor = num;
            } 
        }   
        return menor;
    }
    public int calcularMedia(int[] nums){
            int soma = 0;
            int contador = 0;
            
            
            
            for (int num : nums){
                soma = soma + num;
                contador = contador + 1;
        }
        int media = (soma / contador);
        return media;
    }
}
