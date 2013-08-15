package com.cqa.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.cqa.util.UtilSpring;

public abstract class BaseAction{
	
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
//	public HttpServletRequest getRequest(){ 
//    	return ServletActionContext.getRequest();
//    }
//    
//    public HttpServletResponse getResponse(){
//    	return ServletActionContext.getResponse();
//    }
    
    protected Object getService(){ 
    	return UtilSpring.getBean(getServiceBeanId());
    }
    
//    protected String getSessionUserId(){
//    	return (String)getRequest().getSession().getAttribute(Constants.SESSION_KEY_USERID);
//    }
//    protected String getSessionUserName(){
//    	return (String)getRequest().getSession().getAttribute(Constants.SESSION_KEY_USERNAME);
//    }
//    protected String getSessionCustCode(){
//    	return (String)getRequest().getSession().getAttribute(Constants.SESSION_KEY_CUSTCODE);
//    }
    
    
	protected abstract String getServiceBeanId();
	
	
	
}
