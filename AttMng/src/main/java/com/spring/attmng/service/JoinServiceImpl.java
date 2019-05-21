package com.spring.attmng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.attmng.dao.JoinDAO;
import com.spring.attmng.dto.EmployeeDTO;

@Service
public class JoinServiceImpl implements JoinService{


   @Autowired
   private JoinDAO dao;

   @Override
   public void insertMember(EmployeeDTO employeeDto) throws Exception{
      // TODO 自動生成されたメソッド・スタブ
      dao.insertMember(employeeDto);
   }

}
