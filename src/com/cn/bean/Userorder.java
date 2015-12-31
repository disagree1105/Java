package com.cn.bean;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Userorder entity. @author MyEclipse Persistence Tools
 */

public class Userorder implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private String username;
	private String originstation;
	private String terminalstation;
	private Date origintime;
	private Date terminaltime;
	private Float price;

	// Constructors

	/** default constructor */
	public Userorder() {
	}

	/** minimal constructor */
	public Userorder(String username, String originstation,
			String terminalstation) {
		this.username = username;
		this.originstation = originstation;
		this.terminalstation = terminalstation;
	}

	/** full constructor */
	public Userorder(String username, String originstation,
			String terminalstation, Timestamp origintime,
			Timestamp terminaltime, Float price) {
		this.username = username;
		this.originstation = originstation;
		this.terminalstation = terminalstation;
		this.origintime = origintime;
		this.terminaltime = terminaltime;
		this.price = price;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public void setOrigintime(Date origintime) {
		this.origintime = origintime;
	}

	public Date getTerminaltime() {
		return this.terminaltime;
	}

	public void setTerminaltime(Date terminaltime) {
		this.terminaltime = terminaltime;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

}