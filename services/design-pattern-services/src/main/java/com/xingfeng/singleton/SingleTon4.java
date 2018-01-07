package com.xingfeng.singleton;

public class SingleTon4 {
	//ʹ���ڲ���ĺô��ǣ���̬�ڲ��಻���ڵ�������ʱ�ͼ��أ������ڵ���getInstance()����ʱ�Ž��м��أ��ﵽ����������ģʽ��Ч���������ַ��������̰߳�ȫ�ġ�
	private static class SingletonHolder{
        private static SingleTon4 instance=new SingleTon4();
    }
    private SingleTon4(){
        System.out.println("Singleton has loaded");
    }
    public static SingleTon4 getInstance(){
        return SingletonHolder.instance;
    }

}
