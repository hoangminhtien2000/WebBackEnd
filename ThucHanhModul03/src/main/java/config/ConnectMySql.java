package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMySql {
    public static Connection getConnection() {
        String jdbcURL = "jdbc:mysql://localhost:3306/employedata";
        String jdbcUsername = "root";
        String jdbcPassword = "12345678";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            return connection;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
