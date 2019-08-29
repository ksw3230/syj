package swdo.syj.yayoung.dao;

import java.util.ArrayList;
import java.util.HashMap;

import swdo.syj.yayoung.vo.Homework_mVO;
import swdo.syj.yayoung.vo.Homework_wVO;
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

	

	public int insertList(HashMap<String, Object> map);

	public ArrayList<Ins_class_vidVO> getVidList(int ins_num);


	public int insertQ(Homework_mVO vo);

	public ArrayList<Homework_mVO> getQList(int vid_num);

	public int insertQW(Homework_wVO vo);

	public ArrayList<Homework_wVO> getWList(int vid_num);

	
	
}
