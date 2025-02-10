package trabalho.loja.conveniencia;

import java.util.UUID;

public class Funcionario {
    private UUID id;
    private String nome;
    private int idade;
    private String setor;
    private String cargo;
    private double salario;
    private String dataAdmissao;

    public Funcionario() {
        this.id = UUID.randomUUID(); // Gera um UUID único automaticamente
    }

    // Construtor com parâmetros
    public Funcionario(String nome, int idade, String setor, String cargo, double salario, String dataAdmissao) {
        this.id = UUID.randomUUID(); // Gera um UUID único automaticamente
        this.nome = nome;
        this.idade = idade;
        this.setor = setor;
        this.cargo = cargo;
        this.salario = salario;
        this.dataAdmissao = dataAdmissao;
    }

    // Getters e Setters
    public UUID getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getDataAdmissao() {
        return dataAdmissao;
    }

    public void setDataAdmissao(String dataAdmissao) {
        this.dataAdmissao = dataAdmissao;
    }

    @Override
    public String toString() {
        return "ID: " + id +
                "\nNome: " + nome +
                "\nIdade: " + idade +
                "\nSetor: " + setor +
                "\nCargo: " + cargo +
                "\nSalário: " + salario +
                "\nData de Admissão: " + dataAdmissao +
                "\n";
    }
}
