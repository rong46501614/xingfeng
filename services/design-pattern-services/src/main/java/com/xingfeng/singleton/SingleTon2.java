package com.xingfeng.singleton;

public class SingleTon2 {
	
	private static SingleTon2 singleTon;

	private SingleTon2() {

	}

	//������ʵ��һ��������������ʱ�������ռ�õĶ�����Դ���˷��ˣ����ִ򲹶���ʽд�����ĽṹЧ�ʺܵ͡�
	public static synchronized SingleTon2 getInstance() {
		if (singleTon == null) {
			singleTon = new SingleTon2();
		}
		return singleTon;
	}

}
