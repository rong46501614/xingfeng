package com.xingfeng.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * XftxCity entity. @author MyEclipse Persistence Tools
 */

public class XftxCity implements java.io.Serializable {

	// Fields

	private String cityid;
	private XftxProvince xftxProvince;
	private XftxCountry xftxCountry;
	private String cityname;
	private Set xftxItems = new HashSet(0);

	// Constructors

	/** default constructor */
	public XftxCity() {
	}

	/** minimal constructor */
	public XftxCity(String cityid, String cityname) {
		this.cityid = cityid;
		this.cityname = cityname;
	}

	/** full constructor */
	public XftxCity(String cityid, XftxProvince xftxProvince,
			XftxCountry xftxCountry, String cityname, Set xftxItems) {
		this.cityid = cityid;
		this.xftxProvince = xftxProvince;
		this.xftxCountry = xftxCountry;
		this.cityname = cityname;
		this.xftxItems = xftxItems;
	}

	// Property accessors

	public String getCityid() {
		return this.cityid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	public XftxProvince getXftxProvince() {
		return this.xftxProvince;
	}

	public void setXftxProvince(XftxProvince xftxProvince) {
		this.xftxProvince = xftxProvince;
	}

	public XftxCountry getXftxCountry() {
		return this.xftxCountry;
	}

	public void setXftxCountry(XftxCountry xftxCountry) {
		this.xftxCountry = xftxCountry;
	}

	public String getCityname() {
		return this.cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public Set getXftxItems() {
		return this.xftxItems;
	}

	public void setXftxItems(Set xftxItems) {
		this.xftxItems = xftxItems;
	}

}