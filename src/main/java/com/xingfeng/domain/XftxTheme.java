package com.xingfeng.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * XftxTheme entity. @author MyEclipse Persistence Tools
 */

public class XftxTheme implements java.io.Serializable {

	// Fields

	private String themeid;
	private String themename;
	private String themeabout;
	private Set xftxItems = new HashSet(0);

	// Constructors

	/** default constructor */
	public XftxTheme() {
	}

	/** minimal constructor */
	public XftxTheme(String themeid, String themename) {
		this.themeid = themeid;
		this.themename = themename;
	}

	/** full constructor */
	public XftxTheme(String themeid, String themename, String themeabout,
			Set xftxItems) {
		this.themeid = themeid;
		this.themename = themename;
		this.themeabout = themeabout;
		this.xftxItems = xftxItems;
	}

	// Property accessors

	public String getThemeid() {
		return this.themeid;
	}

	public void setThemeid(String themeid) {
		this.themeid = themeid;
	}

	public String getThemename() {
		return this.themename;
	}

	public void setThemename(String themename) {
		this.themename = themename;
	}

	public String getThemeabout() {
		return this.themeabout;
	}

	public void setThemeabout(String themeabout) {
		this.themeabout = themeabout;
	}

	public Set getXftxItems() {
		return this.xftxItems;
	}

	public void setXftxItems(Set xftxItems) {
		this.xftxItems = xftxItems;
	}

}