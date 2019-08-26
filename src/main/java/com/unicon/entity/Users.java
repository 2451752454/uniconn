package com.unicon.entity;

public class Users {
	private String name;
	private String pwd;
	private String password1;
	private String password2;
	private String sex;
	private String interest;
	private String interest1;
	private String phone;
	private String email;


	public Users(String name, String pwd, String password1, String password2, String sex, String interest, String interest1, String phone, String email) {
		this.name = name;
		this.pwd = pwd;
		this.password1 = password1;
		this.password2 = password2;
		this.sex = sex;
		this.interest = interest;
		this.interest1 = interest1;
		this.phone = phone;
		this.email = email;
	}
	public Users() {
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getInterest1() {
		return interest1;
	}

	public void setInterest1(String interest1) {
		this.interest1 = interest1;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}
