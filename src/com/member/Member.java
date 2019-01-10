package com.member;

public class Member {
	String userId;
	String pwd;
	String name;
	String zipCode;
	String addr;
	String phone;
	String gender;
	String email;
	String personalNum;
	
	int age;
	int admin;
	
	public Member(){
		
	}
	
	
	public Member(String userId, String pwd, String name, String zipCode,String addr, String phone, String gender, String email,
			String personalNum, int age, int admin) {
		this.userId = userId;
		this.pwd = pwd;
		this.name = name;
		this.zipCode = zipCode;
		this.addr = addr;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.personalNum = personalNum;
		this.age = age;
		this.admin = admin;
	}


	public String getZipCode() {
		return zipCode == null ? "" : zipCode.trim();
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getUserId() {
		return userId == null ? "" : userId.trim();
	}
	public String getPwd() {
		return pwd == null ? "" : pwd.trim();
	}
	public String getName() {
		return name == null ? "" : name.trim();
	}
	public String getAddr() {
		return addr == null ? "" : addr.trim();
	}
	public String getPhone() {
		return phone == null ? "" : phone.trim();
	}
	public String getGender() {
		return gender == null ? "" : gender.trim();
	}
	public String getEmail() {
		return email == null ? "" : email.trim();
	}
	public String getPersonalNum() {
		return personalNum == null ? "" : personalNum.trim();
	}
	public int getAge() {
		return age;
	}
	public int getAdmin() {
		return admin;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPersonalNum(String personalNum) {
		this.personalNum = personalNum;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	
}
