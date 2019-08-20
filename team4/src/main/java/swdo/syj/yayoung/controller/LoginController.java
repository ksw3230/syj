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
	@RequestMapping(value="idFind_tc", method=RequestMethod.POST, produces="application/json;charset/UTF-8")
	public String idFind_tc(TeacherVO vo){
		TeacherVO find = dao.findId(vo);
		String FindId = find.getTc_id();
		return FindId;
	}
	
	/*
	 * 아이디를 찾은 후 선생님 비밀번호 찾기 폼
	 * vo를 모델 담기(아이디, 이름, 생년월일, 이메일) 
	 * */
	@RequestMapping(value="pwFindForm_tc", method=RequestMethod.POST)
	public String pwFindForm_tc(TeacherVO vo, Model model){
		model.addAttribute("teacher", vo);
		logger.debug(vo.toString());
		return "login/pwFind_tc";
	}
	
	/*
	 * 바로 비밀번호 찾기 클릭 시 선생님 비밀번호 찾기 폼
	 * */
	@RequestMapping(value="pwFindForm_tc", method=RequestMethod.GET)
	public String pwFindForm_tc(){
		return "login/pwFind_tc";
	}
	
	/*
	 * 선생님 비밀번호 찾기
	 * */
	@RequestMapping(value="pwFind_tc", method=RequestMethod.POST)
	public String pwFind_tc(TeacherVO vo, Model model){
		String findPw = dao.findPw(vo);
		if (findPw != null) {
			/*	비밀번호 수정 폼으로 이동*/
			model.addAttribute("teacher", vo);
			return "login/pwUpdate_tc";			
		}
		model.addAttribute("msg", "해당 정보에 일치하는 비밀번호가 존재하지 않습니다.");
		return "login/pwFind_tc";
	}
	
	/*
	 * 선생님 비밀번호 수정
	 * */
	@RequestMapping(value="pwUpdate_tc", method=RequestMethod.POST)
	public String pwUpdate_tc(String tc_pw, String tc_id, Model model){
		int cnt = dao.UpdatePw(tc_pw, tc_id);
		if (cnt != 0) {
			model.addAttribute("close", "close");
			return "login/login_tc";
		}
		return "login/pwUpdate_tc";
	}
	
	/* 
	 * 학생 로그인 폼으로 이동
	 * */
	@RequestMapping(value="login_st", method=RequestMethod.GET)
	public String loginForm_st(){
		
		return "login/login_st";
	}
	
	
	
	
	
	
	
}