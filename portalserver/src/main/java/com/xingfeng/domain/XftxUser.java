package com.xingfeng.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * XftxUser entity. @author MyEclipse Persistence Tools
 */

public class XftxUser implements java.io.Serializable {

	// Fields

	private String userid;
	private String userlogin;
	private String useremail;
	private String username;
	private String userpasswd;
	private String userage;
	private String usersex;
	private String userphone;
	private String useraddress;
	private String usercity;
	private String usercountry;
	private String userregisterdate;
	private String userbrithday;
	private String userlastlogindate;
	private String userimg;
	private String userabout;
	private Set xftxItems = new HashSet(0);

	// Constructors

	/** default constructor */
	public XftxUser() {
	}

	/** minimal constructor */
	public XftxUser(String userid, String userlogin) {
		this.userid = userid;
		this.userlogin = userlogin;
	}

	/** full constructor */
	public XftxUser(String userid, String userlogin, String useremail,
			String username, String userpasswd, String userage, String usersex,
			String userphone, String useraddress, String usercity,
			String usercountry, String userregisterdate, String userbrithday,
			String userlastlogindate, String userimg, String userabout,
			Set xftxItems) {
		this.userid = userid;
		this.userlogin = userlogin;
		this.useremail = useremail;
		this.username = username;
		this.userpasswd = userpasswd;
		this.userage = userage;
		this.usersex = usersex;
		this.userphone = userphone;
		this.useraddress = useraddress;
		this.usercity = usercity;
		this.usercountry = usercountry;
		this.userregisterdate = userregisterdate;
		this.userbrithday = userbrithday;
		this.userlastlogindate = userlastlogindate;
		this.userimg = userimg;
		this.userabout = userabout;
		this.xftxItems = xftxItems;
	}

	// Property accessors

	

	public String getUserid() {
		return this.userid;
	}

	public XftxUser(String userlogin, String useremail,String userphone, String userpasswd) {
		super();
		this.userlogin = userlogin;
		this.useremail = useremail;
		this.userpasswd = userpasswd;
		this.userphone = userphone;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserlogin() {
		return this.userlogin;
	}

	public void setUserlogin(String userlogin) {
		this.userlogin = userlogin;
	}

	public String getUseremail() {
		return this.useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpasswd() {
		return this.userpasswd;
	}

	public void setUserpasswd(String userpasswd) {
		this.userpasswd = userpasswd;
	}

	public String getUserage() {
		return this.userage;
	}

	public void setUserage(String userage) {
		this.userage = userage;
	}

	public String getUsersex() {
		return this.usersex;
	}

	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}

	public String getUserphone() {
		return this.userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUseraddress() {
		return this.useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public String getUsercity() {
		return this.usercity;
	}

	public void setUsercity(String usercity) {
		this.usercity = usercity;
	}

	public String getUsercountry() {
		return this.usercountry;
	}

	public void setUsercountry(String usercountry) {
		this.usercountry = usercountry;
	}

	public String getUserregisterdate() {
		return this.userregisterdate;
	}

	public void setUserregisterdate(String userregisterdate) {
		this.userregisterdate = userregisterdate;
	}

	public String getUserbrithday() {
		return this.userbrithday;
	}

	public void setUserbrithday(String userbrithday) {
		this.userbrithday = userbrithday;
	}

	public String getUserlastlogindate() {
		return this.userlastlogindate;
	}

	public void setUserlastlogindate(String userlastlogindate) {
		this.userlastlogindate = userlastlogindate;
	}

	public String getUserimg() {
		return this.userimg;
	}

	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}

	public String getUserabout() {
		return this.userabout;
	}

	public void setUserabout(String userabout) {
		this.userabout = userabout;
	}

	public Set getXftxItems() {
		return this.xftxItems;
	}

	public void setXftxItems(Set xftxItems) {
		this.xftxItems = xftxItems;
	}

}