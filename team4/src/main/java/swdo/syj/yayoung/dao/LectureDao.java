package swdo.syj.yayoung.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.Ins_classVO;
import swdo.syj.yayoung.vo.Ins_class_vidVO;

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

	public Ins_classVO getOneVO(int ins_num) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		Ins_classVO vo = mapper.getOneVO(ins_num);
		return vo;
	}

	public int insert_vid(Ins_class_vidVO vo) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		int res = mapper.insert_vid(vo);
		return 0;
	}

	public int updateThumb(Ins_class_vidVO vo) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		int res = mapper.updateThumb(vo);
		return res;
	}


	// 모든 강의 부르기
	public ArrayList<Ins_classVO> classList() {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		ArrayList<Ins_classVO> list = mapper.classList();
		return list;
	}

	// 강의에 해당하는 선생님 이름 부르기
	public String getName(String tc_id) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		String name = mapper.getName(tc_id);
		return name;
	}

	// 결제하려는 강의 정보 부르기
	public Ins_classVO buy(int ins_num) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		Ins_classVO vo = mapper.buy(ins_num);
		return vo;
	}

	public int insertList(HashMap<String, Object> map) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		int res = mapper.insertList(map);
		return res;
	}

	public ArrayList<Ins_class_vidVO> getVidList(int ins_num) {
		LectureMapper mapper = session.getMapper(LectureMapper.class);
		ArrayList<Ins_class_vidVO> list = mapper.getVidList(ins_num);
		return list;
	}
	
	

	
}
