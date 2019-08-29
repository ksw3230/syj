package swdo.syj.yayoung.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.IndexCardVO;

@Repository
public class VocaDao {

	@Autowired
	SqlSession session;
	
	/*
	 *  단어 세트
	 */
	public int insert(String st_id) {
		VocaMapper mapper = session.getMapper(VocaMapper.class);
		int cnt = mapper.insert(st_id);
		return cnt;
	}
	
	public int getMaxnumber(String st_id) {
		VocaMapper mapper = session.getMapper(VocaMapper.class);
		int maxnumber = mapper.getMaxnumber(st_id);
		return maxnumber;
	}
}
