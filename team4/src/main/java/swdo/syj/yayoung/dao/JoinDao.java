package swdo.syj.yayoung.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.TeacherVO;

@Repository
public class JoinDao {
	
	@Autowired
	SqlSession session;

	/*
	 * 선생님 회원가입
	 * */
	public int insert_tc(TeacherVO tc) {
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int cnt = mapper.insert_tc(tc);
		return cnt;
	}

}
