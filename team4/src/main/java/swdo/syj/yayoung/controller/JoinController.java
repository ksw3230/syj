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
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String loginForm_tc(){
			
		return "join/join";
	}
	
}
