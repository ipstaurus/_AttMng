package com.spring.attmng.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*
 * author: Jin Hyeyoung
 *
 */

@Controller
public class AttMngHelloWorld {

	/*@RequestMapping("/login")
	public ModelAndView joinpage() {
		return new ModelAndView("login");
	}*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {		
		return "main";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginpage() {
		return "login";
	}
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinpage() {
		return "join";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String remain() {
		return "main";
	}


}
