package ImportarDadosTXT;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class ImportacaoAluno {
    public static void main(String[] args) {
        String arquivoEntrada = "notasalunos.txt";
        String arquivoSaida = "notas_processadas.txt";

        try {
            List<String> linhas = carregarArquivo(arquivoEntrada);
            List<String> resultado = processarDados(linhas);
            gerarNovoArquivo(arquivoSaida, resultado);

            System.out.println("Arquivo gerado com sucesso!");
        } catch (Exception e) {
            System.out.println("Erro ao gerar arquivo " + e.getMessage());
        }

    }

    public static List<String> carregarArquivo(String caminho) {
        List<String> linhas = new ArrayList<>();

        try(BufferedReader reader = new BufferedReader(
                new FileReader(caminho))){
            String linha;

            while((linha = reader.readLine()) != null){
                linhas.add(linha);
            }
        } catch (IOException e){
            e.printStackTrace();
        }
        return linhas;
    }

    public static List<String> processarDados(List<String> linhas){

        List<String> resultado = new ArrayList<String>();

        for(String linha : linhas){
            String[] dados = linha.split(";");

            String nome = dados[0].trim();
            int idade = Integer.parseInt(dados[1].trim());
            float nota1 = Integer.parseInt(dados[2].trim());
            float nota2 = Integer.parseInt(dados[3].trim());
            float nota3 = Integer.parseInt(dados[4].trim());

            float media = (nota1 + nota2 + nota3) / 3;

            String resultadoAluno = media >= 7 ? "Aprovado" : "Reprovado";

            String linhaResultado = linha + ";"
                    + String.format("%.2f", media) + ";" + resultadoAluno;

            resultado.add(linhaResultado);
        }

        return resultado;
    }

    public static void gerarNovoArquivo(String caminho, List<String> linhas){
        try (BufferedWriter writer = new BufferedWriter(new
                FileWriter(caminho))){
            for (String linha : linhas){
                writer.write(linha);
                writer.newLine();
            }
        } catch (IOException e){
            e.printStackTrace();
        }
    }
}
