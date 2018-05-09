package com.internousdev.miamiburger.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.miamiburger.dao.ChangePasswordCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordCompleteAction extends ActionSupport implements SessionAware{

	//session情報
		public Map<String, Object> session;
	//情報を受け取る為の変数の定義
		private String new_password_1;
		private String new_password_2;

		public String execute() throws SQLException {
			if(new_password_1.equals(new_password_2)){
	//変更予定のユーザー情報を格納する
				session.put("new_password", new_password_1);
				ChangePasswordCompleteDAO dao = new ChangePasswordCompleteDAO();
				dao.ChangePassword(
						session.get("new_password").toString(),
						session.get("new_userId").toString()) ;
				return SUCCESS;
			}

	//result結果、SUCCESSを挿入する
			return ERROR;
		}

		public Map<String, Object> getSession() {
			return session;
		}

		public void setSession(Map<String, Object> session) {
			this.session = session;
		}

		public String getNew_password_1() {
			return new_password_1;
		}

		public void setNew_password_1(String new_password_1) {
			this.new_password_1 = new_password_1;
		}

		public String getNew_password_2() {
			return new_password_2;
		}

		public void setNew_password_2(String new_password_2) {
			this.new_password_2 = new_password_2;
		}


}
