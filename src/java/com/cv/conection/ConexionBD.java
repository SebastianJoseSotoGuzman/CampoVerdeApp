package com.cv.conection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class ConexionBD {

    static Connection con;

    public static Connection ConectarDB() {
        Properties properties = new Properties();
        properties.setProperty("user", "root");
        properties.setProperty("password", "");
        String url = "jdbc:mysql://localhost/campo_verde";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, properties);
            System.out.print("Conexion Exitosa\n");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.print("error de conexion" + e);
        }
        return con;
    }

    public Connection getConnection() {
        return ConectarDB();
    }

    public static Connection Conectar() {
        return con;
        //return con;
    }

    public void desconectar() {
        con = null;
    }

    public static void main(String args[]) {
        ConexionBD obj = new ConexionBD();
        obj.getConnection();
    }

}
