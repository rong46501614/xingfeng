package com.xingfeng.singleton;

public class SingleTon5 {
	
	private volatile static SingleTon5 instance;
	
    private SingleTon5(){
    }
    
    public static SingleTon5 getInstance(){
        if(instance==null){
            synchronized (SingleTon5.class){
                if(instance==null){
                    instance=new SingleTon5();
                }
            }
        }
        return instance;
    }

}
