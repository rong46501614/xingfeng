package com.xingfeng.domain;

import java.util.Date;

/**
 * XftxImg entity. @author MyEclipse Persistence Tools
 */

public class XftxImg implements java.io.Serializable {

	// Fields

	private String imgid;
	private XftxItem xftxItem;
	private String imgname;
	private String imgabout;
	private String imgpath;
	private String imgsize;
	private Date imguptime;

	// Constructors

	/** default constructor */
	public XftxImg() {
	}

	/** minimal constructor */
	public XftxImg(String imgid, String imgname) {
		this.imgid = imgid;
		this.imgname = imgname;
	}

	/** full constructor */
	public XftxImg(String imgid, XftxItem xftxItem, String imgname,
			String imgabout, String imgpath, String imgsize, Date imguptime) {
		this.imgid = imgid;
		this.xftxItem = xftxItem;
		this.imgname = imgname;
		this.imgabout = imgabout;
		this.imgpath = imgpath;
		this.imgsize = imgsize;
		this.imguptime = imguptime;
	}

	// Property accessors

	public String getImgid() {
		return this.imgid;
	}

	public void setImgid(String imgid) {
		this.imgid = imgid;
	}

	public XftxItem getXftxItem() {
		return this.xftxItem;
	}

	public void setXftxItem(XftxItem xftxItem) {
		this.xftxItem = xftxItem;
	}

	public String getImgname() {
		return this.imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getImgabout() {
		return this.imgabout;
	}

	public void setImgabout(String imgabout) {
		this.imgabout = imgabout;
	}

	public String getImgpath() {
		return this.imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getImgsize() {
		return this.imgsize;
	}

	public void setImgsize(String imgsize) {
		this.imgsize = imgsize;
	}

	public Date getImguptime() {
		return this.imguptime;
	}

	public void setImguptime(Date imguptime) {
		this.imguptime = imguptime;
	}

}