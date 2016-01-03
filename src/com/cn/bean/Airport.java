package com.cn.bean;

/**
 * Airport entity. @author MyEclipse Persistence Tools
 */

public class Airport implements java.io.Serializable {

	// Fields

	private Integer aid;
	private String portname;
	private String portinfo;

	// Constructors

	/** default constructor */
	public Airport() {
	}

	/** minimal constructor */
	public Airport(String portname) {
		this.portname = portname;
	}

	/** full constructor */
	public Airport(String portname, String portinfo) {
		this.portname = portname;
		this.portinfo = portinfo;
	}

	// Property accessors

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getPortname() {
		return this.portname;
	}

	public void setPortname(String portname) {
		this.portname = portname;
	}

	public String getPortinfo() {
		return this.portinfo;
	}

	public void setPortinfo(String portinfo) {
		this.portinfo = portinfo;
	}

}