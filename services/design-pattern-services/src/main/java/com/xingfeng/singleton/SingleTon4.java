package com.xingfeng.singleton;

public class SingleTon4 {
	//使用内部类的好处是，静态内部类不会在单例加载时就加载，而是在调用getInstance()方法时才进行加载，达到了类似懒汉模式的效果，而这种方法又是线程安全的。
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
