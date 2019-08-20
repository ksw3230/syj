package swdo.syj.yayoung.dao;

import swdo.syj.yayoung.vo.StudentVO;
import swdo.syj.yayoung.vo.TeacherVO;

public interface LoginMapper {

	public TeacherVO idcheck_tc(String tc_id);

	public TeacherVO findId_tc(TeacherVO vo);

	public String findPw_tc(TeacherVO vo);

	public int UpdatePw_tc(String tc_pw, String tc_id);

	public StudentVO idcheck_st(String st_id);

	public StudentVO findId_st(StudentVO vo);

	public String findPw_st(StudentVO vo);

	public int UpdatePw_st(String st_pw, String st_id);

	

}
