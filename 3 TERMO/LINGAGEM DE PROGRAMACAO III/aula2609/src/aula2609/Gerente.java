package aula2609;

public class Gerente extends Funcionario {
    private int senha;

    public Gerente(int senha, String nome) {
        super(nome);
        this.senha = senha;
    }

    public Gerente(int senha, String nome, String endereco) {
        super(nome, endereco);
        this.senha = senha;
    }

    public Gerente(int senha, String nome, String endereco, String email) {
        super(nome, endereco, email);
        this.senha = senha;
    }

    public Gerente(int senha, String nome, String endereco, double salario, String email) {
        super(nome, endereco, salario, email);
        this.senha = senha;
    }
    
    public void imprimirDadosGerente() {
        super.imprimirDados();
        System.out.println("Senha: " + senha);
        System.out.println("========================");
    }
    
    
    
}
