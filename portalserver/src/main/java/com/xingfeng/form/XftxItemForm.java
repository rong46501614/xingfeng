package com.xingfeng.form;

import java.io.File;

@SuppressWarnings("serial")
public class XftxItemForm implements java.io.Serializable{
	
	
	private String itemId;	      		//项目名称
	private String itemName;	      		//项目名称
	private String itemAbout;		   		//项目简述
	private String itemCountry;		   		//所属国家
	private String itemTheme;		   		//所属主题
	private String itemBuildTime;	        //创建时间
	private String itemCity;		   		//所属城市
	private String itemImgPath;		   		//缩略图地址
	private String filePhotoFileName;  		//获取文件名称
	private String filePhotoContentType;	//获取文件类型
	private File filePhoto;					//获取文件对象
	private String x1;
	private String x2;
	private String y1;
	private String y2;
	private String w;
	private String h;
	private String imgName;
	
	
	public String getItemBuildTime() {
		return itemBuildTime;
	}
	public void setItemBuildTime(String itemBuildTime) {
		this.itemBuildTime = itemBuildTime;
	}
	public String getItemImgPath() {
		return itemImgPath;
	}
	public void setItemImgPath(String itemImgPath) {
		this.itemImgPath = itemImgPath;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemAbout() {
		return itemAbout;
	}
	public void setItemAbout(String itemAbout) {
		this.itemAbout = itemAbout;
	}
	public String getItemCountry() {
		return itemCountry;
	}
	public void setItemCountry(String itemCountry) {
		this.itemCountry = itemCountry;
	}
	public String getItemTheme() {
		return itemTheme;
	}
	public void setItemTheme(String itemTheme) {
		this.itemTheme = itemTheme;
	}
	public File getFilePhoto() {
		return filePhoto;
	}
	public void setFilePhoto(File filePhoto) {
		this.filePhoto = filePhoto;
	}
	public String getItemCity() {
		return itemCity;
	}
	public void setItemCity(String itemCity) {
		this.itemCity = itemCity;
	}
	public String getFilePhotoFileName() {
		return filePhotoFileName;
	}
	public void setFilePhotoFileName(String filePhotoFileName) {
		this.filePhotoFileName = filePhotoFileName;
	}
	public String getFilePhotoContentType() {
		return filePhotoContentType;
	}
	public void setFilePhotoContentType(String filePhotoContentType) {
		this.filePhotoContentType = filePhotoContentType;
	}
	public String getX1() {
		return x1;
	}
	public void setX1(String x1) {
		this.x1 = x1;
	}
	public String getX2() {
		return x2;
	}
	public void setX2(String x2) {
		this.x2 = x2;
	}
	public String getY1() {
		return y1;
	}
	public void setY1(String y1) {
		this.y1 = y1;
	}
	public String getY2() {
		return y2;
	}
	public void setY2(String y2) {
		this.y2 = y2;
	}
	public String getW() {
		return w;
	}
	public void setW(String w) {
		this.w = w;
	}
	public String getH() {
		return h;
	}
	public void setH(String h) {
		this.h = h;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	
}
