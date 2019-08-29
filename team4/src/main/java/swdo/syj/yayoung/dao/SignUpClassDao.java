package swdo.syj.yayoung.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import swdo.syj.yayoung.vo.CouponVO;
import swdo.syj.yayoung.vo.Ins_classVO;

/*
 * 수강신청
 * 우다슬 2019-08-26 
 * */

@Repository
public class SignUpClassDao {

	@Autowired
	SqlSession session;

	/*
	 * 장바구니 담기
	 */
	public int insertBasket(HashMap<String, Object> map) {
		SignUpClassMapper mapper = session.getMapper(SignUpClassMapper.class);
		int cnt = mapper.insertBasket(map);
		return cnt;
	}

	/*
	 * 결제하기
	 */
	public int insertBuy(HashMap<String, Object> map) {
		SignUpClassMapper mapper = session.getMapper(SignUpClassMapper.class);
		int cnt = mapper.insertBuy(map);
		return cnt;
	}

	/*
	 * 쿠폰 리스트
	 */
	public ArrayList<CouponVO> couponList(String st_id) {
		SignUpClassMapper mapper = session.getMapper(SignUpClassMapper.class);
		ArrayList<CouponVO> list = mapper.couponList(st_id);
		return list;
	}
}
