package com.xingfeng.factory.factory2;

import com.xingfeng.object.UserProfile;

public class UserProfileFactory implements ObjectFactory{

	public Object produceObject() {
		return new UserProfile();
	}

}
