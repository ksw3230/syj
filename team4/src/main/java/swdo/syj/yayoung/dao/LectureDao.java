package swdo.syj.yayoung.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.Ins_classVO;

/*
 * 강의등록, 강의관리, 과제등록, 작문답변
 * 김성우 2019-08-19 
 * */

@Repository
public class LectureDao {

	@Autowired
	SqlSession session;

	public int insertins(Ins_classVO vo) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		int res = mapper.insertins(vo);
		return res;
	}

	public ArrayList<Ins_classVO> getInsList(String tc_id) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		ArrayList<Ins_classVO> list = mapper.getInsList(tc_id);
		return list;
	}
	
	
	
}
