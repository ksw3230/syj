package swdo.syj.yayoung.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import swdo.syj.yayoung.file.FileService;
import swdo.syj.yayoung.vo.TeacherVO;
import swdo.syj.yayoung.dao.JoinDao;

@Controller
@RequestMapping("join")
public class JoinController {

	@Autowired
	JoinDao dao;
	
	final String uploadPath_tc = "/memberfile/teacher";	//선생님 파일 업로드 경로
	
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
	
	/*
	 * 선생님 회원가입
	 * */
	@RequestMapping(value = "/insert_tc", method = RequestMethod.POST)
	public String insert_tc(
			TeacherVO tc
			, Model model
			, HttpSession session
			, MultipartFile tc_picname) {
				//MultipartFile 객체를 통해 파일을 받음
		
	/*	
		logger.debug("입력받은값: {}", tc);
		logger.debug(tc_picname.getContentType());
		logger.debug(tc_picname.getOriginalFilename());
		logger.debug("" + tc_picname.getSize());
		logger.debug("" + tc_picname.isEmpty());
		
		*/
		
		//첨부파일이 있는 경우 지정된 경로에 저장하고, 원본 파일명과 저장된 파일명을 Board객체에 세팅
		if (tc_picname != null && !tc_picname.isEmpty()) {	//파일이 존재하면 false
			String savedfile = FileService.saveFile(tc_picname, uploadPath_tc);	//파일의 정보와 그 것을 savedfile에 카피함
			tc.setTc_picname(tc_picname.getOriginalFilename());	// db정보에 담아서
			tc.setTc_savedpicid(savedfile);	//board에 저장
		}
		
		System.out.println(dao);
		System.out.println(tc);
		int cnt = dao.insert_tc(tc);
		
		if (cnt != 1) {
			model.addAttribute("msg", "글을 저장에 실패했습니다.");
			return "redirect:join_tc";
		}
		model.addAttribute("msg", "글을 저장했습니다.");
		
		return "redirect:/";
//		return "redirect:/boardlist";
			//는  www.naver/board/boardlist가 아니라 www.naver/boardlist로 감
	}
	
	
}
