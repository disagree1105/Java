package com.cn.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;


/**
 * Flight entity. @author MyEclipse Persistence Tools
 */

public class Flight  implements java.io.Serializable {


    // Fields    

     private Integer flightid;
     private Airport airportByOriginstation;
     private Airport airportByTerminalstation;
     private Timestamp origintime;
     private Timestamp terminaltime;
     private Integer ticketsum;
     private Integer ticketleft;
     private Float price;
     private Set userorders = new HashSet(0);


    // Constructors

    /** default constructor */
    public Flight() {
    }

    
    /** full constructor */
    public Flight(Airport airportByOriginstation, Airport airportByTerminalstation, Timestamp origintime, Timestamp terminaltime, Integer ticketsum, Integer ticketleft, Float price, Set userorders) {
        this.airportByOriginstation = airportByOriginstation;
        this.airportByTerminalstation = airportByTerminalstation;
        this.origintime = origintime;
        this.terminaltime = terminaltime;
        this.ticketsum = ticketsum;
        this.ticketleft = ticketleft;
        this.price = price;
        this.userorders = userorders;
    }

   
    // Property accessors

    public Integer getFlightid() {
        return this.flightid;
    }
    
    public void setFlightid(Integer flightid) {
        this.flightid = flightid;
    }

    public Airport getAirportByOriginstation() {
        return this.airportByOriginstation;
    }
    
    public void setAirportByOriginstation(Airport airportByOriginstation) {
        this.airportByOriginstation = airportByOriginstation;
    }

    public Airport getAirportByTerminalstation() {
        return this.airportByTerminalstation;
    }
    
    public void setAirportByTerminalstation(Airport airportByTerminalstation) {
        this.airportByTerminalstation = airportByTerminalstation;
    }

    public Timestamp getOrigintime() {
        return this.origintime;
    }
    
    public void setOrigintime(Timestamp origintime) {
        this.origintime = origintime;
    }

    public Timestamp getTerminaltime() {
        return this.terminaltime;
    }
    
    public void setTerminaltime(Timestamp terminaltime) {
        this.terminaltime = terminaltime;
    }

    public Integer getTicketsum() {
        return this.ticketsum;
    }
    
    public void setTicketsum(Integer ticketsum) {
        this.ticketsum = ticketsum;
    }

    public Integer getTicketleft() {
        return this.ticketleft;
    }
    
    public void setTicketleft(Integer ticketleft) {
        this.ticketleft = ticketleft;
    }

    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }

    public Set getUserorders() {
        return this.userorders;
    }
    
    public void setUserorders(Set userorders) {
        this.userorders = userorders;
    }
   








}