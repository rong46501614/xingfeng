package com.xingfeng.form;

import java.io.File;
import java.util.Date;


@SuppressWarnings("serial")
public class XftxImgForm implements java.io.Serializable{

	
	private File img;         //图片Id
	private String imgFileName;   //图片Id
	private String imgContentType;   //图片Id
	private String imgId;         //图片Id
	private String imgName;		  //图片名称
	private String imgAbout;	  //图片描述
	private String imgPath;		  //图片路径
	private String imgSize;		  //图片大小
	private Date imgUptime;	  	  //图片上传时间
	private String imgItemId;	  //图片所属项目
	
	
	public String getImgId() {
		return imgId;
	}

	public void setImgId(String imgId) {
		this.imgId = imgId;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public String getImgAbout() {
		return imgAbout;
	}

	public void setImgAbout(String imgAbout) {
		this.imgAbout = imgAbout;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getImgSize() {
		return imgSize;
	}

	public void setImgSize(String imgSize) {
		this.imgSize = imgSize;
	}

	public Date getImgUptime() {
		return imgUptime;
	}

	public void setImgUptime(Date imgUptime) {
		this.imgUptime = imgUptime;
	}

	public String getImgItemId() {
		return imgItemId;
	}

	public void setImgItemId(String imgItemId) {
		this.imgItemId = imgItemId;
	}

	public File getImg() {
		return img;
	}

	public void setImg(File img) {
		this.img = img;
	}

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String getImgContentType() {
		return imgContentType;
	}

	public void setImgContentType(String imgContentType) {
		this.imgContentType = imgContentType;
	}
	

	
}
