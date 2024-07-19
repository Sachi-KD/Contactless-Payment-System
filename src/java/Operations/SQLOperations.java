/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operations;

import Models.RegisterModelHandle;
import java.io.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.LocalDateTime;

/**
 *
 * @author sachi
 */
public class SQLOperations extends RegisterModelHandle{

    
    private Statement state = null;
    private PreparedStatement prepair = null;
    ConnectionJDBC conn = new ConnectionJDBC();
    

    public String ErrorPassword;

    public void createAccount(String Username, String Password) {
        try {
            conn.connectMysql();
            state = conn.con.createStatement();
            ResultSet res = state.executeQuery("SELECT MAX(`UserID`) FROM `user`.platformuser");
            int LastIntId = 0;
            while (res.next()) {
                LastIntId = res.getInt(1);
            }

            LocalDateTime cDateTime = LocalDateTime.now();
            Timestamp timestamp = Timestamp.valueOf(cDateTime);
            prepair = conn.con.prepareStatement("INSERT INTO platformuser VALUES(?,?,?,?,?);");
            if (LastIntId == 0) {
                prepair.setInt(1, 1);
                prepair.setString(5, "Admin");
            } else {
                prepair.setInt(1, LastIntId + 1);
                prepair.setString(5, "Client");
            }
            prepair.setString(2, Username);
            prepair.setString(3, Password);
            prepair.setTimestamp(4, timestamp);

            int i = prepair.executeUpdate();
            System.out.println("Recode Success");

            res.close();
            state.close();
            conn.con.close();
        } catch (Exception ex) {
            System.out.print(ex);
        }
    }

    public void ShowRes() {
        try {
            conn.connectMysql();
            state = conn.con.createStatement();
            ResultSet res = state.executeQuery("SELECT * FROM platformUser");

            while (res.next()) {
                System.out.println(res.getInt(1));
                System.out.println(res.getString(2));
                System.out.println(res.getString(3));
            }
            res.close();
            state.close();
            conn.con.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    public int GetAndStorePass(String Username, String PasswordCheck) {
        setUserName(Username);
        int result = 0;
        try {
            conn.connectMysql();
            state = conn.con.createStatement();
            ResultSet res = state.executeQuery("SELECT * FROM platformuser WHERE Username = '" + getUserName() + "'");
            
            if (res.equals(null)) {
                result = 8;
            } else {
                while (res.next()) {
                    setUserId(res.getInt(1));
                    setUserName(res.getString(2));
                    setDateTimeReg(res.getTimestamp(4).toString());
                    setPassWord(res.getString(3));
                    setRole(res.getString(5));
                }
                if (getPassWord().equals(null)) {
                    setPassWord("1234");
                } else if (getPassWord().equals(PasswordCheck) || getPassWord().isEmpty()) {
                    if (getRole().equals("Admin")) {
                        result = 2;
                    } else {
                        result = 5;
                    }
                } else {
                    result = 8;
                }
            }
            res.close();
            state.close();
            conn.con.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return result;
    }

    public void imageUpload(String username, String path) {
        String imagePath = path;
        try {
            conn.connectMysql();
            state = conn.con.createStatement();
            ResultSet res = state.executeQuery("SELECT UserID FROM user.platformuser Where username = '" + username + "' ");
            int LastIntId = 0;
            while (res.next()) {
                LastIntId = res.getInt(1);
            }
            System.out.print(LastIntId);
            state.close();

            String sql = "UPDATE platformuser SET Image = ? WHERE UserID = ?";
            FileInputStream fis = new FileInputStream(imagePath);
            prepair = conn.con.prepareStatement(sql);

            // Set the parameters
            prepair.setBinaryStream(1, fis, fis.available());
            prepair.setInt(2, LastIntId);

            int rowsUpdated = prepair.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Update successful.");
            } else {
                System.out.println("Update failed.");
            }

            prepair.close();
            conn.con.close();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

 
}
