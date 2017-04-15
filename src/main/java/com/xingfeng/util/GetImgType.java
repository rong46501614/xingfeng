package com.xingfeng.util;

public class GetImgType {

	
	/**  
	* @Name: getImgType
	* @Description: 获取图片的扩展名
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String fileName 图片名称
	* @Return:  String type 图片扩展名
	*/
	public static String getImgType(String fileName) {
		String type=fileName.substring(fileName.indexOf("."), fileName.length());
		return type;
	}
}
