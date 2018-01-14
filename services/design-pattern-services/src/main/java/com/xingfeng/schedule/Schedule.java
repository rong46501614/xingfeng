package com.xingfeng.schedule;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Schedule {
	
	@Scheduled(cron = "0 0 0/2 * * ?")
	public void schTest1() {
		Date date = new Date();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sim.format(date);
		System.out.println("����spring��ʱ��1��ÿ����ִ��һ��,��ǰʱ�䣺" + dateStr);
	}
}
