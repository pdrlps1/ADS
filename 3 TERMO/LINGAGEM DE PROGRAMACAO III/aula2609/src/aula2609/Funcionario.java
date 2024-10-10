package aula2609;

public class Funcionario {

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    private String nome;
    private String endereco;
    private double salario;
    private String email;
    
    public Funcionario(String nome){
        this.nome = nome;
    }

    public Funcionario(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
    }

    public Funcionario(String nome, String endereco, String email) {
        this.nome = nome;
        this.endereco = endereco;
        this.email = email;
    }

    public Funcionario(String nome, String endereco, double salario, String email) {
        this.nome = nome;
        this.endereco = endereco;
        this.salario = salario;
        this.email = email;
    }
    
    public void imprimirDados(){
        System.out.println("Nome: " + nome);
        System.out.println("Endereco: " + endereco);
        System.out.println("Salario: " + salario);
        System.out.println("Email: " + email);
        System.out.println("========================");
    }
}
