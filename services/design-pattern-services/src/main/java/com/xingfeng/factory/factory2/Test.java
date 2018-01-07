package com.xingfeng.factory.factory2;

public class Test {
	public static void main(String[] args) {
		ObjectFactory objectFactory= new UserProfileFactory();
		Object produceObject = objectFactory.produceObject();
		System.out.println(produceObject);
		
		objectFactory= new AccountFactory();
		produceObject = objectFactory.produceObject();
		System.out.println(produceObject);
	}
}
