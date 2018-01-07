package com.xingfeng.proxy.dynamic;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

import com.xingfeng.proxy.service.Inform;

public class DynamicProxy implements InvocationHandler{
	
	private Object target; 
	
	public DynamicProxy(Object target) {  
        super();  
        this.target = target;
    }

	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		Inform.before();
		Object result = method.invoke(target, args);
		Inform.after();
		return result;
	}

}
