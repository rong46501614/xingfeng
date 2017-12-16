package com.xingfeng.controller;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;

public class Hello implements Processor{

	public void process(Exchange arg0) throws Exception {
		System.out.println("hello");
	}

}
