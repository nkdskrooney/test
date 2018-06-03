package com.toolbox.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class UserCreateConfirmAction extends ActionSupport implements SessionAware {
	private String userId;
	private String password;
	private String userName;
	private String userNameKana;
	private int sex;
	private String email;

	public Map<String,Object> session;

	public String execute() {
		String result = SUCCESS;
		//sessionへ格納
			session.put("userId", userId);
			session.put("password", password);
			session.put("userName", userName);
			session.put("userNameKana", userNameKana);
			session.put("sex", sex);
			session.put("email", email);

		//男性と女性の判別、文字列の挿入(既存)
			try{
				switch(sex){
				  case 0 :
					  session.put("sexName","男性" );
				       break;
				  case 1 :
					  session.put("sexName","女性" );
				       break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}


		return result;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNameKana() {
		return userNameKana;
	}

	public void setUserNameKana(String userNameKana) {
		this.userNameKana = userNameKana;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
