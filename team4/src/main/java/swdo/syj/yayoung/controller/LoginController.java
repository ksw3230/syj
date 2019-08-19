/**
 * 로그인 컨트롤러
 * 우다슬
 * 2019.08.09
 */
package swdo.syj.yayoung.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import swdo.syj.yayoung.dao.LoginDao;
import swdo.syj.yayoung.vo.TeacherVO;

@Controller
@RequestMapping("login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	LoginDao dao;
	
	/* 
	 * 선생님 로그인 폼으로 이동
	 * */
	@RequestMapping(value="login_tc", method=RequestMethod.GET)
	public String loginForm_tc(){
			
		return "login/login_tc";
	}
	
	/* 
	 * 선생님 로그인 성공 시 홈으로 이동
	 * 선생님 로그인 실패시 로그인 홈으로 이동
	 * */
	@RequestMapping(value="login_tc", method=RequestMethod.POST)
	public String login_tc(String tc_id, String tc_pw, HttpSession session, Model model){
				
		TeacherVO vo = dao.idcheck(tc_id);
		
		if (vo != null && tc_pw.equals(vo.getTc_pw()) && vo.getTc_check().equals("y")) {
			session.setAttribute("loginId_tc", vo.getTc_id());
			return "redirect:/";		
		}else {
			model.addAttribute("msg", "id나 pw가 일치하지 않거나 관리자의 승인을 받지 못 했습니다.");
		}
		
		return "login/login_tc";
	}
	
	/*
	 * 선생님 로그아웃	
	 * */
	@RequestMapping(value = "logout_tc", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";			
	}
	
	/*
	 * 선생님 아이디 찾기 폼
	 * */
	@RequestMapping(value="idFind_tc", method=RequestMethod.GET)
	public String idFindForm_tc(){		
		return "login/idFind_tc";
	}
	
	/*
	 * 선생님 아이디 찾기
	 * */
	@ResponseBody
	@RequestMapping(value="idFind_tc", method=RequestMethod.POST)
	public String idFind_tc(TeacherVO vo){
		TeacherVO find = dao.findId(vo);
		String FindId = find.getTc_id();
		return FindId;
	}
	
	/*
	 * 선생님 비밀번호 찾기 폼
	 * */
	@RequestMapping(value="pwFind_tc", method=RequestMethod.GET)
	public String pwFind_tc(){		
		return "login/pwFind_tc";
	}
	
	/* 
	 * 학생 로그인 폼으로 이동
	 * */
	@RequestMapping(value="login_st", method=RequestMethod.GET)
	public String loginForm_st(){
		
		return "login/login_st";
	}
	
	
	
	
	
	
	
}