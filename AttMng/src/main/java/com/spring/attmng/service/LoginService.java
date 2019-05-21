package com.spring.attmng.service;

import javax.servlet.http.HttpSession;

import com.spring.attmng.dto.EmployeeDTO;

public interface LoginService {
	public boolean loginCheck(EmployeeDTO emp, HttpSession session);

	public EmployeeDTO loginInfo(EmployeeDTO emp);
}
