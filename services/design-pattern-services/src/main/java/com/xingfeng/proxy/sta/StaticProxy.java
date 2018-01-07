package com.xingfeng.proxy.sta;

import com.xingfeng.proxy.service.Inform;
import com.xingfeng.proxy.service.AccountService;
import com.xingfeng.proxy.service.AccountServiceImpl;

public class StaticProxy {
	
	private AccountService accountService = new AccountServiceImpl();
	
	public void proxy(){
		Inform.before();
		accountService.say();
		Inform.after();
	}
	
}
