package com.xingfeng.dao;

import java.util.List;

import com.xingfeng.domain.XftxUser;

public interface IXftxUserDao extends ICommenDao<XftxUser>{

	public final static String SERVICE_NAME = "com.xingfeng.dao.impl.UserDaoImpl";
	
	List<XftxUser> findXftxUserByuserLogin(String userLogin);
	
}
