package com.internousdev.listening.dto;

public class LoginDTO {

	private String LoginId;
	private String UserName;
	private String LoginPassword;
	private String WebAddress;
	private String Address;
	private boolean LoginFlg = false;

	public String getLoginId() {
		return LoginId;
	}
	public void setLoginId(String loginId) {
		LoginId = loginId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getLoginPassword() {
		return LoginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		LoginPassword = loginPassword;
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
	public boolean getLoginFlg() {
		return LoginFlg;
	}
	public void setLoginFlg(boolean loginFlg) {
		LoginFlg = loginFlg;
	}
}
