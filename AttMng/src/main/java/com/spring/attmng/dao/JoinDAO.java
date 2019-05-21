package com.spring.attmng.dao;

import com.spring.attmng.dto.EmployeeDTO;

public interface JoinDAO {

	public void insertMember(EmployeeDTO employeeDto) throws Exception;

}