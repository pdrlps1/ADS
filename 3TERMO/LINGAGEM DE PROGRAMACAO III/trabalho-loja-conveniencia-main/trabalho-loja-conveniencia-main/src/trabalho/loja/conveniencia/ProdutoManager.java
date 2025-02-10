/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package trabalho.loja.conveniencia;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pedro
 */
public class ProdutoManager extends Produto {
    private final List<Produto> produtos;

    public ProdutoManager() {
        super( null, null, 0, 0);
        produtos = new ArrayList<>();
    }

    // Create: adicionar produto
    public void adicionarProduto(Produto produto) {
        produtos.add(produto);
    }


    // READ: Consulta um produto pelo nome
    public List<Produto> consultarProdutoPorNome(String nome) {
        List<Produto> produtosEncontrados = new ArrayList<>();

        for (Produto prod : produtos) {
            if (prod.getProd_nome().equalsIgnoreCase(nome)) {
                produtosEncontrados.add(prod);
            }
        }

        return produtosEncontrados;
    }

    // Read: listar produtos
    public List<Produto> listarProdutos() {
        return produtos;
    }

    // Update: Atualiza os dados de um produto pelo nome
    public boolean atualizarProdutoPorNome(String nome, Produto novoProduto) {
        for (Produto produto : produtos) {
            if (produto.getProd_nome().equals(nome)) {
                produto.setProd_nome(novoProduto.getProd_nome());
                produto.setProd_cat(novoProduto.getProd_cat());
                produto.setCusto_prod(novoProduto.getCusto_prod());
                produto.setVenda_prod(novoProduto.getVenda_prod());
                return true;
            }
        }
        return false;
    }

    // Delete: Remove um produto pelo nome
    public boolean removerProdutoPorNome(String nome) {
        return produtos.removeIf(produto -> produto.getProd_nome().equals(nome));
    }

}
