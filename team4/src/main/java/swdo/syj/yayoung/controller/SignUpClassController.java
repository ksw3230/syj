package swdo.syj.yayoung.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import swdo.syj.yayoung.dao.LectureDao;
import swdo.syj.yayoung.dao.SignUpClassDao;
import swdo.syj.yayoung.vo.CouponVO;
import swdo.syj.yayoung.vo.Ins_classVO;

/*
 * 수강신청
 * 우다슬 2019-08-26 
 * */

@Controller
@RequestMapping("suc")
public class SignUpClassController {

	private static final Logger logger = LoggerFactory.getLogger(SignUpClassController.class);
	
	@Autowired
	SignUpClassDao sucdao;
	@Autowired
	LectureDao dao;
	
	/*
	 * 검색 메인 페이지 이동
	 */
	@RequestMapping(value="classList", method=RequestMethod.GET )
	public String classList(Model model){
	
		// 강사들이 등록해 놓은 모든 강의 가져오기
		ArrayList<Ins_classVO> list = dao.classList();
		
		for(Ins_classVO vo:list){
			String name = dao.getName(vo.getTc_id());
			logger.debug(name);
			vo.setTc_name(name);
		}
		model.addAttribute("list", list);
		return "suc/classList";
	
	}
	
	/*
	 * 장바구니 담기
	 * 로그인 인터셉터 필요
	 */
	@ResponseBody
	@RequestMapping(value="basket", method=RequestMethod.GET )
	public void basket(int ins_num, HttpSession session){
		String st_id = (String)session.getAttribute("loginId_st");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ins_num", ins_num);
		map.put("st_id", st_id);
		int cnt = sucdao.insertBasket(map);
	}
	
	/*
	 * 결제하기 폼
	 */
	@RequestMapping(value="BuyForm", method=RequestMethod.GET )
	public String sucbuyForm(int ins_num, Model model){
		// 결제하려는 강의 정보 부르기
		Ins_classVO vo = dao.buy(ins_num);
		model.addAttribute("vo", vo);
		return "suc/BuyForm";	
	}
	
	/*
	 * 결제하기
	 */
	@RequestMapping(value="buy", method=RequestMethod.POST)
	public String buy(int ins_num, HttpSession session, Model model){
		String st_id = (String)session.getAttribute("loginId_st");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ins_num", ins_num);
		map.put("st_id", st_id);
		int cnt = sucdao.insertBuy(map);
		if (cnt != 0) {
			model.addAttribute("close", "close");
		}
		return "suc/BuyForm";
	}
	
	/*
	 * 쿠폰 폼
	 */
	@RequestMapping(value="couponForm", method=RequestMethod.GET)
	public String couponForm(HttpSession session, Model model){
		String st_id = (String)session.getAttribute("loginId_st");
		ArrayList<CouponVO> list = sucdao.couponList(st_id);
		model.addAttribute("list", list);
		return "suc/couponForm";	
	}
	
	/*
	 * 쿠폰 사용하기 -> 사용한 쿠폰 삭제 
	 */
	@RequestMapping(value="coupon", method=RequestMethod.POST)
	public String coupon(HttpSession session, int c_discount){
		String st_id = (String)session.getAttribute("loginId_st");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ins_num", c_discount);
		map.put("st_id", st_id);
		return "suc/couponForm";	
	}
}
