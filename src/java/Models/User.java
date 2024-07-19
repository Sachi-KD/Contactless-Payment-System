/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.security.Timestamp;

/**
 *
 * @author sachi
 */
public class User {
    private String UserName;
    private Timestamp DateTimeReg;

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public Timestamp getDateTimeReg() {
        return DateTimeReg;
    }

    public void setDateTimeReg(Timestamp DateTimeReg) {
        this.DateTimeReg = DateTimeReg;
    }
}
