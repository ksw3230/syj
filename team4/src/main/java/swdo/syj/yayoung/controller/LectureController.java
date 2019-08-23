package swdo.syj.yayoung.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.MultipartFilter;

import swdo.syj.yayoung.dao.LectureDao;
import swdo.syj.yayoung.file.FileService;
import swdo.syj.yayoung.file.Thumbnail;
import swdo.syj.yayoung.vo.Ins_classVO;
import swdo.syj.yayoung.vo.Ins_class_vidVO;

@Controller
@RequestMapping("lecture")
public class LectureController {

	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@Autowired
	LectureDao dao;
	
	final String uploadPath = "/project/syj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/team4/resources/videofiles/";	//동영상 업로드 경로
	
	/*
	 * 강의 등록 페이지 이동
	 */
	@RequestMapping(value="insertClass", method=RequestMethod.GET )
	public String insClass(Model model, HttpSession session){
		
		String tc_id = (String) session.getAttribute("loginId_tc");
		
		logger.debug(tc_id);
		
		ArrayList<Ins_classVO> list = dao.getInsList(tc_id);
		
		logger.debug(list.toString());
		
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
	/*
	 * 비디오 올리는 화면으로
	 */
	@RequestMapping(value="insertVid", method=RequestMethod.GET)
	public String insertvid(int ins_num, Model model){
		Ins_classVO vo = dao.getOneVO(ins_num);
		model.addAttribute("vo", vo);
		return "lecture/insertvid";
	}
	
	/*
	 * 비디오 올리기
	 */
	@RequestMapping(value="fileUpload", method=RequestMethod.POST)
	public String fileUpload (int ins_num, MultipartFile vid[], Model model, HttpServletRequest request){
		
		
		
		Ins_class_vidVO vo = new Ins_class_vidVO();
		logger.debug(ins_num+""); 
		for(int i=0; i < vid.length; i++){
			if(vid[i].isEmpty()){
				break;
			}
			logger.debug(vid[i].getContentType());
			logger.debug(vid[i].getOriginalFilename());
			logger.debug("" + vid[i].getSize());
			logger.debug("" + vid[i].isEmpty());
		
			vo.setVid_title(i+"");
			vo.setVid_desc(i+"");
			vo.setIns_num(ins_num);
			
			if (vid[i] != null && !vid[i].isEmpty()) {	//파일이 존재하면 false
				String savedfile = FileService.saveFile(vid[i], uploadPath);	//파일의 정보와 그 것을 savedfile에 카피함
				vo.setVid_vidname(vid[i].getOriginalFilename());	// db정보에 담아서
				vo.setVid_vidsavename(savedfile);	//board에 저장
			}
			
			if(i==0){
				int res = dao.updateThumb(vo);
			}
				
			
			int cnt = dao.insert_vid(vo);
		}

	
		
		model.addAttribute("msg", "비디오 등록 완료");
	
		return "lecture/insertvid";
		
	}
	/*
	 * 강의 디테일 페이지 이동
	 */
	@RequestMapping(value="details", method=RequestMethod.GET)
	public String details(){
		return "lecture/details";
	}
	
	@RequestMapping(value="insertHW", method=RequestMethod.GET)
	public String goHomework(){
		return "lecture/HWForm";
	}
	
	
}
