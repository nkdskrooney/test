package com.internousdev.miamiburger.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.miamiburger.dao.MyPageDAO;
import com.internousdev.miamiburger.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware {
//session情報
	public Map<String, Object> session;

	public String execute() throws SQLException {
//MyPageDAOのインスタンス生成
		MyPageDAO myPageDAO = new MyPageDAO();
//session内に"LoginUser"がない場合ERRORを返す
//		if (!(session.containsKey("loginUser"))) {
//			return ERROR;
//		}
//userIdを受け取りuserIdに対応したユーザー情報をmyPageDTOに格納する
		String userId = "test" ;
		MyPageDTO myPageDTO = myPageDAO.getUserInfo(userId);
//変更予定のユーザー情報を格納する
		session.put("new_userId", myPageDTO.getUserId());
		session.put("new_password", myPageDTO.getPassword());
		session.put("new_familyName", myPageDTO.getFamilyName());
		session.put("new_firstName", myPageDTO.getFirstName());
		session.put("new_familyNameKana", myPageDTO.getFamilyNameKana());
		session.put("new_firstNameKana", myPageDTO.getFirstNameKana());
		session.put("new_sex", myPageDTO.getSex());
		session.put("new_email", myPageDTO.getEmail());
		session.put("new_status", myPageDTO.getStatus());
		session.put("new_logined", myPageDTO.getLogined());
		session.put("new_registDate", myPageDTO.getRegistDate());
		session.put("new_updatedDate", myPageDTO.getUpdatedDate());
		session.put("new_secretQuestion", myPageDTO.getSecretQuestion());
		session.put("new_secretAnswer", myPageDTO.getSecretAnswer());

//変更予定のユーザー情報を格納する
		session.put("old_userId", myPageDTO.getUserId());
		session.put("old_password", myPageDTO.getPassword());
		session.put("old_familyName", myPageDTO.getFamilyName());
		session.put("old_firstName", myPageDTO.getFirstName());
		session.put("old_familyNameKana", myPageDTO.getFamilyNameKana());
		session.put("old_firstNameKana", myPageDTO.getFirstNameKana());
		session.put("old_sex", myPageDTO.getSex());
		session.put("old_email", myPageDTO.getEmail());
		session.put("old_status", myPageDTO.getStatus());
		session.put("old_logined", myPageDTO.getLogined());
		session.put("old_registDate", myPageDTO.getRegistDate());
		session.put("old_updatedDate", myPageDTO.getUpdatedDate());
		session.put("old_secretQuestion", myPageDTO.getSecretQuestion());
		session.put("old_secretAnswer", myPageDTO.getSecretAnswer());

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

}
