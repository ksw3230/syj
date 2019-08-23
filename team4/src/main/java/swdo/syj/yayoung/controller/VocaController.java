package swdo.syj.yayoung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import swdo.syj.yayoung.dao.VocaDao;

@Controller
@RequestMapping("voca")
public class VocaController {

	private static final Logger logger = LoggerFactory.getLogger(VocaController.class);
	
	@Autowired
	VocaDao dao;
	
	/* 
	 * 단어장 홈 폼으로 이동
	 * */
	@RequestMapping(value="voca_home", method=RequestMethod.GET)
	public String voca_home(){
			
		return "voca/voca_home";
	}
}
