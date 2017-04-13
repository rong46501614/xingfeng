package com.xingfeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/XF")
public class RedirectController {
	@RequestMapping("/")
	public String init(){
		return "newmain";
	}
}
