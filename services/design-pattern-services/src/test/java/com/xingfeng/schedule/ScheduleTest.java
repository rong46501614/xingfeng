package com.xingfeng.schedule;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)//��ʾ����JUnit4���в���
@ContextConfiguration(locations={"classpath:spring-beans.xml"})//����spring�����ļ�
public class ScheduleTest extends TestCase {

	public void testSchTest1() {
		System.out.println("HELLO");
	}

}
