import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        GerenciadorAlunos gerenciadorAlunos = new GerenciadorAlunos();

        while (true){
            System.out.println("\nGerenciador de Alunos");
            System.out.println("1. Adicionar Aluno");
            System.out.println("2. Remover Aluno");
            System.out.println("3. Listar Alunos");
            System.out.println("4. Sair");

            int opcao = scanner.nextInt();
            scanner.nextLine();

            switch (opcao){
                case 1: {
                    System.out.println("Digite o nome do aluno: ");
                    String nome = scanner.nextLine();

                    System.out.println("Digite a idade do aluno: ");
                    int idade = scanner.nextInt();

                    System.out.println("Digite quantas notas deseja inserir: ");
                    int qtdNotas = scanner.nextInt();

                    double[] notas = new double[qtdNotas];

                    for (int i = 0; i < qtdNotas; i++){
                        System.out.println("Insira a nota " + (i+1) + ":");
                        notas[i] = scanner.nextDouble();
                    }

                    gerenciadorAlunos.adicionarAluno(nome, idade, notas);

//                    for (int i = 0; i < qtdNotas; i++) {
//                        gerenciadorAlunos.adicionarNotaAluno(nome, notas[i]);
//                    }

                    break;
                }
                case 2: {
                    System.out.println("Digite o nome do aluno que deseja remover: ");
                    String nome = scanner.nextLine();

                    gerenciadorAlunos.removerAluno(nome);

                    System.out.println("Aluno removido com sucesso!");

                    break;
                }
                case 3: {
                    gerenciadorAlunos.exibirListaAlunos();

                    break;
                }
                case 4: {
                    scanner.close();
                    return;
                }
                default:{
                    throw new IllegalArgumentException("Unexpected Value: " + opcao);
                }
            }
        }

//        gerenciadorAlunos.adicionarAluno("Fulano", 18);
//        gerenciadorAlunos.adicionarNotaAluno("Fulano", 8);
//        gerenciadorAlunos.adicionarNotaAluno("Fulano", 10);
//
//        gerenciadorAlunos.adicionarAluno("Ciclano", 19);
//        gerenciadorAlunos.adicionarNotaAluno("Ciclano", 10);
//        gerenciadorAlunos.adicionarNotaAluno("Ciclano", 6);
//
//        gerenciadorAlunos.adicionarAluno("Beltrano", 15);
//
//        gerenciadorAlunos.exibirListaAlunos();
//
//        gerenciadorAlunos.removerAluno("Beltrano");
    }
}
