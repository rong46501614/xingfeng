package com.xingfeng.service;

import java.util.List;

import com.xingfeng.domain.XftxCountry;
import com.xingfeng.form.XftxCountryForm;


public interface IXftxCountryService {

	public final static String SERVICE_NAME = "com.xftx.service.impl.XftxCountryServiceImpl";
	public void saveXftxCountry(XftxCountry xftxCountry);
	public List<XftxCountryForm> findObjectAll();
}
