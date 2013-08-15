package com.cqa.sys.action;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.cqa.action.BaseAction;
import com.cqa.sys.service.SysUserService;

@Controller
@RequestMapping("/user")
public class SysUserAction extends BaseAction {

	@Override
	protected String getServiceBeanId() {
		return SysUserService.BEAN_ID;
	}

	@RequestMapping("/query")
	public ModelAndView handleRequest(HttpServletRequest request) throws Exception {
		
		logger.debug("SysUserAction exute...");
		SysUserService ss = (SysUserService) getService();
		ss.loadSysuser();
		return null;
	}
	

}
