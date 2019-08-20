package swdo.syj.yayoung.dao;

import swdo.syj.yayoung.vo.TeacherVO;

public interface LoginMapper {

	public TeacherVO idcheck(String tc_id);

	public TeacherVO findId(TeacherVO vo);

	public String findPw(TeacherVO vo);

	public int UpdatePw(String tc_pw, String tc_id);

}
