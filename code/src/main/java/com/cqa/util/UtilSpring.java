package com.cqa.util;

import org.springframework.context.ApplicationContext;

public class UtilSpring {
    private static ApplicationContext context = null;
	
	public static Object getBean(String beanId) {
		return context.getBean(beanId);
	}
	
	public static void setApplicationContext(ApplicationContext ac){
		context = ac;
	}
	
	public static ApplicationContext getApplicationContext(){
		return context;
	}
}
