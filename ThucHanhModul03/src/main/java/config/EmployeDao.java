package config;


import model.Employe;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeDao {
    static Connection connection = ConnectMySql.getConnection();

    public static List<Employe> getAll() {
        String selectAll = "SELECT employe.*, department.departmentName as Department\n" +
                "FROM employe \n" +
                "JOIN department USING(department_id)";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);
            List<Employe> employes = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String phone = resultSet.getString("phone");
                Double salary= resultSet.getDouble("salary");
                String departmentName = resultSet.getString("departmentName");
                int department_id = resultSet.getInt("department_id");
                employes.add(new Employe(id,name,email,address,phone,salary,departmentName,department_id));
            }
            return employes;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void saveHocVien(Employe employe) {
        String insert = " INSERT INTO employe(`name`,`email`,`address`,`phone`,`salary`,`department_id`) VALUE(?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, employe.getName());
            preparedStatement.setString(2, employe.getEmail());
            preparedStatement.setString(3, employe.getAddress());
            preparedStatement.setString(4, employe.getPhone());
            preparedStatement.setDouble(5,employe.getSalary());
            preparedStatement.setInt(6, employe.getDepartment_id());
            preparedStatement.execute();

        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
    }

    public static void update(Employe employe) {
        try {
            String sql = "update employe set name = ? ,email = ? ,address = ?,phone = ?, salary = ?, department_id = ? where id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, employe.getName());
            preparedStatement.setString(2, employe.getEmail());
            preparedStatement.setString(3, employe.getAddress());
            preparedStatement.setString(4, employe.getPhone());
            preparedStatement.setDouble(5,employe.getSalary());
            preparedStatement.setInt(6, employe.getDepartment_id());
            preparedStatement.setInt(7, employe.getId());

            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void deleteUser(int idStudent) {
        try {
            String sql = "DELETE FROM employe WHERE id = ? ;";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idStudent);
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static List<Employe> findByName(String nameFind) {
        String find = "SELECT employe.*, Department.name as classname \n" +
                "FROM employe \n" +
                "JOIN department USING(department_id)\n" +
                "WHERE employe.name LIKE \"nameFind%\"";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(find);
            List<Employe> employes = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String phone = resultSet.getString("phone");
                Double salary= resultSet.getDouble("salary");
                String departmentName = resultSet.getString("departmentName");
                int department_id = resultSet.getInt("department_id");
                employes.add(new Employe(id,name,email,address,phone,salary,departmentName,department_id));
            }
            return employes;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }


    public static void deleteByID(int id) {
        String sql = "delete from employe where id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
