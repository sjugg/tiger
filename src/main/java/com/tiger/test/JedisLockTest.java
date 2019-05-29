package com.tiger.test;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-jedis.xml"})
public class JedisLockTest implements Lock,Runnable{

	private static Integer count=100;
	private Lock lock=new ReentrantLock();
	@Override
	public void run() {
		// TODO Auto-generated method stub
			try {
				lock.lock();
				count--;
				System.out.println("sales one ticket,remain :"+count);
			} catch (Exception e) {
				// TODO: handle exception
			}finally{
				lock.unlock();
			}
	}
	public static void main(String[] args) {
		JedisLockTest jedi=new JedisLockTest();
		for(int i=0;i<20;i++){
			Thread thread=new Thread(jedi);
			thread.start();
		}
		
	}
	@Override
	public void lock() {
		// TODO Auto-generated method stub
	}

	@Override
	public void lockInterruptibly() throws InterruptedException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Condition newCondition() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean tryLock() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean tryLock(long arg0, TimeUnit arg1)
			throws InterruptedException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void unlock() {
		// TODO Auto-generated method stub
		
	}

}
