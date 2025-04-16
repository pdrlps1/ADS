package service;

import dao.UserDAO;
import model.Usuario;

import java.sql.SQLException;
import java.util.List;

public class UserService {
    private UserDAO usuarioDAO;

    public UserService() {
        usuarioDAO = new UserDAO();
    }

    public void create (String nome, String email) throws SQLException {
        Usuario user = new Usuario(nome, email);

        usuarioDAO.create(user);
    }

    public Usuario getUserById (int id) throws SQLException {
        return usuarioDAO.getUserById(id);
    }

    public List<Usuario> getAllUsers() throws SQLException {
        return usuarioDAO.getAllUsers();
    }

    public void update (int id, String nome, String email) throws SQLException{
        Usuario user = new Usuario(id, nome, email);
        usuarioDAO.update(user);
    }

    public void delete (int id) throws SQLException{
        usuarioDAO.delete(id);
    }
}
