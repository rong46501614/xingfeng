package com.xingfeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/xingfeng")
public class Hello{
	
	@RequestMapping("/tianxia")
	private String xingfeng() {
		System.out.println("hello");
		return "newmain";
	}

}
