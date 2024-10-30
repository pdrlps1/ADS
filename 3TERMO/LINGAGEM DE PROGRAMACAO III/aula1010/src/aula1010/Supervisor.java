/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula1010;

/**
 *
 * @author pedro
 */
public class Supervisor extends Funcionario {
    
    private String turno;

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }
    
    @Override
    public void aumentarSalario(double pAumento){
        this.salario = (salario + pAumento) * 1.30;
        System.out.println("O valor do salario e: " + this.salario);
    }
}
