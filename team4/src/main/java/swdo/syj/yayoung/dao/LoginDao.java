package swdo.syj.yayoung.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.TeacherVO;

@Repository
public class LoginDao {
	
	@Autowired
	SqlSession session;

	/*
	 * 로그인 전 아이디 존재 확인
	 * */
	public TeacherVO idcheck(String tc_id) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		TeacherVO vo = mapper.idcheck(tc_id);
		return vo;
	}

	public TeacherVO findId(TeacherVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
