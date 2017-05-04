package com.xingfeng.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RedirectController {
	@RequestMapping("/index")
	public String formainjsp() {
		return "main";
	}
	
	
	@RequestMapping("/getData")
	@ResponseBody
	public Map data(HttpServletRequest req) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("key", "123");
		return map;
	}
}
