/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.security.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author sachi
 */
public class Event {
    private int eveId;
    private String EventName;
    private String EventDescription;
    private float EventPrice;
    private LocalDateTime EventDateTime;

    public int getEveId() {
        return eveId;
    }

    public void setEveId(int eveId) {
        this.eveId = eveId;
    }
    
    public String getEventName() {
        return EventName;
    }

    public void setEventName(String EventName) {
        this.EventName = EventName;
    }

    public String getEventDescription() {
        return EventDescription;
    }

    public void setEventDescription(String EventDescription) {
        this.EventDescription = EventDescription;
    }

    public float getEventPrice() {
        return EventPrice;
    }

    public void setEventPrice(float EventPrice) {
        this.EventPrice = EventPrice;
    }

    public LocalDateTime getEventDateTime() {
        return EventDateTime;
    }

    public void setEventDateTime(LocalDateTime EventDateTime) {
        this.EventDateTime = EventDateTime;
    }

    
}
