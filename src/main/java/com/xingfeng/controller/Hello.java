package com.xingfeng.controller;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.springframework.stereotype.Service;

@Service
public class Hello implements Processor{

	@Override
	public void process(Exchange arg0) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("hello");
	}

}
