package com.xingfeng.proxy.dynamic;

import java.lang.reflect.Proxy;

import com.xingfeng.proxy.service.AccountService;
import com.xingfeng.proxy.service.AccountServiceImpl;

public class Test {

	public static void main(String[] args) {
		AccountService accountService = new AccountServiceImpl();
		AccountService proxy = 
				(AccountService) Proxy.newProxyInstance(
						accountService.getClass().getClassLoader(),
						accountService.getClass().getInterfaces(), 
						new DynamicProxy(accountService));
		proxy.say();
	}

}
