package swdo.syj.yayoung.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.StudentVO;
import swdo.syj.yayoung.vo.TeacherVO;

@Repository
public class JoinDao {
	
	@Autowired
	SqlSession session;
	private static final Logger logger = LoggerFactory.getLogger(JoinDao.class);

	/*
	 * 선생님 회원가입
	 * */
	public int insert_tc(TeacherVO tc) {
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int cnt = mapper.insert_tc(tc);
		return cnt;
	}

	/*
	 * 학생 회원가입
	 * */
	public int insert_st(StudentVO st) {
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int cnt = mapper.insert_st(st);
		return cnt;
	}

	
	/*
	 * 선생님 중복 확인
	 * */
	public String serchIdTc(String checkId) {
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		//logger.debug("다오 아이디 {}",checkId);
		String re = mapper.serchIdTc(checkId);
		//logger.debug("다오 아이디 결과값 {}",re);
		return re;
	}

	/*
	 * 학생 중복 확인
	 * */
	public String serchIdSt(String checkId) {
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		String re = mapper.serchIdSt(checkId);
		return re;
	}

}
