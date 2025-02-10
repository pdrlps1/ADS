package trabalho.loja.conveniencia;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.UUID;

public class InteragirComUsuario {

    private FuncionarioManager funcionarioManager;
    private ProdutoManager produtoManager;
    private Scanner scanner;

    // Construtor
    public InteragirComUsuario() {
        this.funcionarioManager = new FuncionarioManager();
        this.produtoManager = new ProdutoManager();
        this.scanner = new Scanner(System.in);
    }

    // Método principal de interação
    public void iniciar() {
        int opcao;

        do {
            System.out.println("\n--- Sistema de Gerenciamento ---");
            System.out.println("1. CRUD de Funcionários");
            System.out.println("2. CRUD de Produtos");
            System.out.println("3. Simular Compra");
            System.out.println("0. Sair");
            System.out.print("Escolha uma opção: ");
            opcao = scanner.nextInt();
            scanner.nextLine(); // Limpa o buffer do teclado

            switch (opcao) {
                case 1:
                    menuFuncionario();
                    break;

                case 2:
                    menuProduto();
                    break;

                case 3:
                    simularCompra();
                    break;

                case 0:
                    System.out.println("Saindo do sistema...");
                    break;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
                    break;
            }
        } while (opcao != 0);

        scanner.close();
    }

    // Menu de operações para Funcionários
    private void menuFuncionario() {
        int opcao;

        do {
            System.out.println("\n--- CRUD de Funcionários ---");
            System.out.println("1. Adicionar Funcionário");
            System.out.println("2. Consultar Funcionário");
            System.out.println("3. Atualizar Funcionário");
            System.out.println("4. Remover Funcionário");
            System.out.println("5. Listar Funcionários");
            System.out.println("0. Voltar ao Menu Principal");
            System.out.print("Escolha uma opção: ");
            opcao = scanner.nextInt();
            scanner.nextLine(); // Limpa o buffer

            switch (opcao) {
                case 1:
                    adicionarFuncionario();
                    break;

                case 2:
                    consultarFuncionario();
                    break;

                case 3:
                    atualizarFuncionario();
                    break;

                case 4:
                    removerFuncionario();
                    break;

                case 5:
                    listarFuncionarios();
                    break;

                case 0:
                    System.out.println("Voltando ao menu principal...");
                    break;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
                    break;
            }
        } while (opcao != 0);
    }

    // Menu de operações para Produtos
    private void menuProduto() {
        int opcao;

        do {
            System.out.println("\n--- CRUD de Produtos ---");
            System.out.println("1. Adicionar Produto");
            System.out.println("2. Consultar Produtos");
            System.out.println("3. Atualizar Produto");
            System.out.println("4. Remover Produto");
            System.out.println("5. Listar Produtos");
            System.out.println("0. Voltar ao Menu Principal");
            System.out.print("Escolha uma opção: ");
            opcao = scanner.nextInt();
            scanner.nextLine(); // Limpa o buffer

            switch (opcao) {
                case 1:
                    adicionarProduto();
                    break;

                case 2:
                    consultarProduto();
                    break;

                case 3:
                    atualizarProduto();
                    break;

                case 4:
                    removerProduto();
                    break;

                case 5:
                    listarProdutos();
                    break;

                case 0:
                    System.out.println("Voltando ao menu principal...");
                    break;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
                    break;
            }
        } while (opcao != 0);
    }

