/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operations;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author sachi
 */
public class ConnectionJDBC {
    private static String url = "jdbc:mysql://localhost:3306/user"; // table details
    private static String username = "root"; // MySQL credentials
    private static String password = "";
    public Connection con = null;

    public void connectMysql() {
        try {
            ConnectionJDBC cons = new ConnectionJDBC();
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Connection Success!");
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {

        }
    }
    
    
}
