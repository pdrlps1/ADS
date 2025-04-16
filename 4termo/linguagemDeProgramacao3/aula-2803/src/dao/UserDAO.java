package dao;

import model.Usuario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public void create(Usuario usuario) throws SQLException {
        String sql = "INSERT INTO usuario(nome, email) VALUES (?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql))
        {
            statement.setString(1, usuario.getNome());
            statement.setString(2, usuario.getEmail());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Erro ao criar usuario! " + e.getMessage(), e);
        }
    }

    public Usuario getUserById(int id) throws SQLException {
        String sql = "select * from usuario where id = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql);
        ) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Usuario(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getString("email")
                );
            };
        } catch (SQLException e) {
            throw new SQLException("Erro ao consultar dados do usuario! " + e.getMessage(), e);
        }

        return null;
    };

    public List<Usuario> getAllUsers() throws SQLException {
        List<Usuario> users = new ArrayList<>();

        String sql = "select * from usuarios";

        try (Connection conn = DatabaseConnection.getConnection();
             Statement statement = conn.createStatement();
             ResultSet rs = statement.executeQuery(sql);
        ) {

            while (rs.next()){
                users.add(new Usuario(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getString("email")
                ));
            }

        } catch (SQLException e) {
            throw new SQLException("Erro ao consultar dados do usuario! " + e.getMessage(), e);
        }

        return users;
    };

    public void update (Usuario usuario) throws SQLException{
        String sql = "update usuario set nome = ?, email = ? where id = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql);)
        {

            statement.setString(1, usuario.getNome());
            statement.setString(2, usuario.getEmail());
            statement.setInt(3, usuario.getId());
            statement.executeUpdate();

        } catch (SQLException e) {
            throw new SQLException("Erro ao atualizar dados do usuario! " + e.getMessage(), e);
        }
    };

    public void delete(int id) throws SQLException{
        String sql = "delete from usuario where id = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql);)
        {
            statement.setInt(1, id);
            statement.executeUpdate();

        } catch (SQLException e) {
            throw new SQLException("Erro ao deletar usuario! " + e.getMessage(), e);
        }
    };
};