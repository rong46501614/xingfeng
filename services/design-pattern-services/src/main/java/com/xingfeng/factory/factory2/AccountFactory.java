package com.xingfeng.factory.factory2;

import com.xingfeng.object.Account;

public class AccountFactory implements ObjectFactory{

	public Object produceObject() {
		return new Account();
	}

}