    // Método para simular a compra
    private void simularCompra() {
        int opcaoCompra;

        do {
            System.out.println("\n--- Simular Compra ---");

            // Listar os produtos disponíveis
            List<Produto> produtos = produtoManager.listarProdutos();

            if (produtos.isEmpty()) {
                System.out.println("Não há produtos disponíveis para compra.");
                return;
            }

            System.out.println("Produtos disponíveis:");
            for (int i = 0; i < produtos.size(); i++) {
                Produto produto = produtos.get(i);
                System.out.println((i + 1) + ". " + produto.getProd_nome() + " - R$ " + produto.getVenda_prod());
            }

            // Lista para armazenar os produtos e quantidades escolhidos
            List<Produto> produtosSelecionados = new ArrayList<>();
            List<Integer> quantidadesSelecionadas = new ArrayList<>();

            do {
                // Solicita que o usuário escolha um produto
                System.out.print("Escolha o número do produto que deseja comprar (0 para finalizar): ");
                int opcaoProduto = scanner.nextInt();
                scanner.nextLine(); // Limpa o buffer

                if (opcaoProduto == 0) {
                    break; // Sai do loop de seleção de produtos
                }

                if (opcaoProduto < 1 || opcaoProduto > produtos.size()) {
                    System.out.println("Produto inválido.");
                    continue;
                }

                Produto produtoEscolhido = produtos.get(opcaoProduto - 1);
                System.out.print("Quantas unidades você deseja comprar de " + produtoEscolhido.getProd_nome() + "? ");
                int quantidade = scanner.nextInt();
                scanner.nextLine(); // Limpa o buffer

                produtosSelecionados.add(produtoEscolhido);
                quantidadesSelecionadas.add(quantidade);

                // Pergunta ao usuário se deseja continuar escolhendo mais produtos
                System.out.println("Deseja escolher outro produto?");
                System.out.println("1. Sim");
                System.out.println("0. Não");
                System.out.print("Escolha uma opção: ");
                int continuar = scanner.nextInt();
                scanner.nextLine(); // Limpa o buffer

                if (continuar == 0) {
                    break; // Sai do loop de seleção de produtos
                }

            } while (true);

            // Calcula o total da compra
            double total = 0;
            System.out.println("\nResumo da Compra:");
            for (int i = 0; i < produtosSelecionados.size(); i++) {
                Produto produto = produtosSelecionados.get(i);
                int quantidade = quantidadesSelecionadas.get(i);
                double subtotal = produto.getVenda_prod() * quantidade;
                total += subtotal;

                System.out.println("Produto: " + produto.getProd_nome());
                System.out.println("Quantidade: " + quantidade);
                System.out.println("Preço Unitário: R$ " + produto.getVenda_prod());
                System.out.println("Subtotal: R$ " + subtotal);
            }

            System.out.println("Total: R$ " + total);

            // Solicita o valor pago pelo cliente
            System.out.print("Quanto dinheiro você vai pagar? R$ ");
            double dinheiroPago = scanner.nextDouble();
            scanner.nextLine(); // Limpa o buffer

            // Verifica se o valor pago é suficiente
            if (dinheiroPago < total) {
                System.out.println("Dinheiro insuficiente! A compra não pode ser concluída.");
            } else {
                double troco = dinheiroPago - total;
                System.out.println("Troco: R$ " + troco);
                System.out.println("Compra simulada com sucesso!");
            }

            // Pergunta se o usuário quer comprar novamente
            System.out.println("\nDeseja realizar outra compra?");
            System.out.println("1. Sim");
            System.out.println("0. Não (voltar ao menu)");
            System.out.print("Escolha uma opção: ");
            opcaoCompra = scanner.nextInt();
            scanner.nextLine(); // Limpa o buffer

        } while (opcaoCompra != 0); // Sai quando o usuário digitar 0
    }




    // Métodos específicos para Funcionários
    private void adicionarFuncionario() {
        System.out.println("\n--- Adicionar Funcionário ---");
        System.out.print("Nome: ");
        String nome = scanner.nextLine();
        System.out.print("Idade: ");
        int idade = scanner.nextInt();
        scanner.nextLine(); // Limpa o buffer
        System.out.print("Setor: ");
        String setor = scanner.nextLine();
        System.out.print("Cargo: ");
        String cargo = scanner.nextLine();
        System.out.print("Salário: ");
        double salario = scanner.nextDouble();
        scanner.nextLine(); // Limpa o buffer
        System.out.print("Data de Admissão: ");
        String dataAdmissao = scanner.nextLine();

        Funcionario novoFuncionario = new Funcionario(nome, idade, setor, cargo, salario, dataAdmissao);
        funcionarioManager.adicionarFuncionario(novoFuncionario);
    }

    private void consultarFuncionario() {
        System.out.println("\n--- Consultar Funcionário ---");
        System.out.print("Digite o nome do funcionário: ");
        String nomeConsulta = scanner.nextLine();

        List<Funcionario> funcionarios = funcionarioManager.consultarFuncionarioPorNome(nomeConsulta);

        if (funcionarios.isEmpty()) {
            System.out.println("Funcionário não encontrado.");
        } else {
            System.out.println("\nFuncionários encontrados:");
            for (Funcionario funcionario : funcionarios) {
                System.out.println(funcionario);
            }
        }
    }

    private void atualizarFuncionario() {
        System.out.println("\n--- Atualizar Funcionário ---");
        System.out.print("Digite o ID do funcionário: ");
        String idAtualiza = scanner.nextLine();
        UUID idFuncAtualiza = funcionarioManager.converterStringParaUUID(idAtualiza);
        if (idFuncAtualiza != null) {
            System.out.print("Novo Nome: ");
            String novoNome = scanner.nextLine();
            System.out.print("Nova Idade: ");
            int novaIdade = scanner.nextInt();
            scanner.nextLine(); // Limpa o buffer
            System.out.print("Novo Setor: ");
            String novoSetor = scanner.nextLine();
            System.out.print("Novo Cargo: ");
            String novoCargo = scanner.nextLine();
            System.out.print("Novo Salário: ");
            double novoSalario = scanner.nextDouble();
            scanner.nextLine(); // Limpa o buffer
            System.out.print("Nova Data de Admissão: ");
            String novaDataAdmissao = scanner.nextLine();

            Funcionario funcionarioAtualizado = new Funcionario(novoNome, novaIdade, novoSetor, novoCargo, novoSalario, novaDataAdmissao);
            if (funcionarioManager.atualizarFuncionario(idFuncAtualiza, funcionarioAtualizado)) {
                System.out.println("Funcionário atualizado com sucesso!");
            } else {
                System.out.println("Funcionário não encontrado.");
            }
        }
    }

