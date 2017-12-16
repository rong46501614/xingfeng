package com.xingfeng.service;

import java.util.List;

import com.xingfeng.domain.XftxUser;


public interface IXftxUserService {

	public final static String SERVICE_NAME = "com.xftx.service.impl.XftxUserServiceImpl";
	public void saveXftxUser(XftxUser xftxUser);
	public List<XftxUser> checkUser(String userLogin, String userPasswd);
	public boolean checkUserPasswd(String userLogin, String userPasswd,XftxUser xftxUser);
	public void updateXftxUser(XftxUser xftxUser);
}
