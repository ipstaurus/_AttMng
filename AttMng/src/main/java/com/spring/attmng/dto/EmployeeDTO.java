package com.spring.attmng.dto;

import java.sql.Date;
/*
 * tableごとにDTOを作成してください。
 */
public class EmployeeDTO {
   private String id;
    private String password;
    private String emp_name;
    private String gender;
    private Date entry_date;
    private String com_name3;
    private String dep_name;
    private String pos_name1;
    private String mail;
    private String cellphone;
    private String address;
    private String amd_code;

   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
    public String getEmp_name() {
      return emp_name;
   }
   public void setEmp_name(String emp_name) {
      this.emp_name = emp_name;
   }
   public String getGender() {
      return gender;
   }
   public void setGender(String gender) {
      this.gender = gender;
   }
   public Date getEntry_date() {
      return entry_date;
   }
   public void setEntry_date(Date entry_date) {
      this.entry_date = entry_date;
   }
   public String getCom_name3() {
      return com_name3;
   }
   public void setCom_name3(String com_name3) {
      this.com_name3 = com_name3;
   }
   public String getDep_name() {
      return dep_name;
   }
   public void setDep_name(String dep_name) {
      this.dep_name = dep_name;
   }
   public String getPos_name1() {
      return pos_name1;
   }
   public void setPos_name1(String pos_name1) {
      this.pos_name1 = pos_name1;
   }
   public String getMail() {
      return mail;
   }
   public void setMail(String mail) {
      this.mail = mail;
   }
   public String getCellphone() {
      return cellphone;
   }
   public void setCellphone(String cellphone) {
      this.cellphone = cellphone;
   }
   public String getAddress() {
      return address;
   }
   public void setAddress(String address) {
      this.address = address;
   }
   public String getAmd_code() {
      return amd_code;
   }
   public void setAmd_code(String amd_code) {
      this.amd_code = amd_code;
   }

}