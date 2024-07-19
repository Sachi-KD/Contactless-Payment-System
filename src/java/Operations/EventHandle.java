/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Operations;

import Models.Event;
import Models.EventList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author sachi
 */
public class EventHandle extends Event{
    private Statement state = null;
    private PreparedStatement prepair = null;
    ConnectionJDBC conn = new ConnectionJDBC();
    public List<EventList> events = new ArrayList<>();
    
    public void CreateEvent(){
        try{
            conn.connectMysql();
            state = conn.con.createStatement();
            ResultSet res = state.executeQuery("SELECT MAX(`EvntID`) FROM `user`.event");
            int LastIntId = 0;
            while (res.next()) {
                LastIntId = res.getInt(1);
            }
            
            prepair = conn.con.prepareStatement("INSERT INTO event VALUES(?,?,?,?,?);");
            if (LastIntId == 0) {
                prepair.setInt(1, 1);
            } else {
                prepair.setInt(1, LastIntId + 1);
            }
            prepair.setString(2, getEventName());
            prepair.setString(3, getEventDescription());
            prepair.setFloat(4, getEventPrice());
            prepair.setTimestamp(5, Timestamp.valueOf(getEventDateTime()));

            int i = prepair.executeUpdate();
            System.out.println("Recode Success");

            res.close();
            state.close();
            conn.con.close();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    public void AddEventList(){
        try{
            conn.connectMysql();
            state = conn.con.createStatement();
            ResultSet res = state.executeQuery("SELECT * FROM event");
            
            while(res.next()){
                Timestamp timestamp = res.getTimestamp(5);
                events.add(new EventList(res.getInt(1), res.getString(2), res.getString(3), res.getFloat(4), timestamp.toLocalDateTime()));
            }
            
            res.close();
            state.close();
            conn.con.close();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

}
