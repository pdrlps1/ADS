package controller;

import model.Usuario;
import service.UserService;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

public class UserController {

    private UserService usuarioService;
    private Scanner scanner;

    public UserController() {
        usuarioService = new UserService();
        scanner = new Scanner(System.in);
    }

    public void showMenu () throws SQLException, IllegalAccessException {
    int opcao;

        do {
            System.out.println("------MENU DE USUARIO------");
            System.out.println("1. Criar usuario");
            System.out.println("2. Pesquisar usuario");
            System.out.println("3. Listar usuarios");
            System.out.println("4. Atualizar usuario");
            System.out.println("5. Excluir usuario");
            System.out.println("6. Sair");
            System.out.println("Opcao selecionada: ");

            opcao = scanner.nextInt();

            switch (opcao) {
                case 1: {
                    createUser();
                    break;
                }
                case 2: {
                    getUserById();
                    break;
                }
                case 3: {
                    listUsers();
                    break;
                }
                case 4: {
                    updateUser();
                    break;
                }
                case 5: {
                    deleteUser();
                    break;
                }
                case 6: {
                    break;
                }
                default:{
                    throw new IllegalAccessException("Unexpected value: " + opcao);
                }
            }
        } while (opcao != 6);
    }

    private void createUser() throws SQLException {
        System.out.println("Nome: ");
        String nome = scanner.nextLine();
        System.out.println("Email: ");
        String email = scanner.nextLine();

        usuarioService.create(nome, email);
    }

    private void getUserById() throws SQLException{
        System.out.println("ID: ");
        int id = scanner.nextInt();

        Usuario usuario = usuarioService.getUserById(id);

        if (usuario != null){
            System.out.println("Usuario: " + usuario.getId() + ", " +
                    usuario.getNome() + ", " + usuario.getEmail());
        } else {
            System.out.println("Usuario nao encontrado!");
        }
    }

    private void listUsers() throws SQLException{
        List<Usuario> usuarios = usuarioService.getAllUsers();

        for (Usuario usuario: usuarios){
            System.out.println("ID: " + usuario.getId() + ", Nome: " + usuario.getNome() + ", Email : " + usuario.getEmail());
        };
    }

    private void updateUser( ) throws SQLException{
        System.out.println("ID: ");
        int id = scanner.nextInt();
        System.out.println("Novo nome: ");
        String newName = scanner.next();
        System.out.println("Novo email: ");
        String newEmail = scanner.next();

        usuarioService.update(id, newName, newEmail);
    }

    private void deleteUser() throws SQLException{
        System.out.println("ID: ");
        int id = scanner.nextInt();

        usuarioService.delete(id);
    }

    public static void main(String[] args) throws SQLException, IllegalAccessException {
        UserController usuarioController = new UserController();
        usuarioController.showMenu();
    }
}
