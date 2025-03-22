import io.github.cdimascio.dotenv.Dotenv;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
    public static void main(String[] args) {
        Dotenv dotenv = Dotenv.load();
        insertData data = new insertData();
        selectData select = new selectData();

        String url = dotenv.get("DB_URL");
        String user = dotenv.get("DB_USER");
        String pass = dotenv.get("DB_PASS");

        try {
            Connection conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Banco conectado com sucesso!");
            conn.close();
            //data.insert();
            select.select();
        } catch (SQLException e) {
            System.out.println("Erro ao conectar: " + e.getMessage());
        };
    };
}
