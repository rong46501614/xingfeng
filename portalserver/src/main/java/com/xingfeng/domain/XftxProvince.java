package com.xingfeng.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * XftxProvince entity. @author MyEclipse Persistence Tools
 */

public class XftxProvince implements java.io.Serializable {

	// Fields

	private String provinceid;
	private XftxCountry xftxCountry;
	private String provincename;
	private Set xftxCities = new HashSet(0);

	// Constructors

	/** default constructor */
	public XftxProvince() {
	}

	/** minimal constructor */
	public XftxProvince(String provinceid, String provincename) {
		this.provinceid = provinceid;
		this.provincename = provincename;
	}

	/** full constructor */
	public XftxProvince(String provinceid, XftxCountry xftxCountry,
			String provincename, Set xftxCities) {
		this.provinceid = provinceid;
		this.xftxCountry = xftxCountry;
		this.provincename = provincename;
		this.xftxCities = xftxCities;
	}

	// Property accessors

	public String getProvinceid() {
		return this.provinceid;
	}

	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}

	public XftxCountry getXftxCountry() {
		return this.xftxCountry;
	}

	public void setXftxCountry(XftxCountry xftxCountry) {
		this.xftxCountry = xftxCountry;
	}

	public String getProvincename() {
		return this.provincename;
	}

	public void setProvincename(String provincename) {
		this.provincename = provincename;
	}

	public Set getXftxCities() {
		return this.xftxCities;
	}

	public void setXftxCities(Set xftxCities) {
		this.xftxCities = xftxCities;
	}

}