package com.kdh.spring.domain;

import java.sql.Timestamp;

public class UserVo {
	private int user_num;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_gender;
	private String user_email;
	private String user_birth;
	private String user_address;
	private int user_point;
	private Timestamp user_join_date;
	private String user_status;
	
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserVo(int user_num, String user_id, String user_pw, String user_name, String user_gender, String user_email,
			String user_birth, String user_address, int user_point, Timestamp user_join_date, String user_status) {
		super();
		this.user_num = user_num;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_gender = user_gender;
		this.user_email = user_email;
		this.user_birth = user_birth;
		this.user_address = user_address;
		this.user_point = user_point;
		this.user_join_date = user_join_date;
		this.user_status = user_status;
	}
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public int getUser_point() {
		return user_point;
	}
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	public Timestamp getUser_join_date() {
		return user_join_date;
	}
	public void setUser_join_date(Timestamp user_join_date) {
		this.user_join_date = user_join_date;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
	@Override
	public String toString() {
		return "UserVo [user_num=" + user_num + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_gender=" + user_gender + ", user_email=" + user_email + ", user_birth="
				+ user_birth + ", user_address=" + user_address + ", user_point=" + user_point + ", user_join_date="
				+ user_join_date + ", user_status=" + user_status + "]";
	}
}
