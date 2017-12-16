package com.xingfeng.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReadFileList {

	@RequestMapping("/getFileListOne")
	@ResponseBody
	public List<String> getFileListOne() {
		File file = new File("G:/folder1");
		File[] fileList = file.listFiles();
		List<String> list = new ArrayList();
		for (int i = 0; i < fileList.length; i++) {
			list.add(fileList[i].getName());
		}
		return list;
	}
	
	@RequestMapping("/getFileListTwo")
	@ResponseBody
	public List<String> getFileListTwo() {
		File file = new File("G:/folder2");
		File[] fileList = file.listFiles();
		List<String> list = new ArrayList();
		for (int i = 0; i < fileList.length; i++) {
			list.add(fileList[i].getName());
		}
		return list;
	}
}
