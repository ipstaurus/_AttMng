package com.spring.attmng.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.attmng.dao.LoginDAO;
import com.spring.attmng.dto.EmployeeDTO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO dao;

	/*
	 * @Override public int duplexCheck(EmployeeDTO emp) { // TODO 自動生成されたメソッド・スタブ
	 * return LoginDAO.duplexCheck(emp); }
	 */

	// @Override
	// public EmployeeDTO duplexCheck(EmployeeDTO emp) {
	// // TODO 自動生成されたメソッド・スタブ
	// return dao.duplexCheck(emp);
	// }

	@Override
	public boolean loginCheck(EmployeeDTO emp, HttpSession session) {
		// TODO 自動生成されたメソッド・スタブ
		boolean result = dao.loginCheck(emp);
		if (result) {
			EmployeeDTO emp2 = loginInfo(emp);

			session.setAttribute("id", emp2.getId());
			session.setAttribute("emp_name", emp2.getEmp_name());
		}

		return result;
	}

	@Override
	public EmployeeDTO loginInfo(EmployeeDTO emp) {
		// TODO 自動生成されたメソッド・スタブ
		return dao.loginInfo(emp);
	}

}
