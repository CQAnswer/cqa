package com.cqa.listener;

import javax.servlet.ServletContextEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.cqa.util.UtilSpring;

public class ContextLoaderListener extends org.springframework.web.context.ContextLoaderListener {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		super.contextDestroyed(event);
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		logger.debug("ContextLoaderListener........................init...");
		super.contextInitialized(event);
		UtilSpring.setApplicationContext(WebApplicationContextUtils
				.getRequiredWebApplicationContext(event.getServletContext()));
	}
}
