package com.tiger.test;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.tiger.utils.EmailSender;
import com.tiger.utils.SimpleEmail;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-redis.xml"})
public class redisTest {
	@Autowired
	RedisTemplate redisTemplate;
@Test
public void Send(){
	redisTemplate.opsForValue().set("sunjun", "king of the world");
	System.out.println("111111111111111111");
}
}
