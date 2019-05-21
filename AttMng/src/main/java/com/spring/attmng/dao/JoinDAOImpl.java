package com.spring.attmng.dao;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.attmng.dto.EmployeeDTO;

@Repository
public class JoinDAOImpl implements JoinDAO{

   @Autowired
   private SqlSession session;

   private static String mapper = "main.resources.mapper.mapper";

   @Override
   public void insertMember(EmployeeDTO employeeDto) throws Exception{
      // TODO 自動生成されたメソッド・スタブ
     session.insert(mapper + ".insertMember", employeeDto);
   }
   
}