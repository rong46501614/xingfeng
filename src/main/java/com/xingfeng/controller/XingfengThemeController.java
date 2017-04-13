package com.xingfeng.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xingfeng.form.XftxItemForm;
import com.xingfeng.form.XftxThemeForm;
import com.xingfeng.service.IXftxItemService;
import com.xingfeng.service.IXftxThemeService;
import javax.servlet.http.HttpServletRequest;;

@RequestMapping("/init")
public class XingfengThemeController {
	
	@Autowired
	private IXftxThemeService iXftxThemeService;
	
	@Autowired
	private IXftxItemService iXftxItemService;
	
	@RequestMapping("/main")
	public String formainjsp(HttpServletRequest request) {
		XftxThemeForm xftxThemeForm;
		List<XftxThemeForm> list=iXftxThemeService.findObjectAll();
		ArrayList<XftxThemeForm> al=new ArrayList<XftxThemeForm>();
		for (int i = 0; i < list.size(); i++) {
			xftxThemeForm=list.get(i);
			al.add(xftxThemeForm);
		}
		request.setAttribute("al", al);
		List<XftxItemForm> listXftxItemForm=iXftxItemService.findXftxItemByTime();
		request.setAttribute("listXftxItemForm", listXftxItemForm);
		return "newmain";
	}
}
