package com.xingfeng.singleton;

public class SingleTon3 {
	
	private static SingleTon3 singleTon = new SingleTon3();

	private SingleTon3() {

	}

	public static SingleTon3 getInstance() {
		return singleTon;
	}

}
