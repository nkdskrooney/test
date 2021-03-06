package com.toolbox.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.UserCreateCompleteDAO;
public class UserCreateCompleteAction extends ActionSupport implements SessionAware {
	private String userId;
	private String password;
	private String userName;
	private String userNameKana;
	private int sex;
	private String email;

	public Map<String,Object> session;

	private UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();


	public String execute() throws SQLException {
	//新規登録ユーザー情報をDBへInsertする。
		userCreateCompleteDAO.cerateUser(
			session.get("userId").toString(),
			session.get("password").toString(),
			session.get("userName").toString(),
			session.get("userNameKana").toString(),
			Integer.parseInt(session.get("sex").toString()),
			session.get("email").toString());

		String result = SUCCESS;
		return result ;
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


	public UserCreateCompleteDAO getUserCreateCompleteDAO() {
		return userCreateCompleteDAO;
	}


	public void setUserCreateCompleteDAO(UserCreateCompleteDAO userCreateCompleteDAO) {
		this.userCreateCompleteDAO = userCreateCompleteDAO;
	}

}
