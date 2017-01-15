package com.xingfeng.service;

import java.util.List;

import com.xingfeng.form.XftxCityForm;


public interface IXftxCityService {

	public final static String SERVICE_NAME = "com.xingfeng.service.impl.XftxCityServiceImpl";
	public List<XftxCityForm> findObjectAll();
	public List<XftxCityForm> findCityByCountryId(String countryId);
	public List<XftxCityForm> findCityByProvinceId(String provinceId);
}
