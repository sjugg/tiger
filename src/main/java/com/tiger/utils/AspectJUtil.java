package com.tiger.utils;

import java.util.Arrays;
import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
@Aspect
@Component
public class AspectJUtil {
	
	Logger logger=LoggerFactory.getLogger(AspectJUtil.class);
	
	@Pointcut("execution(* com.tiger.dao.*.*(..))")
	public void aspectPoint(){
		
	}
	@Before("aspectPoint()")
	public void beforePoint(JoinPoint joinPoint){
		String method=joinPoint.getSignature().getName();
		logger.info("系统发起方法调用  方法名为："+method);
		List<Object> list=Arrays.asList(joinPoint.getArgs());
		logger.info("系统发起方法调用  参数为："+"<"+list+">");
	}
	/**
     * 异常通知（方法发生异常执行的代码）
     * 可以访问到异常对象；且可以指定在出现特定异常时执行的代码
     * @param joinPoint
     * @param ex
     */
    @AfterThrowing(value="aspectPoint()",throwing="ex")
    public void afterThrowingMethod(JoinPoint joinPoint,Exception ex){
        String methodName = joinPoint.getSignature().getName();
        logger.info("系统发起方法调用  方法名为："+methodName +"出错，异常信息为 "+ex.toString());
        System.out.println("this method "+methodName+" end.ex message<"+ex+">");
    }
}
