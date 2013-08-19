/**
 *上海交大-鹏越惊虹
 */

package com.cqa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**  
 * @Title: App.java
 * @Package com.cqa.Cqanswer
 * @Description: TODO
 * @author 林超 
 * @date Aug 12, 2013 10:02:16 AM
 * @version V1.0  
 */
@Controller
@RequestMapping(value = "/")
public class Cqanswer {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "account/index";
	}

}
/**Code End*/