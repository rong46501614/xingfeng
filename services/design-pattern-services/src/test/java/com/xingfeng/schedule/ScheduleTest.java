package com.xingfeng.schedule;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-beans.xml"})
public class ScheduleTest extends TestCase {

	@Test
	public void testSchTest1() {
		System.out.println("HELLO");
	}

}
