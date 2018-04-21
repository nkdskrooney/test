package com.internousdev.ecsite.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class UserCreateConfirmAction extends ActionSupport implements SessionAware {
	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String,Object> session;
	private String errorMassage;
	public String execute() {
		String result = SUCCESS;
		if(!(loginUserId.equals(""))
			&& !(loginPassword.equals(""))
			&& !(userName.equals(""))) {
				session.put("loginUserId", loginUserId);
				session.put("loginPassword", loginPassword);
				session.put("userName", userName);
		} else {
			setErrorMassage("未入力の項目があります。");
			result = ERROR;
		}
		return result;
	}
	/**
	 * loginUserIdを取得します。
	 * @return loginUserId
	 */
	public String getLoginUserId() {
	    return loginUserId;
	}
	/**
	 * loginUserIdを設定します。
	 * @param loginUserId loginUserId
	 */
	public void setLoginUserId(String loginUserId) {
	    this.loginUserId = loginUserId;
	}
	/**
	 * loginPasswordを取得します。
	 * @return loginPassword
	 */
	public String getLoginPassword() {
	    return loginPassword;
	}
	/**
	 * loginPasswordを設定します。
	 * @param loginPassword loginPassword
	 */
	public void setLoginPassword(String loginPassword) {
	    this.loginPassword = loginPassword;
	}
	/**
	 * userNameを取得します。
	 * @return userName
	 */
	public String getUserName() {
	    return userName;
	}
	/**
	 * userNameを設定します。
	 * @param userName userName
	 */
	public void setUserName(String userName) {
	    this.userName = userName;
	}
	/**
	 * sessionを取得します。
	 * @return session
	 */
	public Map<String,Object> getSession() {
	    return session;
	}
	/**
	 * sessionを設定します。
	 * @param session session
	 */
	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}
	/**
	 * errorMassageを取得します。
	 * @return errorMassage
	 */
	public String getErrorMassage() {
	    return errorMassage;
	}
	/**
	 * errorMassageを設定します。
	 * @param errorMassage errorMassage
	 */
	public void setErrorMassage(String errorMassage) {
	    this.errorMassage = errorMassage;
	}


}


