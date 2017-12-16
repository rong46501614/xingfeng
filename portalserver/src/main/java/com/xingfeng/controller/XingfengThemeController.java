package com.xingfeng.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/init")
public class XingfengThemeController {
	
	
	
	@RequestMapping("/main")
	public String formainjsp(HttpServletRequest request) {
		List<String> al=new ArrayList<String>();
		al.add("xingfeng");
		al.add("xingfeng");
		al.add("xingfeng");
		al.add("xingfeng");
		
		request.setAttribute("al", al);
		return "newmain";
	}
}
