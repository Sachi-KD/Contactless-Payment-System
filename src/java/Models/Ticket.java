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
public class Ticket {
    private String TicketNo;
    private Timestamp DateTime;

    public String getTicketNo() {
        return TicketNo;
    }

    public void setTicketNo(String TicketNo) {
        this.TicketNo = TicketNo;
    }

    public Timestamp getDateTime() {
        return DateTime;
    }

    public void setDateTime(Timestamp DateTime) {
        this.DateTime = DateTime;
    }

    
}
