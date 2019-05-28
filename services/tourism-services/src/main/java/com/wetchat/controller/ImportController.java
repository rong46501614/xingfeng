package com.wetchat.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ImportController {
	
	@RequestMapping("/importWetChat")
	@ResponseBody
	public String importWetChat(String signature,String timestamp,String nonce,String echostr) {
		String[] str = { "xftx_rex", timestamp, nonce };  
	    Arrays.sort(str); // �ֵ�������  
	    String bigStr = str[0] + str[1] + str[2];  
	    // SHA1����  
	    String digest = SHA1.encode(bigStr);
	 
	    // ȷ����������΢��  
	    if (digest.equals(signature)) {  
	        return echostr;  
	    }  
	    return "error";
	}

}

