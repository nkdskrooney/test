package com.internousdev.miamiburger.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserUpdateConfirmAction extends ActionSupport implements SessionAware {
//session情報
	public Map<String, Object> session;
//情報を受け取る為の変数の定義
	private String new_userId;
	private String new_familyName;
	private String new_firstName;
	private String new_familyNameKana;
	private String new_firstNameKana;
	private int new_sex;
	private String new_email;
	private String new_secretQuestion;
	private String new_secretAnswer;

	public String execute() throws SQLException {

//変更予定のユーザー情報を格納する
		session.put("new_userId", new_userId);
		session.put("new_familyName",new_familyName );
		session.put("new_firstName",new_firstName );
		session.put("new_familyNameKana",new_familyNameKana );
		session.put("new_firstNameKana",new_firstNameKana );
		session.put("new_sex", new_sex);
		session.put("new_email", new_email);
		session.put("new_secretQuestion", new_secretQuestion);
		session.put("new_secretAnswer", new_secretAnswer);


//result結果、SUCCESSを挿入する
		String result = SUCCESS;
		return result;
	}

//以下、getter/setter
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getNew_userId() {
		return new_userId;
	}

	public void setNew_userId(String new_userId) {
		this.new_userId = new_userId;
	}

	public String getNew_familyName() {
		return new_familyName;
	}

	public void setNew_familyName(String new_familyName) {
		this.new_familyName = new_familyName;
	}

	public String getNew_firstName() {
		return new_firstName;
	}

	public void setNew_firstName(String new_firstName) {
		this.new_firstName = new_firstName;
	}

	public String getNew_familyNameKana() {
		return new_familyNameKana;
	}

	public void setNew_familyNameKana(String new_familyNameKana) {
		this.new_familyNameKana = new_familyNameKana;
	}

	public String getNew_firstNameKana() {
		return new_firstNameKana;
	}

	public void setNew_firstNameKana(String new_firstNameKana) {
		this.new_firstNameKana = new_firstNameKana;
	}

	public int getNew_sex() {
		return new_sex;
	}

	public void setNew_sex(int new_sex) {
		this.new_sex = new_sex;
	}

	public String getNew_email() {
		return new_email;
	}

	public void setNew_email(String new_email) {
		this.new_email = new_email;
	}

	public String getNew_secretQuestion() {
		return new_secretQuestion;
	}

	public void setNew_secretQuestion(String new_secretQuestion) {
		this.new_secretQuestion = new_secretQuestion;
	}

	public String getNew_secretAnswer() {
		return new_secretAnswer;
	}

	public void setNew_secretAnswer(String new_secretAnswer) {
		this.new_secretAnswer = new_secretAnswer;
	}


}
