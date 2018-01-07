package com.xingfeng.proxy.service;

public class Inform {
	public static void before(){
		System.out.println("this is before method");
	}
	
	public static void after(){
		System.out.println("this is after method");
	}
}
