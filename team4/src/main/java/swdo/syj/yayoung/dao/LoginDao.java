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

	/*
	 * 선생님 아이디 찾기
	 * */
	public TeacherVO findId(TeacherVO vo) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		TeacherVO find = mapper.findId(vo);
		return find;
	}

	/*
	 * 선생님 아이디 찾기
	 * */
	public String findPw(TeacherVO vo) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		String findPw = mapper.findPw(vo);
		return findPw;
	}

	/*
	 * 선생님 비번 찾기 후 수정
	 * */
	public int UpdatePw(String tc_pw, String tc_id) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		int cnt = mapper.UpdatePw(tc_pw, tc_id);
		return cnt;
	}

}
