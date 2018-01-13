package com.xingfeng.schedule;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.camel.CamelContext;
import org.apache.camel.Route;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Schedule {
	
	@Autowired
	private ApplicationContext applicationContext;
	
	
	@Scheduled(cron = "0/5 * * * * ?")
	public void schTest1() {
		
		CamelContext bean = (CamelContext) applicationContext.getBean("testCamelContext");
		
		Route route = bean.getRoute("xingfeng");
		
		Date date = new Date();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sim.format(date);
		System.out.println("这是spring定时器1，每五秒执行一次,当前时间：" + dateStr);
	}
}