    private void removerFuncionario() {
        System.out.println("\n--- Remover Funcionário ---");
        System.out.print("Digite o ID do funcionário: ");
        String idRemove = scanner.nextLine();
        UUID idFuncRemove = funcionarioManager.converterStringParaUUID(idRemove);
        if (idFuncRemove != null) {
            if (funcionarioManager.removerFuncionario(idFuncRemove)) {
                System.out.println("Funcionário removido com sucesso.");
            } else {
                System.out.println("Funcionário não encontrado.");
            }
        }
    }

    private void listarFuncionarios() {
        System.out.println("\n--- Lista de Funcionários ---");
        List<Funcionario> funcionarios = funcionarioManager.listarFuncionarios();
        if (funcionarios.isEmpty()) {
            System.out.println("Nenhum funcionário cadastrado.");
        } else {
            for (Funcionario func : funcionarios) {
                System.out.println(func);
            }
        }
    }

    // Métodos específicos para Produtos
    private void adicionarProduto() {
        System.out.println("\n--- Adicionar Produto ---");
        // Lógica para adicionar um produto
        System.out.print("Nome: ");
        String nome = scanner.nextLine();
        System.out.print("Categoria: ");
        String categoria = scanner.nextLine();
        System.out.print("Custo: ");
        double custo = scanner.nextDouble();
        System.out.print("Preço de Venda: ");
        double precoVenda = scanner.nextDouble();
        scanner.nextLine(); // Limpa o buffer

        Produto novoProduto = new Produto( nome, categoria, custo, precoVenda);
        produtoManager.adicionarProduto(novoProduto);
        System.out.println("Produto adicionado com sucesso!");
    }

    private void consultarProduto() {
        System.out.println("\n--- Consultar Produto ---");
        System.out.print("Digite o nome do produto: ");
        String nomeConsulta = scanner.nextLine();

        List<Produto> produtos = produtoManager.consultarProdutoPorNome(nomeConsulta);

        if (produtos.isEmpty()) {
            System.out.println("Produto não encontrado.");
        } else {
            System.out.println("\nProdutos encontrados:");
            for (Produto produto : produtos) {
                System.out.println(produto);
            }
        }
    }

    private void atualizarProduto() {
        System.out.println("\n--- Atualizar Produto ---");

        // Solicita o nome do produto a ser atualizado
        System.out.print("Digite o nome do produto a ser atualizado: ");
        String nomeConsulta = scanner.nextLine();

        // Solicita os novos dados do produto
        System.out.print("Digite o novo nome do produto: ");
        String novoNome = scanner.nextLine();

        System.out.print("Digite a nova categoria do produto: ");
        String novaCategoria = scanner.nextLine();

        System.out.print("Digite o novo custo do produto: ");
        double novoCusto = scanner.nextDouble();

        System.out.print("Digite o novo preço de venda do produto: ");
        double novoPrecoVenda = scanner.nextDouble();
        scanner.nextLine(); // Limpa o buffer de entrada

        // Cria um novo objeto Produto com os dados atualizados
        Produto novoProduto = new Produto( novoNome, novaCategoria, novoCusto, novoPrecoVenda);

        // Chama o método para atualizar o produto pelo nome
        boolean sucesso = produtoManager.atualizarProdutoPorNome(nomeConsulta, novoProduto);

        // Exibe o resultado da atualização
        if (sucesso) {
            System.out.println("Produto atualizado com sucesso!");
        } else {
            System.out.println("Produto não encontrado.");
        }
    }

    private void removerProduto() {
        System.out.println("\n--- Remover Produto ---");

        // Solicita o nome do produto a ser removido
        System.out.print("Digite o nome do produto a ser removido: ");
        String nomeProduto = scanner.nextLine();

        // Chama o método para remover o produto pelo nome
        boolean sucesso = produtoManager.removerProdutoPorNome(nomeProduto);

        // Exibe o resultado da remoção
        if (sucesso) {
            System.out.println("Produto removido com sucesso!");
        } else {
            System.out.println("Produto não encontrado.");
        }
    }

    private void listarProdutos() {
        System.out.println("\n--- Lista de Produtos ---");
        List<Produto> produtos = produtoManager.listarProdutos();
        if (produtos.isEmpty()) {
            System.out.println("Nenhum funcionário cadastrado.");
        } else {
            for (Produto produto : produtos) {
                System.out.println(produto);
            }
        }
    }
}
