package com.xftx.camel;

import java.util.HashMap;
import java.util.Map;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.springframework.stereotype.Component;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class FileConvertProcessor implements Processor{
	
	private static final ObjectMapper OBJECTMAPPER = new ObjectMapper();
	
    public void process(Exchange exchange) throws Exception {
        Map<String,String> map = new HashMap<String,String>();
        map.put("hello", "world");
        map.put("xingfeng", "world");
//        String writeValueAsString = OBJECTMAPPER.writeValueAsString(map);
        exchange.getIn().setBody(map);
    }
}