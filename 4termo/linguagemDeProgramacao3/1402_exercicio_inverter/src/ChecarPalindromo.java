public class ChecarPalindromo {
    public void checarPalindromo(String palavra){
        String palavraInvertida = "";

        for (int i = palavra.length()-1; i >= 0; i--){
            palavraInvertida += palavra.charAt(i);
        };

        if (palavra.equals(palavraInvertida)){
            System.out.println("A palavra é um palíndromo");
        } else {
            System.out.println("A palavra não é um palíndromo");
        };
    }
}
