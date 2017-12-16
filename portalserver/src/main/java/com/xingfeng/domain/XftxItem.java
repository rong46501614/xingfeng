package com.xingfeng.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * XftxItem entity. @author MyEclipse Persistence Tools
 */

public class XftxItem implements java.io.Serializable {

	// Fields

	private String itemid;
	private XftxCountry xftxCountry;
	private XftxUser xftxUser;
	private XftxCity xftxCity;
	private XftxTheme xftxTheme;
	private String itemname;
	private String itemabout;
	private String itemimgpath;
	private Date itembuildtime;
	private Date itemupdatetime;
	private Set xftxImgs = new HashSet(0);

	// Constructors

	/** default constructor */
	public XftxItem() {
	}

	/** minimal constructor */
	public XftxItem(String itemid, String itemname) {
		this.itemid = itemid;
		this.itemname = itemname;
	}

	/** full constructor */
	public XftxItem(String itemid, XftxCountry xftxCountry, XftxUser xftxUser,
			XftxCity xftxCity, XftxTheme xftxTheme, String itemname,
			String itemabout, String itemimgpath, Date itembuildtime,
			Date itemupdatetime, Set xftxImgs) {
		this.itemid = itemid;
		this.xftxCountry = xftxCountry;
		this.xftxUser = xftxUser;
		this.xftxCity = xftxCity;
		this.xftxTheme = xftxTheme;
		this.itemname = itemname;
		this.itemabout = itemabout;
		this.itemimgpath = itemimgpath;
		this.itembuildtime = itembuildtime;
		this.itemupdatetime = itemupdatetime;
		this.xftxImgs = xftxImgs;
	}

	// Property accessors

	public String getItemid() {
		return this.itemid;
	}

	public void setItemid(String itemid) {
		this.itemid = itemid;
	}

	public XftxCountry getXftxCountry() {
		return this.xftxCountry;
	}

	public void setXftxCountry(XftxCountry xftxCountry) {
		this.xftxCountry = xftxCountry;
	}

	public XftxUser getXftxUser() {
		return this.xftxUser;
	}

	public void setXftxUser(XftxUser xftxUser) {
		this.xftxUser = xftxUser;
	}

	public XftxCity getXftxCity() {
		return this.xftxCity;
	}

	public void setXftxCity(XftxCity xftxCity) {
		this.xftxCity = xftxCity;
	}

	public XftxTheme getXftxTheme() {
		return this.xftxTheme;
	}

	public void setXftxTheme(XftxTheme xftxTheme) {
		this.xftxTheme = xftxTheme;
	}

	public String getItemname() {
		return this.itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getItemabout() {
		return this.itemabout;
	}

	public void setItemabout(String itemabout) {
		this.itemabout = itemabout;
	}

	public String getItemimgpath() {
		return this.itemimgpath;
	}

	public void setItemimgpath(String itemimgpath) {
		this.itemimgpath = itemimgpath;
	}

	public Date getItembuildtime() {
		return this.itembuildtime;
	}

	public void setItembuildtime(Date itembuildtime) {
		this.itembuildtime = itembuildtime;
	}

	public Date getItemupdatetime() {
		return this.itemupdatetime;
	}

	public void setItemupdatetime(Date itemupdatetime) {
		this.itemupdatetime = itemupdatetime;
	}

	public Set getXftxImgs() {
		return this.xftxImgs;
	}

	public void setXftxImgs(Set xftxImgs) {
		this.xftxImgs = xftxImgs;
	}

}