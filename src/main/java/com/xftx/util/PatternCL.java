package com.xftx.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PatternCL {
/**  
	* @Name: matcherEmail
	* @Description: java正则验证字符串是否为邮箱格式
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String userEmail
	* @Return:  boolean
	*/
	public static boolean matcherEmail(String userEmail) {
		Pattern pattern = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");

		 Matcher matcher = pattern.matcher(userEmail);

		 return matcher.matches();
	}
	/**  
	* @Name: matcherPhone
	* @Description: java正则验证字符串是否为手机号格式
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String userPhone
	* @Return:  boolean
	*/
	public static boolean matcherPhone(String userPhone) {
		Pattern p = Pattern.compile("^((13\\d{9}$)|(15[0,1,2,3,5,6,7,8,9]\\d{8}$)|(18[0,1,2,5,6,7,8,9]\\d{8}$)|(147\\d{8})$)");
        Matcher m = p.matcher(userPhone);     
        return m.matches();     
	}

	public static String cleanTablespace(String str) {
		return str.replaceAll("\\s+","");
	}
	
	public static String cleanBeginAndEndTablespace(String str) {
		return str.replaceAll("(^\\s*)|(\\s*$)","");
	}
	public static String cleanChinese(String str) {
		return str.replaceAll("[\u4E00-\u9FA5]","");
	}
	public static String cleanNoChinese(String str) {
		return str.replaceAll("[\u4E00-\u9FA5]","");
	}
	public static String cleanNommal(String str) {
		return str.replaceAll("[\\u4e00-\\u9fa5]","");
	}
	
	public static void main(String[] args) {
		String s=cleanBeginAndEndTablespace("        hello    我$llll[]【】。    ￥%￥$#@../?           ");
		System.out.println(s);
	}
	
}
