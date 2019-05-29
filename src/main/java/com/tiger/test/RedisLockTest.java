package com.tiger.test;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;



@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-jedis.xml"})
public class RedisLockTest implements Lock{
	@Autowired
	private JedisConnectionFactory jedisPool;
	
	private ThreadLocal<Jedis> threadLoacal=new ThreadLocal<Jedis>();
	
	private int count=100;
	/*@Test
	public void putr(){
		System.out.println();
//		RedisLockTest redisLockTest=new RedisLockTest();
//		redisLockTest.run();
		jedisPool.getResource().set("hhh", "sunjun", "NX", "PX", 10000);
	}*/
	
	/*private static Integer count=100;
	@Override
	public void run() {
		// TODO Auto-generated method stub
			try {
				lock();
				count--;
				System.out.println("sales one ticket,remain :"+count);
			} catch (Exception e) {
				// TODO: handle exception
			}finally{
//				unlock();
			}
	}*/
/*	@Test
	public  void mains() {
		System.out.println("ssss");
//		jedisPool.getResource().set("hhh", "sunjun", "NX", "PX", 1000);
//		System.out.println(jedisPool.getResource().get("hhh"));
		RedisLockTest jedi=new RedisLockTest();
		for(int i=0;i<1;i++){
			Thread thread=new Thread(jedi);
			thread.run();
		}
		
	}*/
	@Override
	public void lock() {
		// TODO Auto-generated method stub
		while(tryLock()){
			System.out.println("trylock done");
			try {
				System.out.println("get locked!");
				Thread.sleep(1000l);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		lock();
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
		System.out.println("do try lock");
		Jedis jedis=jedisPool.getConnection().getNativeConnection();
		threadLoacal.set(jedis);
		String result=jedis.set("hhh", "sunjun", "NX", "PX", 1000);
		if("OK".equals(result)){
			return true;
		}
		System.out.println("trylock over");
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
		System.out.println("try unlock");
		String script=" if redis.call('get', KEYS[1]) == ARGV[1] then return redis.call('del', KEYS[1]) else return 0 end ";
//		jedisPool.getResource().eval(script, Collections.singletonList("hhh"), Collections.singletonList("sunjun"));
		Jedis jedis=threadLoacal.get();
		List<String> list=Arrays.asList("hhh");
		List<String> list2=Arrays.asList("sunjun");
		jedis.eval(script, list, list2);
	}

}
