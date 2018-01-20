package com.xftx.camel;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

@Component
public class Test implements InitializingBean{

	public void afterPropertiesSet() throws Exception {
		System.out.println("Spring Start Done!");
	}

}
