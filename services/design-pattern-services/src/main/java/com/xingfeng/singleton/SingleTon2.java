package com.xingfeng.singleton;

public class SingleTon2 {
	
	private static SingleTon2 singleTon;

	private SingleTon2() {

	}

	//并发其实是一种特殊情况，大多时候这个锁占用的额外资源都浪费了，这种打补丁方式写出来的结构效率很低。
	public static synchronized SingleTon2 getInstance() {
		if (singleTon == null) {
			singleTon = new SingleTon2();
		}
		return singleTon;
	}

}
