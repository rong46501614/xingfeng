package com.xftx.utils;

import java.util.List;

import com.xingfeng.form.XftxCityForm;
import com.xingfeng.form.XftxProvinceForm;

public class SpellJSON {
	
	
	/**  
	* @Name: spellXftxCity
	* @Description: 将XftxCityForm对象集合拼接成json数据，只适用于文本拼接�??
	* @Author: 张荣瑞（作�?�）
	* @Version: V1.00 （版本号�?
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxCityForm> list
	* @Return:  String json
	*/
	public static String spellXftxCity(List<XftxCityForm> list) {
		String json="{\"city\":[\n";
		XftxCityForm xftxCityForm;
		for (int i = 0; i < list.size(); i++) {
			xftxCityForm=list.get(i);
			
			if (i==list.size()-1) {
				json+="{"+"\""+"cityId"+"\""+":"+"\""+xftxCityForm.getCityId()+"\""+","+"\"cityName\""+":"+"\""+xftxCityForm.getCityName()+"\""+"}\n";
			}else{
				json+="{"+"\""+"cityId"+"\""+":"+"\""+xftxCityForm.getCityId()+"\""+","+"\"cityName\""+":"+"\""+xftxCityForm.getCityName()+"\""+"}"+",\n";
			}
		}
		json+="]}";
		return json;
	}
	
	
	
	/**  
	* @Name: spellXftxCity
	* @Description: 将XftxProvinceForm对象集合拼接成json数据，只适用于文本拼接�??
	* @Author: 张荣瑞（作�?�）
	* @Version: V1.00 （版本号�?
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxProvinceForm> list
	* @Return:  String json
	*/
	public static String spellProvince(List<XftxProvinceForm> list) {
		String json="{\"Province\":[\n";
		XftxProvinceForm xftxProvinceForm;
		for (int i = 0; i < list.size(); i++) {
			xftxProvinceForm=list.get(i);
			
			if (i==list.size()-1) {
				json+="{"+"\""+"cityId"+"\""+":"+"\""+xftxProvinceForm.getProvinceId()+"\""+","+"\"cityName\""+":"+"\""+xftxProvinceForm.getProvinceName()+"\""+"}\n";
			}else{
				json+="{"+"\""+"cityId"+"\""+":"+"\""+xftxProvinceForm.getProvinceId()+"\""+","+"\"cityName\""+":"+"\""+xftxProvinceForm.getProvinceName()+"\""+"}"+",\n";
			}
		}
		json+="]}";
		return json;
	}
	
	
	

}
