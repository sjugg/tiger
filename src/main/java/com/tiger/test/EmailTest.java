package com.tiger.test;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.tiger.utils.EmailSender;
import com.tiger.utils.SimpleEmail;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-mail.xml","classpath:spring-mail.xml"})
public class EmailTest {
@Test
public void Send(){
	SimpleEmail simpleEmail=new SimpleEmail();
	simpleEmail.setContent("这是一封测试邮件");
	simpleEmail.setSubject("wuzhuti");
	Set<String> sets=new HashSet<String>();
	sets.add("sunjun@koolyun.com");
	simpleEmail.setToSet(sets);
	simpleEmail.setHtml(false);
	simpleEmail.setHasAttachment(false);
//	new EmailSender().sendMail(simpleEmail);
}
}
