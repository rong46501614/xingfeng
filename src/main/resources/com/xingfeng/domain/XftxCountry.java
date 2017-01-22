package com.xingfeng.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * XftxCountry entity. @author MyEclipse Persistence Tools
 */

public class XftxCountry implements java.io.Serializable {

	// Fields

	private String countryid;
	private String countryname;
	private String countrynameen;
	private String countrytime;
	private Set xftxProvinces = new HashSet(0);
	private Set xftxItems = new HashSet(0);
	private Set xftxCities = new HashSet(0);

	// Constructors

	/** default constructor */
	public XftxCountry() {
	}

	/** minimal constructor */
	public XftxCountry(String countryid, String countryname) {
		this.countryid = countryid;
		this.countryname = countryname;
	}

	/** full constructor */
	public XftxCountry(String countryid, String countryname,
			String countrynameen, String countrytime, Set xftxProvinces,
			Set xftxItems, Set xftxCities) {
		this.countryid = countryid;
		this.countryname = countryname;
		this.countrynameen = countrynameen;
		this.countrytime = countrytime;
		this.xftxProvinces = xftxProvinces;
		this.xftxItems = xftxItems;
		this.xftxCities = xftxCities;
	}

	// Property accessors

	public String getCountryid() {
		return this.countryid;
	}

	public void setCountryid(String countryid) {
		this.countryid = countryid;
	}

	public String getCountryname() {
		return this.countryname;
	}

	public void setCountryname(String countryname) {
		this.countryname = countryname;
	}

	public String getCountrynameen() {
		return this.countrynameen;
	}

	public void setCountrynameen(String countrynameen) {
		this.countrynameen = countrynameen;
	}

	public String getCountrytime() {
		return this.countrytime;
	}

	public void setCountrytime(String countrytime) {
		this.countrytime = countrytime;
	}

	public Set getXftxProvinces() {
		return this.xftxProvinces;
	}

	public void setXftxProvinces(Set xftxProvinces) {
		this.xftxProvinces = xftxProvinces;
	}

	public Set getXftxItems() {
		return this.xftxItems;
	}

	public void setXftxItems(Set xftxItems) {
		this.xftxItems = xftxItems;
	}

	public Set getXftxCities() {
		return this.xftxCities;
	}

	public void setXftxCities(Set xftxCities) {
		this.xftxCities = xftxCities;
	}

}