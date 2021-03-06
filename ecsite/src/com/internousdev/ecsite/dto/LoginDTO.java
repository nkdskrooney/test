package com.internousdev.ecsite.dto;

public class LoginDTO {

	private String LoginId;
	private String LoginPassword;
	private String UserName;
	private boolean LoginFlg = false;
	/**
	 * LoginIdを取得します。
	 * @return LoginId
	 */
	public String getLoginId() {
	    return LoginId;
	}
	/**
	 * LoginIdを設定します。
	 * @param LoginId LoginId
	 */
	public void setLoginId(String LoginId) {
	    this.LoginId = LoginId;
	}
	/**
	 * LoginPasswordを取得します。
	 * @return LoginPassword
	 */
	public String getLoginPassword() {
	    return LoginPassword;
	}
	/**
	 * LoginPasswordを設定します。
	 * @param LoginPassword LoginPassword
	 */
	public void setLoginPassword(String LoginPassword) {
	    this.LoginPassword = LoginPassword;
	}
	/**
	 * UserNameを取得します。
	 * @return UserName
	 */
	public String getUserName() {
	    return UserName;
	}
	/**
	 * UserNameを設定します。
	 * @param UserName UserName
	 */
	public void setUserName(String UserName) {
	    this.UserName = UserName;
	}
	/**
	 * LoginFlgを取得します。
	 * @return LoginFlg
	 */
	public boolean getLoginFlg() {
	    return LoginFlg;
	}
	/**
	 * LoginFlgを設定します。
	 * @param LoginFlg LoginFlg
	 */
	public void setLoginFlg(boolean LoginFlg) {
	    this.LoginFlg = LoginFlg;
	}


}
