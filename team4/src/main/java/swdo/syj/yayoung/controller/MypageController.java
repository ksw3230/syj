package swdo.syj.yayoung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Mypage")
public class MypageController {

	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	/*
	 * 마이페이지로 이동
	 * */
	@RequestMapping(value="MyPage", method=RequestMethod.GET)
	public String MyPage(){
		
		return "mypage/myPage";
	}
}
