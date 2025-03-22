import io.github.cdimascio.dotenv.Dotenv;

import java.sql.*;


public class selectData {
    public void select() {
        Dotenv dotenv = Dotenv.load();

        String url = dotenv.get("DB_URL");
        String user = dotenv.get("DB_USER");
        String pass = dotenv.get("DB_PASS");

        String insert = "SELECT * FROM alunos";

        try (Connection conn = DriverManager.getConnection(url, user, pass)){
            Statement state = conn.createStatement();

            ResultSet result = state.executeQuery(insert);

            while(result.next()){
                int id = result.getInt("id");
                String name = result.getString("nome");
                String ra = result.getString("ra")
                System.out.println("id: " + id);
                System.out.println("nome: " + name);
                System.out.println("ra: " + ra);
            }

        } catch(SQLException e){
            System.out.println("Erro de conexão ao banco: " + e.getMessage());
        }
    }
}
