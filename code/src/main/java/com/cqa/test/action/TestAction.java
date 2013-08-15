package com.cqa.test.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cqa.action.BaseAction;
import com.cqa.sys.service.SysUserService;

@Controller
public class TestAction extends BaseAction {

	@Override
	protected String getServiceBeanId() {
		return SysUserService.BEAN_ID;
	}

	@RequestMapping("/test")
	public String excute(HttpServletRequest request) throws Exception {
		logger.debug("test action excute...");
		return "/index.jsp";
	}
	

}
