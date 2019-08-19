package swdo.syj.yayoung.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/*
 * 강의등록, 강의관리, 과제등록, 작문답변
 * 김성우 2019-08-19 
 * */

@Repository
public class LectureDao {

	@Autowired
	SqlSession session;
	
	
	
}
