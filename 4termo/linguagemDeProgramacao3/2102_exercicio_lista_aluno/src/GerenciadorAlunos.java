import java.util.ArrayList;
import java.util.Iterator;

public class GerenciadorAlunos {
    private final ArrayList<Aluno> listaAlunos;

    public GerenciadorAlunos() {
        this.listaAlunos = new ArrayList<>();
    }

    public void adicionarAluno(String nome, int idade){
        Aluno novoAluno = new Aluno(nome, idade);
        listaAlunos.add(novoAluno);
    }

    public void adicionarNotaAluno(String nome, double nota){
        for (Aluno aluno : listaAlunos){
            if (aluno.getNome().equalsIgnoreCase(nome)){
                aluno.adicionarNota(nota);
                return;
            }
        }
        System.out.println("Aluno não encontrado: " + nome);
    }

    public void removerAluno (String nome){
        Iterator<Aluno> iterator = listaAlunos.iterator();

        while (iterator.hasNext()){
            Aluno aluno = iterator.next();

            if (aluno.getNome().equalsIgnoreCase(nome)){
                iterator.remove();
                System.out.println("Aluno " + nome + " Removido");
                return;
            }
        }
    }

    public void exibirListaAlunos(){
        if(listaAlunos.isEmpty()){
            System.out.println("Nenhum aluno encontrado!");
            return;
        }

        System.out.println("Listagem de Alunos: ");
        for(Aluno aluno : listaAlunos){
            aluno.exibirInformacoes();
        }
    }
}
