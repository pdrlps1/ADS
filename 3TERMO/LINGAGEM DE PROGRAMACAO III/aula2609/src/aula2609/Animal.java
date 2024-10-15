package aula2609;

public class Animal {

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
  
    
    private String nome;
    private int idade;

    public String getSom() {
        return som;
    }

    public void setSom(String som) {
        this.som = som;
    }
    private String som;
    
    public Animal (String nome, int idade){
        this.nome = nome;
        this.idade = idade;
    };
    
    public void emitirSom(){
        System.out.println("som do animal");
    }
}
