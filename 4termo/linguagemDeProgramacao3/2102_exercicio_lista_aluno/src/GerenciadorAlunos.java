import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.stream.Stream;

public class GerenciadorAlunos {
    private final ArrayList<Aluno> listaAlunos;
    private final String ARQUIVO = "alunos.txt";

    public GerenciadorAlunos() {
        this.listaAlunos = new ArrayList<>();
    }

    public void adicionarAluno(String nome, int idade, double[] notas){
        Aluno novoAluno = new Aluno(nome, idade, notas);
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

    public void gravarAlunoArquivo(Aluno aluno){
        try{
            BufferedWriter bw = new BufferedWriter(new FileWriter(ARQUIVO, true));
            bw.write(aluno.getNome() + ";" + aluno.getIdade() + ";" +
                    Arrays.toString(aluno.getNotas()));
            bw.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void recuperarAlunosArquivo(){
        try(BufferedReader br = new BufferedReader(new FileReader(ARQUIVO))){
            String linha;

            while ((linha = br.readLine()) != null){
                String[] dados = linha.split(";");

                String nome = dados[0];
                int idade = Integer.parseInt(dados[1]);
                String[] notasStr = dados[2].replace("[", "").replace("]", "").split(";");

                double[] notas = Arrays.stream(notasStr).
                        mapToDouble(Double::parseDouble).toArray();

                listaAlunos.add(new Aluno(nome, idade,notas));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
