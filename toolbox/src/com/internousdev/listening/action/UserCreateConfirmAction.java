package com.internousdev.listening.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class UserCreateConfirmAction extends ActionSupport implements SessionAware {
	private String LoginId;
	private String LoginPassword;
	private String UserName;
	private String WebAddress;
	private String Address;
	public Map<String,Object> session;
	private String errorMassage;

	public String execute() {
		String result = SUCCESS;
		if(!(LoginId.equals(""))
			&& !(LoginPassword.equals(""))
			&& !(UserName.equals(""))) {
				session.put("LoginId", LoginId);
				session.put("LoginPassword", LoginPassword);
				session.put("UserName", UserName);
				session.put("WebAddress", WebAddress);
				session.put("Address", Address);
		} else {
			setErrorMassage("未入力の項目があります。");
			result = ERROR;
		}
		return result;
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

	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}

}
