/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula1909;

/**
 *
 * @author pedro
 */
public class Estudante {
    
    String nome;
    String curso;
    int matricula = 0;
    
    public Estudante(String nNome, String nCurso, int nMatricula){
        this.nome = nNome;
        this.curso = nCurso;
        this.matricula = nMatricula;
    }
    
    public void exibirInformacoes(){
        System.out.println(this.nome);
        System.out.println(this.curso);
        System.out.println(this.matricula);
        System.out.println("==================");
    }
    
}
