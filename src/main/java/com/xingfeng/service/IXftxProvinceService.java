package com.xingfeng.service;

import java.util.List;

import com.xingfeng.form.XftxProvinceForm;


public interface IXftxProvinceService {

	public final static String SERVICE_NAME = "com.xftx.service.impl.XftxProvinceServiceImpl";
	public List<XftxProvinceForm> findObjectAll();
	public List<XftxProvinceForm> findProvinceByCountryId(String countryId);
}
