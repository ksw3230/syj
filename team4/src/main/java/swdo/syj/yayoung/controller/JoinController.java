package swdo.syj.yayoung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import swdo.syj.yayoung.dao.JoinDao;
import swdo.syj.yayoung.file.FileService;
import swdo.syj.yayoung.vo.TeacherVO;

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
			, MultipartFile pic
			) {
				//MultipartFile 객체를 통해 파일을 받음
		
		logger.debug("파일: {}", pic);
		
		logger.debug(pic.getContentType());
		logger.debug(pic.getOriginalFilename());
		logger.debug("" + pic.getSize());
		logger.debug("" + pic.isEmpty());
		
		
		
		//첨부파일이 있는 경우 지정된 경로에 저장하고, 원본 파일명과 저장된 파일명을 Board객체에 세팅
		if (pic != null && !pic.isEmpty()) {	//파일이 존재하면 false
			String savedfile = FileService.saveFile(pic, uploadPath_tc);	//파일의 정보와 그 것을 savedfile에 카피함
			tc.setTc_picname(pic.getOriginalFilename());	// db정보에 담아서
			tc.setTc_savedpicid(savedfile);	//board에 저장
		}
		
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
