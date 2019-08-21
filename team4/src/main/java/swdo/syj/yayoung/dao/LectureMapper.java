package swdo.syj.yayoung.dao;

import java.util.ArrayList;

import swdo.syj.yayoung.vo.Ins_classVO;

/*
 * 강의등록, 강의관리, 과제등록, 작문답변
 * 김성우 2019-08-19 
 * */

public interface LectureMapper {

	int insertins(Ins_classVO vo);

	ArrayList<Ins_classVO> getInsList(String tc_id);

	
	
}
