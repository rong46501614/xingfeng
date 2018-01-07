package com.xingfeng.factory.factory1;

import com.xingfeng.object.UserProfile;

public class UserProfileFactoryImpl implements UserProfileFactory{

	public UserProfile produceUserProfile() {
		return new UserProfile();
	}

}
