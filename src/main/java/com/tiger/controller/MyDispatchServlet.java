package com.tiger.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.util.UrlPathHelper;

public class MyDispatchServlet extends DispatcherServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private static final UrlPathHelper urlPathHelper = new UrlPathHelper();  
	@Override
	protected void noHandlerFound(HttpServletRequest request,HttpServletResponse response) throws Exception {
		  if (pageNotFoundLogger.isWarnEnabled()) {  
	            String requestUri = urlPathHelper.getRequestUri(request);  
	            pageNotFoundLogger.warn("No mapping found for HTTP request with URI [" + requestUri +  
	                    "] in DispatcherServlet with name '" + getServletName() + "'");  
	        }  
	      
       response.sendRedirect(request.getContextPath() + "/notFound");
	}
}
/*@Override
2     protected void noHandlerFound(HttpServletRequest request,
3                                   HttpServletResponse response) throws Exception {
4         System.out.println("successful execute...");
5         response.sendRedirect(request.getContextPath() + "/notFound");
6     }
7 
     @RequestMapping("/notFound")
     public String test2(){
           System.out.println("successful...");
           return "404";
     }
复制代码*/