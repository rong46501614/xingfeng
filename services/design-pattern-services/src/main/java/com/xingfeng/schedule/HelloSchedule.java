package com.xingfeng.schedule;

import org.springframework.stereotype.Component;

@Component
public class HelloSchedule implements Runnable{

	public void run() {
		System.out.println("hello");
	}

}
