package com.spring.attmng.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.attmng.dto.EmployeeDTO;
import com.spring.attmng.service.LoginService;

@Controller
public class LoginController {

	@Inject
	private LoginService service;

	//GETで /ページを要請
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		//jspフォルダーに login.jsp ファイルをビューページで宣言
		return "login";
	}

//	//bodyの値をマッピングする
//	@ResponseBody
	//POSTで Loginに要請する場合
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	//loginというメソッド名を持つ媒介変数はEmployeeDTO emp, HttpSession session
	public ModelAndView loginCheck(@ModelAttribute EmployeeDTO emp, HttpSession session) {
		boolean result = service.loginCheck(emp, session);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("main");
			mav.addObject("msg","success");
		}else {
			mav.setViewName("login");
			mav.addObject("msg","failure");
		}
		System.out.println(emp.getId());
		return mav;
	}

	//    @RequestMapping(value="/duplexCheck", method = RequestMethod.POST)
	//    public String duplexCheck(EmployeeDTO emp, HttpServletRequest req) {
	//
	//    	HttpSession session = req.getSession();
	//
	//    	EmployeeDTO duplexCheck = service.duplexCheck(emp);
	//
	//    	if(duplexCheck == null) {
	//    		session.setAttribute("", null);
	//    	}
	//
	//    	return "redirect:/";
	//    }

	//로그아웃 관련 페이지
	// /logout으로 GET 방식으로 페이지를 접근하게 된다면
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	//메소드 이름은 LOGOUT 매게 변수는 SESSION
	public String logout(HttpSession session) {
		//emp으로 선언된 세션을 삭제시킨다.
		session.removeAttribute("emp");
		// /페이지로 리다이렉트 시킨다.
		return "redirect:/";
	}

}