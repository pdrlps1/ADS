/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aula_1209;

/**
 *
 * @author pedro
 */

import java.util.Scanner;
public class ArrayOperations {

    int[] numsInvert;
    
    public int[] inverterArray(int[] nums){
        int n = nums.length;
        numsInvert = new int[n];
        
        for (int i=0;i < n; i++){
            numsInvert[i] = nums[n-1-i];
        } 
    return numsInvert;
    };
    
    public int somarValores (int[] nums){
        int n = nums.length;
        int soma = 0;
        for (int i = 0; i < n; i++) {
            soma = nums[i] + soma;
        }
        return soma;
    };
    
    public boolean verificarContem (int[] nums){
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Insira um número: ");
        int n = scanner.nextInt();
        
        for (int num : nums){
            if (num == n) {
                return true;
            }
        }return false;
    }
}