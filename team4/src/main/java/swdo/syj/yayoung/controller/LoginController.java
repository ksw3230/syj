/**
 * 로그인 컨트롤러
 * 우다슬
 * 2019.08.09
 */
package swdo.syj.yayoung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import swdo.syj.yayoung.dao.LoginDao;

@Controller
@RequestMapping("login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	LoginDao dao;
	
	// 선생님 로그인 폼으로 이동
	@RequestMapping(value="login_tc", method=RequestMethod.GET)
	public String loginForm_tc(){
			
		return "login/login_tc";
	}
	
	@RequestMapping(value="login_st", method=RequestMethod.GET)
	public String loginForm_st(){
		
		return "login/login_st";
	}
	
	
	
	
	
	
	
}