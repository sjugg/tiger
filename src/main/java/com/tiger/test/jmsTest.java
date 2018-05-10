package com.tiger.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.tiger.jms.ProducterService;
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {
        "classpath:spring-jms.xml"})
public class jmsTest {
	 @Autowired
	 @Qualifier("producterService")
	 private ProducterService producterService;
	 
	 @Test
	 public void send(){
		 String msg="mmpmmp";
		 producterService.sedMessage(msg);
	 }
}
