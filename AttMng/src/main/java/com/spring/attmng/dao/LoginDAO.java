package com.spring.attmng.dao;

import com.spring.attmng.dto.EmployeeDTO;

public interface LoginDAO {
	public boolean loginCheck(EmployeeDTO emp);

	public EmployeeDTO loginInfo(EmployeeDTO emp);
}
