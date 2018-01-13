package com.xftx.camel;

import java.util.HashMap;
import java.util.Map;

import org.apache.camel.CamelContext;
import org.apache.camel.Endpoint;
import org.apache.camel.EndpointConfiguration;
import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.apache.camel.Route;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class FileConvertProcessor implements Processor{
	
	@Autowired
	private ApplicationContext applicationContext;
	
	private static final ObjectMapper OBJECTMAPPER = new ObjectMapper();
	
    public void process(Exchange exchange) throws Exception {
    	
    	CamelContext bean = (CamelContext) applicationContext.getBean("testCamelContext");
    	
    	Route route = bean.getRoute("tianxia");
    	
    	Endpoint endpoint = route.getEndpoint();
    	
    	EndpointConfiguration configuration = endpoint.getEndpointConfiguration();
    	
    	Object parameter = configuration.getParameter("authority");
    	
    	System.out.println(parameter);
    	
    	configuration.setParameter("authority", "localhost:9080");
    	
    	Object parameters = configuration.getParameter("authority");
    	
    	
    	configuration.getURI();
    	
    	System.out.println(parameters);
    	
        Map<String,String> map = new HashMap<String,String>();
        map.put("hello", "world");
        map.put("xingfeng", "world");
//        String writeValueAsString = OBJECTMAPPER.writeValueAsString(map);
        exchange.getIn().setBody(map);
    }
}