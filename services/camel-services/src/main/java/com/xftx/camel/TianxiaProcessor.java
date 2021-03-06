package com.xftx.camel;

import java.util.HashMap;
import java.util.Map;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.springframework.stereotype.Component;

@Component
public class TianxiaProcessor implements Processor{
	
    public void process(Exchange exchange) throws Exception {
        Map<String,String> map = new HashMap<String,String>();
        map.put("hello", "world");
        map.put("tianxia", "world");
        exchange.getIn().setBody(map);
    }
}