package com.xingfeng.form;

@SuppressWarnings("serial")
public class XftxThemeForm implements java.io.Serializable{

	private String themeId;
	private String themeName;
	private String themeAbout;
	
	public String getThemeId() {
		return themeId;
	}
	public void setThemeId(String themeId) {
		this.themeId = themeId;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public String getThemeAbout() {
		return themeAbout;
	}
	public void setThemeAbout(String themeAbout) {
		this.themeAbout = themeAbout;
	}
	
}
