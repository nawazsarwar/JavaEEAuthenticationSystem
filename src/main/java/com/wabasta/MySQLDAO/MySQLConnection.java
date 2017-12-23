package com.wabasta.MySQLDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 * @author Nawaz Sarwar
 */
public class MySQLConnection {

    static String database = "";
    static Connection conn = null;
    Statement stmt = null;
    PreparedStatement pst = null;

    public static Connection ConnectMySQL(String dbname) {

        if (dbname.equals("") || dbname == null) {
            database = "test";
        } else {
            database = dbname;
        }

        try {
            String ip, port, mysqluser, mysqlpassword, mysqldbName, jdbc_driver, uni, db_url;
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + database + "?verifyServerCertificate=false&useSSL=true&requireSSL=false", "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MySQLConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MySQLConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

}
