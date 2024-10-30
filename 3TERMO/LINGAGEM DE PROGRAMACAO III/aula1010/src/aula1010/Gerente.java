/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula1010;

/**
 *
 * @author pedro
 */
public class Gerente extends Funcionario {
    
    private String senha;

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    @Override
    public void aumentarSalario(double pAumento){
        this.salario = (salario + pAumento) * 1.50;
        System.out.println("O salario ajustado e de: " + this.salario);
    }
}
