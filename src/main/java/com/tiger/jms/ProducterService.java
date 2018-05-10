package com.tiger.jms;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.junit.Test;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;


public class ProducterService {
	private JmsTemplate jmsTemplate;
	
	/**
	 * 向默认的队列发送消息
	 * @param msg
	 */
	public void sedMessage(final String msg){
		System.out.println("----------向队列中发送消息："+msg);
		jmsTemplate.send(jmsTemplate.getDefaultDestination(), new MessageCreator() {
			@Override
			public Message createMessage(Session session) throws JMSException {
				// TODO Auto-generated method stub
				return session.createTextMessage(msg);
			}
		});
	}
	@Test
	public void send(){
		String msg="i am the message";
		sedMessage(msg);
	}
	

	public void setJmsTemplate(JmsTemplate jmsTemplate) {
		this.jmsTemplate = jmsTemplate;
	}
	
}
