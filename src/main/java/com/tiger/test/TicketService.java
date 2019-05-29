package com.tiger.test;

import java.io.IOException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.experimental.theories.suppliers.TestedOn;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/*@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-jedis.xml"})*/
public class TicketService {
	private RedisLockTest lock=new RedisLockTest();
	private int count=100;
	
	@Test
	public void TicketService() throws InterruptedException {
		// TODO Auto-generated constructor stub
		ticketRunnable tickrunner=new ticketRunnable();
		Thread thread=new Thread(tickrunner,"windows A");
		Thread thread1=new Thread(tickrunner,"windows B");
		Thread thread2=new Thread(tickrunner,"windows C");
		Thread thread3=new Thread(tickrunner,"windows D");
		
		thread.start();
		thread1.start();
		thread2.start();
		thread3.start();
		
//		Thread.currentThread().join();
	}
	public class ticketRunnable implements Runnable{
		
		@Override
		public void run() {
			System.out.println(Thread.currentThread().getName()+"  start "+count);
			// TODO Auto-generated method stub
			if(count>0){
				System.out.println(Thread.currentThread().getName()+"  really  start"+count);
				lock.tryLock();
				try {
					lock.lock();
					System.out.println(Thread.currentThread().getName()+" now is number :"+(count--));
				} catch (Exception e) {
					// TODO: handle exception
					System.out.println("something wrong ");
				}finally{
					lock.unlock();
				}
				
			}
		}
		
	}
}
