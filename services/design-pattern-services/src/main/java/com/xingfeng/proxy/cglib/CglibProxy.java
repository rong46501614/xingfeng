package com.xingfeng.proxy.cglib;

import java.lang.reflect.Method;

import com.xingfeng.proxy.service.Inform;

import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

public class CglibProxy implements MethodInterceptor{

	public Object intercept(Object o, Method method, Object[] args, MethodProxy methodProxy) throws Throwable {
		Inform.before();
        Object o1 = methodProxy.invokeSuper(o, args);  
        Inform.after();
        return o1;  
	}

}
