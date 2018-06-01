package com.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.ItemDAO;
import com.toolbox.dto.ItemDTO;



public class LogoutAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	public String execute() {

	//ログイン判定
		if(session.containsKey("loginUser")){

	//tempUserIdを保存
		String tempUserId = session.get("temp_user_id").toString();

	//セッションクリア
		session.clear();

	//再度詰め直し
		session.put("temp_user_id", tempUserId);
	//home画面に戻るので、商品情報を再取得
		ItemDAO dao = new ItemDAO();
		ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();
		itemList =dao.getItemInfo();
		session.put("itemList", itemList);

		}
		return SUCCESS;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
