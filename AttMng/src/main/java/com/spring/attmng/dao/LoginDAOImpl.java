package com.spring.attmng.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.attmng.dto.EmployeeDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	//싱글톤으로 선언된걸 주입 받음
	@Autowired
	private SqlSession session;
	//자신이 사용하고 싶은 mapper의 namespace 이름
	private static final String NameSpace = "LoginMapper.";
	@Override
	public boolean loginCheck(EmployeeDTO emp) {
		// TODO 自動生成されたメソッド・スタブ
		String name = session.selectOne(NameSpace + "loginCheck",emp);

		return (name == null) ? false : true;
	}
	@Override
	public EmployeeDTO loginInfo(EmployeeDTO emp) {
		// TODO 自動生成されたメソッド・スタブ
		return session.selectOne(NameSpace + "loginInfo", emp);
	}

	//login
//	public EmployeeDTO duplexCheck(EmployeeDTO emp) {
//		return session.selectOne(NameSpace + "duplexCheck",emp);
//	}
//
//	public int loginCheck(EmployeeDTO emp, HttpSession hSession) {
//		int Id_Search_Result = -1;
//		try {
//			Id_Search_Result = session.selectOne(NameSpace + "Login", emp);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return -1;
//		}
//
//		if (Id_Search_Result != 1)
//			return Id_Search_Result;
//
//		try {
//			EmployeeDTO emp_info = session.selectOne(NameSpace + "Login_Info", emp);
//			hSession.setAttribute("emp", emp_info);
//			return 1;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return -2;
//		}
//	}


}