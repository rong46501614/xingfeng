package com.xftx.utils;

import java.lang.reflect.ParameterizedType;


public class GenericSuperClass {

	/**  
	* @Name: getClass
	* @Description: 范类转换，转换成对应的对�?
	* @Author: 张荣瑞（作�?�）
	* @Version: V1.00 （版本号�?
	* @Create Date: 2011-12-23 （创建日期）
	* @Parameters: Class tClass 范类
	* @Return: 返回对象
	*/
	@SuppressWarnings("rawtypes")
	public static Class getClass(Class tClass) {
		ParameterizedType pt = (ParameterizedType) tClass.getGenericSuperclass();
		Class entity = (Class)pt.getActualTypeArguments()[0];
		return entity;
	}
}
