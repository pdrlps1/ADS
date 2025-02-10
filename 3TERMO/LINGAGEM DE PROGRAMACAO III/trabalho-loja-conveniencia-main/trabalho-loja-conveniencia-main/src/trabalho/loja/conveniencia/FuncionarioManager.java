package trabalho.loja.conveniencia;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class FuncionarioManager {
    private List<Funcionario> funcionarios;

    // Construtor
    public FuncionarioManager() {
        this.funcionarios = new ArrayList<>();
    }

    // CREATE: Adiciona um novo funcionário
    public void adicionarFuncionario(Funcionario funcionario) {
        funcionarios.add(funcionario);
        System.out.println("Funcionário adicionado com sucesso!\n");
    }

    // READ: Consulta um funcionário pelo nome
    public List<Funcionario> consultarFuncionarioPorNome(String nome) {
        List<Funcionario> funcionariosEncontrados = new ArrayList<>();

        for (Funcionario func : funcionarios) {
            if (func.getNome().equalsIgnoreCase(nome)) {
                funcionariosEncontrados.add(func);
            }
        }

        return funcionariosEncontrados;
    }

    // UPDATE: Atualiza os dados de um funcionário pelo UUID
    public boolean atualizarFuncionario(UUID id, Funcionario novoFuncionario) {
        for (Funcionario func : funcionarios) {
            if (func.getId().equals(id)) {
                func.setNome(novoFuncionario.getNome());
                func.setIdade(novoFuncionario.getIdade());
                func.setSetor(novoFuncionario.getSetor());
                func.setCargo(novoFuncionario.getCargo());
                func.setSalario(novoFuncionario.getSalario());
                func.setDataAdmissao(novoFuncionario.getDataAdmissao());
                return true;
            }
        }
        return false;
    }

    // DELETE: Remove um funcionário pelo UUID
    public boolean removerFuncionario(UUID id) {
        return funcionarios.removeIf(func -> func.getId().equals(id));
    }

    // Listar todos os funcionários
    public List<Funcionario> listarFuncionarios() {
        return funcionarios;
    }

    // Método para gerar um UUID a partir de uma String (usado para capturar ID do usuário)
    public UUID converterStringParaUUID(String strId) {
        try {
            return UUID.fromString(strId);
        } catch (IllegalArgumentException e) {
            System.out.println("ID inválido.");
            return null;
        }
    }
}
