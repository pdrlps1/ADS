import java.util.ArrayList;

public class Aluno {
    private String nome;
    private int idade;
    private final ArrayList<Double> notas;

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

    public long[] getNotas() {
        return notas;
    }

    public Aluno (String nome, int idade, double[] notas){
        this.nome = nome;
        this.idade = idade;
        this.notas = new ArrayList<>();
    }

    public void adicionarNota (double nota){
        notas.add(nota);
    }

    public double calcularMedia() {
        if (notas.isEmpty()) return 0;

        double soma = 0;

        for (double nota : notas) {
            soma += nota;
        }
        return soma / notas.size();
    }

    public void exibirInformacoes(){
        System.out.println("Nome: " + nome + "\nIdade: " + idade + "\nNotas: " + notas);
        System.out.printf("Media das notas: %.2f%n", calcularMedia());
        System.out.println("-----------------------------------");
    }
}
