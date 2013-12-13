package com.sinosoft.one.showcase.crypto;

import java.io.Serializable;

public class User implements Serializable{

	private static final long serialVersionUID = 8654482529017373960L;
	/**
	 * 用户名
	 */
	private String loginName;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 描述
	 */
	private String description;
	
	public User() {
		
	}
	
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
		
}
