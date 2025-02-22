public class Main {
    public static void main(String[] args) {
        GerenciadorAlunos gerenciadorAlunos = new GerenciadorAlunos();

        gerenciadorAlunos.adicionarAluno("Fulano", 18);
        gerenciadorAlunos.adicionarNotaAluno("Fulano", 8);
        gerenciadorAlunos.adicionarNotaAluno("Fulano", 10);

        gerenciadorAlunos.adicionarAluno("Ciclano", 19);
        gerenciadorAlunos.adicionarNotaAluno("Ciclano", 10);
        gerenciadorAlunos.adicionarNotaAluno("Ciclano", 6);

        gerenciadorAlunos.exibirListaAlunos();
    }
}
