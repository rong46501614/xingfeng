package com.xingfeng.singleton;

public class SingleTon {
	
	private static SingleTon singleTon;

	private SingleTon() {

	}

	//ͨ���ṩһ����̬�Ķ���instance������privateȨ�޵Ĺ��췽����getInstance()���������������һ��������
	//ȱ���ǣ�û�п��ǵ��̰߳�ȫ�����ܴ��ڶ��������ͬʱ���ʣ���ͬʱ�����˶����������⡣
	public static SingleTon getInstance() {
		if (singleTon == null) {
			singleTon = new SingleTon();
		}
		return singleTon;
	}

}
