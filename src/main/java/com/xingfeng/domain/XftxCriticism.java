package com.xingfeng.domain;

/**
 * XftxCriticism entity. @author MyEclipse Persistence Tools
 */

public class XftxCriticism implements java.io.Serializable {

	// Fields

	private Long criticismid;
	private String criticismimgid;
	private String criticismuserid;
	private String criticismcontent;
	private String criticismgrade;
	private String criticismforuserid;
	private String criticismtime;
	private Long criticismzancount;

	// Constructors

	/** default constructor */
	public XftxCriticism() {
	}

	/** minimal constructor */
	public XftxCriticism(Long criticismid) {
		this.criticismid = criticismid;
	}

	/** full constructor */
	public XftxCriticism(Long criticismid, String criticismimgid,
			String criticismuserid, String criticismcontent,
			String criticismgrade, String criticismforuserid,
			String criticismtime, Long criticismzancount) {
		this.criticismid = criticismid;
		this.criticismimgid = criticismimgid;
		this.criticismuserid = criticismuserid;
		this.criticismcontent = criticismcontent;
		this.criticismgrade = criticismgrade;
		this.criticismforuserid = criticismforuserid;
		this.criticismtime = criticismtime;
		this.criticismzancount = criticismzancount;
	}

	// Property accessors

	public Long getCriticismid() {
		return this.criticismid;
	}

	public void setCriticismid(Long criticismid) {
		this.criticismid = criticismid;
	}

	public String getCriticismimgid() {
		return this.criticismimgid;
	}

	public void setCriticismimgid(String criticismimgid) {
		this.criticismimgid = criticismimgid;
	}

	public String getCriticismuserid() {
		return this.criticismuserid;
	}

	public void setCriticismuserid(String criticismuserid) {
		this.criticismuserid = criticismuserid;
	}

	public String getCriticismcontent() {
		return this.criticismcontent;
	}

	public void setCriticismcontent(String criticismcontent) {
		this.criticismcontent = criticismcontent;
	}

	public String getCriticismgrade() {
		return this.criticismgrade;
	}

	public void setCriticismgrade(String criticismgrade) {
		this.criticismgrade = criticismgrade;
	}

	public String getCriticismforuserid() {
		return this.criticismforuserid;
	}

	public void setCriticismforuserid(String criticismforuserid) {
		this.criticismforuserid = criticismforuserid;
	}

	public String getCriticismtime() {
		return this.criticismtime;
	}

	public void setCriticismtime(String criticismtime) {
		this.criticismtime = criticismtime;
	}

	public Long getCriticismzancount() {
		return this.criticismzancount;
	}

	public void setCriticismzancount(Long criticismzancount) {
		this.criticismzancount = criticismzancount;
	}

}