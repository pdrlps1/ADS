import com.mysql.cj.xdevapi.PreparableStatement;
import io.github.cdimascio.dotenv.Dotenv;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class insertData {
    public void insert(){
        Dotenv dotenv = Dotenv.load();

        String url = dotenv.get("DB_URL");
        String user = dotenv.get("DB_USER");
        String pass = dotenv.get("DB_PASS");

        String insert = "INSERT INTO alunos(nome, dtNascimento, ra, endereco, telefone, email)" +
                "values(?, ?, ?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(url, user, pass)) {

            PreparedStatement state = conn.prepareStatement(insert);
            state.setString(1, "Fulano");
            state.setDate(2, java.sql.Date.valueOf("1990-03-19"));
            state.setString(3, "1234");
            state.setString(4, "Rua dos Bobos, 0");
            state.setString(5, "11987654321");
            state.setString(6, "fulano@teste.com");

            int resultado = state.executeUpdate();

            System.out.println("Aluno cadastrado!: " + resultado);

        } catch(SQLException e){
            System.out.println("Erro de conexão com o banco: " + e.getMessage());
        };
    }
}
