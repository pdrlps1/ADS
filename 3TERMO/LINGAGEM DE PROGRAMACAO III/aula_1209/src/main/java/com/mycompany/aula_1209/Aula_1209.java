/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.aula_1209;

/**
 *
 * @author pedro
 */
public class Aula_1209 {
    public static void main(String[] args){
//        ArrayManipulator array = new ArrayManipulator();
//        
//        int[] numeros = {12, 5, 8, 21, 9, 13, 19};
//        
//        int resultadoMaior = array.encontrarMaiorValor(numeros);
//        int resultadoMenor = array.encontrarMenorValor(numeros);
//        int media = array.calcularMedia(numeros);
//        
//        System.out.println("O maior valor e: " + resultadoMaior);
//        System.out.println("O menor valor e: " + resultadoMenor);
//        System.out.println("A media e: " + media);

//          ArrayOperations operations = new ArrayOperations();
//          
//          int[] numeros = {7, 2, 9, 4, 6, 18, 20,24,28,1,5};
//          
//          int[] invertido = operations.inverterArray(numeros);
//          
//          for (int nums : invertido) {
//              System.out.println(nums);
//        }
//          int soma = operations.somarValores(numeros);
//          System.out.println("Valor da soma do array: " + soma);
//          
//          boolean contem = operations.verificarContem(numeros);
//          if (contem == true) {
//              System.out.println("Esse numero esta no array!");
//        } else{System.out.println("Esse numero nao esta no array!");}

        double[] numeros = {12.5, 8.3, 7.9, 10.0, 15.7};
        
        CalculadoraMedia calc = new CalculadoraMedia();
        
        double media = calc.calcularMedia(numeros);
        
        System.out.println("A media do array e: " + media);
        
    }
}