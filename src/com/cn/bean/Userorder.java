package com.cn.bean;

/**
 * Userorder entity. @author MyEclipse Persistence Tools
 */

public class Userorder implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Flight flight;
	private User user;

	// Constructors

	/** default constructor */
	public Userorder() {
	}

	/** full constructor */
	public Userorder(Flight flight, User user) {
		this.flight = flight;
		this.user = user;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Flight getFlight() {
		return this.flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}