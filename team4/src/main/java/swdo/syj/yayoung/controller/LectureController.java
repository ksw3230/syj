package swdo.syj.yayoung.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
/*
 * 강의등록, 강의관리, 과제등록, 작문답변
 * 김성우 2019-08-19 
 * */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import swdo.syj.yayoung.dao.LectureDao;
import swdo.syj.yayoung.vo.Ins_classVO;

@Controller
@RequestMapping("lecture")
public class LectureController {

	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@Autowired
	LectureDao dao;
	
	/*
	 * 강의 등록 페이지 이동
	 */
	@RequestMapping(value="insertClass", method=RequestMethod.GET )
	public String insClass(Model model, HttpSession session){
		
		String tc_id = (String) session.getAttribute("loginId_tc");
		
		ArrayList<Ins_classVO> list = dao.getInsList(tc_id);
		
		model.addAttribute("insList", list);
		
		return "lecture/insForm";
	}
	
	/*
	 * 강의등록 폼 열기
	 */
	@RequestMapping(value="insertForm", method=RequestMethod.GET )
	public String gotoinsert(){
		return "lecture/insertins";
	}
	 
	/*
	 * 강의 등록
	 */
	@RequestMapping(value="insertins", method=RequestMethod.POST)
	public String insertins(Ins_classVO vo, Model model, HttpSession session){
		String tc_id = (String) session.getAttribute("loginId_tc");
		vo.setTc_id(tc_id);
		int res = dao.insertins(vo);
		if(res == 1){
			model.addAttribute("ok", "ok");
		} else {
			model.addAttribute("msg", "강의 등록 실패");
		}
		return "lecture/insertins";
	}
	
	
	
	
}
