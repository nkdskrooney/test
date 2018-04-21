package com.internousdev.listening.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;
public class UserCreateCompleteAction extends ActionSupport implements SessionAware {
	private String LoginId;
	private String LoginPassword;
	private String UserName;
	private String WebAddress;
	private String Address;
	public Map<String,Object> session;
	private UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();


	public String execute() throws SQLException {
		userCreateCompleteDAO.cerateUser(
			session.get("LoginId").toString(),
			session.get("LoginPassword").toString(),
			session.get("UserName").toString(),
			session.get("WebAddress").toString(),
			session.get("Address").toString());


		String result = SUCCESS;
		return result ;
	}



	public String getLoginId() {
		return LoginId;
	}

	public void setLoginId(String loginId) {
		LoginId = loginId;
	}

	public String getLoginPassword() {
		return LoginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		LoginPassword = loginPassword;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getWebAddress() {
		return WebAddress;
	}

	public void setWebAddress(String webAddress) {
		WebAddress = webAddress;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
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