package com.cn.bean;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Flight entity. @author MyEclipse Persistence Tools
 */

public class Flight implements java.io.Serializable {

	// Fields

	private Integer flightid;
	private String originstation;
	private String terminalstation;
	private Date origintime;
	private Date terminaltime;
	private Integer ticketsum;
	private Integer ticketleft;
	private Float price;

	// Constructors

	/** default constructor */
	public Flight() {
	}

	/** full constructor */
	public Flight(String originstation, String terminalstation,
			Timestamp origintime, Timestamp terminaltime, Integer ticketsum,
			Integer ticketleft, Float price) {
		this.originstation = originstation;
		this.terminalstation = terminalstation;
		this.origintime = origintime;
		this.terminaltime = terminaltime;
		this.ticketsum = ticketsum;
		this.ticketleft = ticketleft;
		this.price = price;
	}

	// Property accessors

	public Integer getFlightid() {
		return this.flightid;
	}

	public void setFlightid(Integer flightid) {
		this.flightid = flightid;
	}

	public String getOriginstation() {
		return this.originstation;
	}

	public void setOriginstation(String originstation) {
		this.originstation = originstation;
	}

	public String getTerminalstation() {
		return this.terminalstation;
	}

	public void setTerminalstation(String terminalstation) {
		this.terminalstation = terminalstation;
	}

	public Date getOrigintime() {
		return this.origintime;
	}

	public void setOrigintime(Timestamp origintime) {
		this.origintime = origintime;
	}

	public Date getTerminaltime() {
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

}