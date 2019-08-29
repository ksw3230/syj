package swdo.syj.yayoung.dao;

import java.util.ArrayList;

import swdo.syj.yayoung.vo.Ins_classVO;
import swdo.syj.yayoung.vo.Ins_class_vidVO;

/*
 * 강의등록, 강의관리, 과제등록, 작문답변
 * 김성우 2019-08-19 
 * */

public interface LectureMapper {

	int insertins(Ins_classVO vo);

	public ArrayList<Ins_classVO> getInsList(String tc_id);

	public Ins_classVO getOneVO(int ins_num);

	public int insert_vid(Ins_class_vidVO vo);

	public int updateThumb(Ins_class_vidVO vo);

	public ArrayList<Ins_classVO> classList();

	public Ins_classVO buy(int ins_num);

	public String getName(String tc_id);

	

	
	
}
