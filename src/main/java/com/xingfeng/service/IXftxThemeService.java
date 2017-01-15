package com.xingfeng.service;

import java.util.List;

import com.xingfeng.form.XftxThemeForm;



public interface IXftxThemeService {

	public final static String SERVICE_NAME = "com.xftx.service.impl.XftxThemeServiceImpl";

	List<XftxThemeForm> findObjectAll();
	
}
