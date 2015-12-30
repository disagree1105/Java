package com.cn.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Airport entity. @author MyEclipse Persistence Tools
 */

public class Airport implements java.io.Serializable {

	// Fields

	private Integer aid;
	private String portname;
	private Set flightsForOriginstation = new HashSet(0);
	private Set flightsForTerminalstation = new HashSet(0);

	// Constructors

	/** default constructor */
	public Airport() {
	}

	/** minimal constructor */
	public Airport(String portname) {
		this.portname = portname;
	}

	/** full constructor */
	public Airport(String portname, Set flightsForOriginstation,
			Set flightsForTerminalstation) {
		this.portname = portname;
		this.flightsForOriginstation = flightsForOriginstation;
		this.flightsForTerminalstation = flightsForTerminalstation;
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

	public Set getFlightsForOriginstation() {
		return this.flightsForOriginstation;
	}

	public void setFlightsForOriginstation(Set flightsForOriginstation) {
		this.flightsForOriginstation = flightsForOriginstation;
	}

	public Set getFlightsForTerminalstation() {
		return this.flightsForTerminalstation;
	}

	public void setFlightsForTerminalstation(Set flightsForTerminalstation) {
		this.flightsForTerminalstation = flightsForTerminalstation;
	}

}