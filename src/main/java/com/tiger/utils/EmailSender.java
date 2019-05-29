package com.tiger.utils;

import java.util.HashSet;
import java.util.Properties;
import java.util.Set;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

//@Component
public class EmailSender extends Thread{
	private String emailName;
	private String tel;
	
	private final static JavaMailSenderImpl javaMailSender=new JavaMailSenderImpl();
	
	public static void  initial(){
		javaMailSender.setHost(PropertiesUtil.getPropertie("mail.host"));
		javaMailSender.setPassword(PropertiesUtil.getPropertie("mail.password"));
		javaMailSender.setProtocol(PropertiesUtil.getPropertie("mail.portocol"));
		javaMailSender.setUsername(PropertiesUtil.getPropertie("mail.username"));
		Properties properties=new Properties();
		properties.setProperty("mail.smtp.auth", PropertiesUtil.getPropertie("mail.smtp.auth"));
		properties.setProperty("mail.smtp.timeout", PropertiesUtil.getPropertie("mail.smtp.timeout"));
		properties.setProperty("mail.smtp.port", PropertiesUtil.getPropertie("mail.smtp.port"));
		javaMailSender.setJavaMailProperties(properties);
		javaMailSender.setDefaultEncoding("UTF-8");
	}
	
	public static void sendMail(SimpleEmail simpleEmail) {
		initial();
		try {
			MimeMessage message = javaMailSender.createMimeMessage();
			long a = System.currentTimeMillis();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					simpleEmail.isHasAttachment());
			messageHelper.setFrom(PropertiesUtil.getPropertie("mail.username"));
			messageHelper.setTo(simpleEmail.getToSet().toArray(
					new String[simpleEmail.getToSet().size()]));
			messageHelper.setSubject(simpleEmail.getSubject());
			messageHelper.setText(simpleEmail.getContent(),
					simpleEmail.isHtml());
			javaMailSender.send(message);

			System.out.println("发送完毕，耗时：" + (System.currentTimeMillis() - a)
					+ "毫秒！");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // TODO Auto-generated method stub

	}
	@Override
	public void run() {
		System.out.println("5秒之后将发送预约成功邮件！");
		//先休息5秒再发送
		try {
			Thread.sleep(5000l);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Send(this.emailName, this.tel);
		System.out.println("邮件发送完成！");
	};
	public void Send(String name,String tel){
		SimpleEmail simpleEmail=new SimpleEmail();
		simpleEmail.setContent("有新的预约消息/r/n预约人称呼："+name+"/r/n预约人号码："+tel);
		simpleEmail.setSubject("新预约提醒");
		Set<String> sets=new HashSet<String>();
		sets.add("sunjun@koolyun.com");
		simpleEmail.setToSet(sets);
		simpleEmail.setHtml(false);
		simpleEmail.setHasAttachment(false);
		sendMail(simpleEmail);
	}
	
	public static void main(String[] args) {
		SimpleEmail simpleEmail=new SimpleEmail();
		simpleEmail.setContent("这是一封测试邮件");
		simpleEmail.setSubject("wuzhuti");
		Set<String> sets=new HashSet<String>();
		sets.add("sunjun@koolyun.com");
		simpleEmail.setToSet(sets);
		simpleEmail.setHtml(false);
		simpleEmail.setHasAttachment(false);
		sendMail(simpleEmail);
	}

	public EmailSender(String emailName, String tel) {
		super();
		this.emailName = emailName;
		this.tel = tel;
	}

	public String getEmailName() {
		return emailName;
	}

	public void setEmailName(String emailName) {
		this.emailName = emailName;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public EmailSender() {
		super();
	}
	
	
}
