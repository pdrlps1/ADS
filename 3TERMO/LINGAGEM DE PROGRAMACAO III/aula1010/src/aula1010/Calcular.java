/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula1010;

/**
 *
 * @author pedro
 */
public class Calcular {

    public double getTotal() {
        return total;
    }
    
    private double total;
    
    public double somar (double n1, double n2){
        this.total = n1 + n2;
        return total;
    };
    
    public double somar (double n1, double n2, double n3){
        this.total = n1 + n2 + n3;
        return total;
    };
    
    public double somar (double n1, double n2, double n3, double n4){
        this.total = n1 + n2 + n3 + n4;
        return total;
    };

    public double somar (double n1, double n2, double n3, double n4, double n5){
        this.total = n1 + n2 + n3 + n4 + n5;
        return total;
    };
    
    Calcular(double n1, double n2){
        this.total = n1 + n2;
    };
    
    Calcular(double n1, double n2, double n3){
        this.total = n1 + n2 + n3;
    };
    Calcular(double n1, double n2, double n3, double n4){
        this.total = n1 + n2 + n3 + n4;
    };
    Calcular(double n1, double n2, double n3, double n4, double n5){
        this.total = n1 + n2 + n3 + n4 + n5;
    };
    
}
