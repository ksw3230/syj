package swdo.syj.yayoung.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import swdo.syj.yayoung.dao.VocaDao;
import swdo.syj.yayoung.vo.IndexCardVO;

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
	
	/* 
	 * 단어장 만들기 폼으로 이동
	 * */
	@RequestMapping(value="voca_make", method=RequestMethod.GET)
	public String voca_make(HttpSession session, Model model){
		String st_id = (String)session.getAttribute("loginId_st");
		int cnt = dao.insert(st_id);
		if (cnt != 0) {
			int maxnumber = dao.getMaxnumber(st_id);
			model.addAttribute("card_set_num", maxnumber);
			return "voca/voca_make";			
		}
		return "voca/voca_home";
	}
}
