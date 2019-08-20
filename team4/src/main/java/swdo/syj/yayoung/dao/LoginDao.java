package swdo.syj.yayoung.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.StudentVO;
import swdo.syj.yayoung.vo.TeacherVO;

@Repository
public class LoginDao {
	
	@Autowired
	SqlSession session;

	/*
	 * 선생님 로그인 전 아이디 존재 확인
	 * */
	public TeacherVO idcheck_tc(String tc_id) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		TeacherVO vo = mapper.idcheck_tc(tc_id);
		return vo;
	}

	/*
	 * 선생님 아이디 찾기
	 * */
	public TeacherVO findId_tc(TeacherVO vo) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		TeacherVO find = mapper.findId_tc(vo);
		return find;
	}

	/*
	 * 선생님 비밀번호 찾기
	 * */
	public String findPw_tc(TeacherVO vo) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		String findPw = mapper.findPw_tc(vo);
		return findPw;
	}

	/*
	 * 선생님 비번 찾기 후 수정
	 * */
	public int UpdatePw_tc(String tc_pw, String tc_id) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		int cnt = mapper.UpdatePw_tc(tc_pw, tc_id);
		return cnt;
	}

	/*
	 * 학생 로그인 전 아이디 존재 확인
	 * */
	public StudentVO idcheck_st(String st_id) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		StudentVO vo = mapper.idcheck_st(st_id);
		return vo;
	}

	/*
	 * 학생 아이디 찾기
	 * */
	public StudentVO findId_st(StudentVO vo) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		StudentVO find = mapper.findId_st(vo);
		return find;
	}

	/*
	 * 학생 비밀번호 찾기
	 * */
	public String findPw_st(StudentVO vo) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		String findPw = mapper.findPw_st(vo);
		return findPw;
	}

	/*
	 * 학생 비번 찾기 후 수정
	 * */
	public int UpdatePw_st(String st_pw, String st_id) {
		LoginMapper mapper = session.getMapper(LoginMapper.class);
		int cnt = mapper.UpdatePw_st(st_pw, st_id);
		return cnt;
	}

}
