package com.xingfeng.singleton;

public class SingleTon {
	
	private static SingleTon singleTon;

	private SingleTon() {

	}

	//通过提供一个静态的对象instance，利用private权限的构造方法和getInstance()方法来给予访问者一个单例。
	//缺点是，没有考虑到线程安全，可能存在多个访问者同时访问，并同时构造了多个对象的问题。
	public static SingleTon getInstance() {
		if (singleTon == null) {
			singleTon = new SingleTon();
		}
		return singleTon;
	}

}
