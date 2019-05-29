package com.tiger.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import redis.clients.jedis.JedisPool;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-jedis.xml"})
public class SynchronizedJedisTest implements Runnable{
	@Autowired
	private JedisPool jedisPool;
	private static volatile Integer count=100;
	private static String key="Keys";
	@Override
	public void run() {
		// TODO Auto-generated method stub
		synchronized (this) {
			count--;
			System.out.println("sales one ticket,remain :"+count);
		}
	}
	public static void main(String[] args) {
		SynchronizedJedisTest jedi=new SynchronizedJedisTest();
		for(int i=0;i<20;i++){
			Thread thread=new Thread(jedi);
			thread.start();
		}
		
	}
	@Test
	public void putr(){
		System.out.println();
		jedisPool.getResource().set("hhh", "sunjun", "NX", "PX", 10000);
	}
	
	
	@Test
	public void putrss(){
		System.out.println();
//		jedisPool.getResource().set("hhh", "sunjun", "NX", "PX", 10000);
	}
	
}
