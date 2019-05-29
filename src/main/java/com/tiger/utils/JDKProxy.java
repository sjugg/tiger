package com.tiger.utils;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class JDKProxy implements InvocationHandler {
	private Object proxy;

	/**
	 * @param proxy
	 */
	public JDKProxy(Object proxy) {
		super();
		this.proxy = proxy;
	}

	@Override
	public Object invoke(Object proxy, Method method, Object[] arg)
			throws Throwable {
		// TODO Auto-generated method stub
		Object returnValue = method.invoke(method, arg);
		return returnValue;
	}

	public Object getProxyObject() {
		return Proxy.newProxyInstance(Thread.currentThread()
				.getContextClassLoader(), proxy.getClass().getInterfaces(),
				this);
	}

}
