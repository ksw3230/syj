package swdo.syj.yayoung.dao;

import java.util.ArrayList;
import java.util.HashMap;

import swdo.syj.yayoung.vo.CouponVO;

/*
 * 수강신청
 * 우다슬 2019-08-26 
 * */
public interface SignUpClassMapper {

	public int insertBasket(HashMap<String, Object> map);

	public int insertBuy(HashMap<String, Object> map);

	public ArrayList<CouponVO> couponList(String st_id);




}
