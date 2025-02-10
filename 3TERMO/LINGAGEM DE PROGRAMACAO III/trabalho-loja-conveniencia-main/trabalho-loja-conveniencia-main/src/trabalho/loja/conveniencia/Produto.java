/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package trabalho.loja.conveniencia;

public class Produto {
    
    private int prod_id=0;
    private String prod_nome;
    private String prod_cat;
    private double custo_prod;
    private double venda_prod;
    
    public Produto(String nome, String categoria, double custo, double precoVenda) {
        this.prod_nome = nome;
        this.prod_cat = categoria;
        this.custo_prod = custo;
        this.venda_prod = precoVenda;
    }

    public String getProd_nome() {return prod_nome;}
    public void setProd_nome(String prod_nome) {this.prod_nome = prod_nome;}

    public String getProd_cat() {return prod_cat;}
    public void setProd_cat(String prod_cat) {this.prod_cat = prod_cat;}

    public double getCusto_prod() {return custo_prod;}
    public void setCusto_prod(double custo_prod) {this.custo_prod = custo_prod;}

    public double getVenda_prod() {return venda_prod;}
    public void setVenda_prod(double venda_prod) {this.venda_prod = venda_prod;}

    @Override
    public String toString() {
        return "\nNome: " + prod_nome +
                "\nCategoria: " + prod_cat +
                "\nPreço de custo: " + custo_prod +
                "\nPreço de venda: " + venda_prod +
                "\n";
    }

}
