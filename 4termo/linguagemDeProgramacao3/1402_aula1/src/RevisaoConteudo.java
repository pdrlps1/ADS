import java.util.Scanner;

public class RevisaoConteudo {
    public static void main(String[] args){
        int n1;
        int n2;

        n1 = 10;
        n2 = 100;

        int soma = n1 + n2;
        int sub = n2 - n1;
        int mult = n1 * n2;
        int div = n2 / n1;

        System.out.println("Soma: " + soma);
        System.out.println("Subtração: " + sub);
        System.out.println("Multiplicação: " + mult);
        System.out.println("Divisão: " + div);

        Scanner sc = new Scanner(System.in);

        System.out.println("Insira o número 1: ");
        double num1 = sc.nextDouble();
        System.out.println("Insira o número 2: ");
        double num2 = sc.nextDouble();
        sc.close(); // evita vazamento de recursos (fecha o scanner)

        double soma2 = num1 + num2;
        double sub2 = num1 - num2;
        double mult2 = num1 * num2;

        System.out.println("Soma nova: " + String.format("%.2f", soma2));
        System.out.println("Subtração nova: " + String.format("%.2f",sub2));
        System.out.println("Multiplicação nova: " + String.format("%.2f",mult2));
        if (num2 > 0) {
            double div2 = num1 / num2;
            System.out.println("Divisao nova: " + String.format("%.2f", div2));
        } else {
            System.out.println("Segundo número não pode ser zero e nem negativo");
        }

        int i=0;

        for (i = 0; i <= 10; i++){
            System.out.println(i);
        }

        do {
            System.out.println(i);
            i++;
        } while(i <= 10);

        int j = 0;
        while (j <= 10){
            System.out.println(j);
            j++;
        }
    }
}
