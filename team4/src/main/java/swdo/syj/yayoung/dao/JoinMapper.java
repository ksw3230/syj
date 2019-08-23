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

	//선생님 정보 불러오기
	TeacherVO getTeacher(String tc_id);

	//선생님 정보 수정 저장
	int update_tc(TeacherVO tc);

	//선생님 정보 수정 사진 삭제
	int deletefileTcPic(TeacherVO tc);

	//학생 정보 불러오기
	StudentVO getStudent(String st_id);

	//학생 개인 정보 저장
	int update_st(StudentVO st);

	//선생님 정보 수정 사진 삭제
	int deletefileStPic(StudentVO st);

}
