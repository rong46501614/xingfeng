package com.xingfeng.proxy.cglib;

import com.xingfeng.proxy.service.AccountService;
import com.xingfeng.proxy.service.AccountServiceImpl;

import net.sf.cglib.proxy.Enhancer;

public class Test {

	public static void main(String[] args) {
		CglibProxy cglibProxy = new CglibProxy();  
		  
        Enhancer enhancer = new Enhancer();  
        enhancer.setSuperclass(AccountServiceImpl.class);  
        enhancer.setCallback(cglibProxy);
        
        AccountService proxy = (AccountService)enhancer.create();  
        proxy.say();
	}
}
