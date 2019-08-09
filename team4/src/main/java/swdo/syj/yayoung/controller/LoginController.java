/**
 * 로그인 컨트롤러
 * 우다슬
 * 2019.08.09
 */
package swdo.syj.yayoung.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import swdo.syj.yayoung.dao.LoginDao;

@Controller
public class LoginController {

	@Autowired
	LoginDao dao;
	
}
