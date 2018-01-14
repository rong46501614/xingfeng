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
    	
        Map<String,String> map = new HashMap<String,String>();
        map.put("hello", "world");
        map.put("xingfeng", "world");
//        String writeValueAsString = OBJECTMAPPER.writeValueAsString(map);
        exchange.getIn().setBody(map);
        
//        temporarilyRedirect(exchange,"localhost:7777/portalserver");
        //response.sendRedirect("/portalserver");
    }
    
    
    /** 
     * 永久重定向 
     * 代表永久性转移(Permanently Moved)。 
     */  
    private void permanentlyRedirect(Exchange exchange, String location)  
    {  
        exchange.getOut().setHeader(Exchange.HTTP_RESPONSE_CODE, 301);  
        exchange.getOut().setHeader("Location", location);  
    }  
      
    /** 
     * 临时重定向 
     * 代表暂时性转移(Temporarily Moved )。  
     */  
    private void temporarilyRedirect(Exchange exchange, String location)  
    {  
        exchange.getOut().setHeader(Exchange.HTTP_RESPONSE_CODE, 302);  
        exchange.getOut().setHeader("Location", location);  
    }  
}