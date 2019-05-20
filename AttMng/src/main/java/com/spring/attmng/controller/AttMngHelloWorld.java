package com.spring.attmng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * author: Jin Hyeyoung
 *
 */

@Controller
public class AttMngHelloWorld {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {		
		return "main";
	}

}
