package com.xingfeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class Test {
	
	
	@RequestMapping("/hello1")
	private void hello() {
		System.out.println("hello");
	}
}
