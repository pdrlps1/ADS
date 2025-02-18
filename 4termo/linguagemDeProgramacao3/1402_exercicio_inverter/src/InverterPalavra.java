public class InverterPalavra{
    public String inverter(String palavra){
        String invertida = "";

        for (int i = palavra.length()-1; i >= 0; i--){
            invertida += palavra.charAt(i);
        } return invertida;
    };
};
