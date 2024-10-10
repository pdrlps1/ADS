package aula2609;

public class Supervisor extends Funcionario {
    private String turno;

    public Supervisor(String turno, String nome) {
        super(nome);
        this.turno = turno;
    }

    public Supervisor(String turno, String nome, String endereco) {
        super(nome, endereco);
        this.turno = turno;
    }

    public Supervisor(String turno, String nome, String endereco, String email) {
        super(nome, endereco, email);
        this.turno = turno;
    }

    public Supervisor(String turno, String nome, String endereco, double salario, String email) {
        super(nome, endereco, salario, email);
        this.turno = turno;
    }
    
    public void imprimirDadosSupervisor(){
        super.imprimirDados();
        System.out.println("Turno: " + turno);
        System.out.println("==========================");
    }
}
