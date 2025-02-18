import java.util.Scanner;

public class Main{

    public static void main(String[] args) {

        InverterPalavra inverterPalavra = new InverterPalavra();

        Scanner sc = new Scanner(System.in);

        String palavra = sc.next();
        String resultado = inverterPalavra.inverter(palavra);

        System.out.println("Palavra invertida: " + resultado);
    }
}