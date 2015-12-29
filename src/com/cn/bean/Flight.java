package com.cn.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Flight entity. @author MyEclipse Persistence Tools
 */

public class Flight implements java.io.Serializable {

	// Fields

	private Integer flightid;
	private String originstation;
	private String terminalstation;
	private Timestamp terminaltime;
	private Timestamp origintime;
	private Integer ticketsum;
	private Integer ticketleft;
	private Float price;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Flight() {
	}

	/** full constructor */
	public Flight(String originstation, String terminalstation,
			Timestamp terminaltime, Timestamp origintime, Integer ticketsum,
			Integer ticketleft, Float price, Set orders) {
		this.originstation = originstation;
		this.terminalstation = terminalstation;
		this.terminaltime = terminaltime;
		this.origintime = origintime;
		this.ticketsum = ticketsum;
		this.ticketleft = ticketleft;
		this.price = price;
		this.orders = orders;
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

	public Timestamp getTerminaltime() {
		return this.terminaltime;
	}

	public void setTerminaltime(Timestamp terminaltime) {
		this.terminaltime = terminaltime;
	}

	public Timestamp getOrigintime() {
		return this.origintime;
	}

	public void setOrigintime(Timestamp origintime) {
		this.origintime = origintime;
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

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}