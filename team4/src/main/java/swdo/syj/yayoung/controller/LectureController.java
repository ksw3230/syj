package swdo.syj.yayoung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/*
 * 강의등록, 강의관리, 과제등록, 작문답변
 * 김성우 2019-08-19 
 * */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import swdo.syj.yayoung.dao.LectureDao;

@Controller
@RequestMapping("lecture")
public class LectureController {

	private static final Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@Autowired
	LectureDao dao;
	
	@RequestMapping(value="insertClass", method=RequestMethod.GET )
	public String insClass(){
		return "lecture/insForm";
	}
	 
	
	
	
}
