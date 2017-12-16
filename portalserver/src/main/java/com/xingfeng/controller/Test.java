package com.xingfeng.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {

	public static void main(String[] args) {
		String passwd = "892374adfdDDSF@!*";
		System.out.println();
		
	}
	
	public boolean minlength(String str){
		if(str.length()>10){
			return true;
		}
		return false;
	}
	public boolean regexMatch(String str){
		String regex = "^[0-9a-zA-z]";
		Pattern pt = Pattern.compile(regex);
		Matcher matcher = pt.matcher(str);
		if(matcher.matches()){
			return true;
		}
		return false;
	}
}
