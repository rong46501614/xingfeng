package com.xingfeng.schedule;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class HelloSchedule implements Runnable{

	public void run() {
		Date date = new Date();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sim.format(date);
		System.out.println("这是spring定时器2，每五秒执行一次,当前时间：" + dateStr);
	}

}
