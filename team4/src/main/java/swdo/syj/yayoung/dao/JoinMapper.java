package swdo.syj.yayoung.dao;

import swdo.syj.yayoung.vo.StudentVO;
import swdo.syj.yayoung.vo.TeacherVO;

public interface JoinMapper {

	//선생님 가입하기
	int insert_tc(TeacherVO tc);

	//학생 가입하기
	int insert_st(StudentVO st);

	//선생님 아이디 중복 학인
	String serchIdTc(String checkId);

	//학생 아이디 중복 확인
	String serchIdSt(String checkId);

}
