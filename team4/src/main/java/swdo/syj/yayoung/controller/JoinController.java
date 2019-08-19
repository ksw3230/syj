package swdo.syj.yayoung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("join")
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	/*
	 * 선생님 가입 폼 이동
	 * */
	@RequestMapping(value="join_tc", method=RequestMethod.GET)
	public String loginForm_tc(){
		
		return "join/join_tc";
	}
	
	/*
	 * 학생 가입 폼 이동
	 * */
	@RequestMapping(value="join_st", method=RequestMethod.GET)
	public String loginForm_st(){
			
		return "join/join_st";
	}
	
	
}
