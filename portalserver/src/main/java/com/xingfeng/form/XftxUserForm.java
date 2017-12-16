package com.xingfeng.form;


@SuppressWarnings("serial")
public class XftxUserForm  implements java.io.Serializable{
	
	private String userLogin;
	private String userPasswd;
	private String imgs;
	
	public String getImgs() {
		return imgs;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	public String getUserLogin() {
		return userLogin;
	}
	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}
	public String getUserPasswd() {
		return userPasswd;
	}
	public void setUserPasswd(String userPasswd) {
		this.userPasswd = userPasswd;
	}
	
}
