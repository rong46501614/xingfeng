package com.xingfeng.factory.factory1;

import com.xingfeng.object.UserProfile;

public class Test {

	public static void main(String[] args) {
		UserProfileFactory userProfileFactory= new UserProfileFactoryImpl();
		UserProfile userProfile = userProfileFactory.produceUserProfile();
		System.out.println(userProfile);
	}
}
