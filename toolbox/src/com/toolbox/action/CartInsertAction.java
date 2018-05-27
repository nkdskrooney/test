package com.toolbox.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.CartInsertDAO;
import com.toolbox.dto.LoginDTO;

public class CartInsertAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private int itemId;
	private int count;

	public String execute(){
		String userId = null ;
		String tempUserId ;
		String result;
		CartInsertDAO dao = new CartInsertDAO();

	//StartActionで確認したtemp_user_idを取得する
		tempUserId = session.get("temp_user_id").toString();

	//ログイン済の際カート情報をinsertする
		if(session.containsKey("loginUser")){
			LoginDTO loginDTO = (LoginDTO) session.get("loginUser");
			userId = loginDTO.getUserId();
			try {
				dao.CartInsert(userId, tempUserId, itemId, count);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	//temp_user_idがsessionから消えている、かつ未ログインの際にStartActionを実行する。
		if( session.get("temp_user_id").toString() == null && !(session.containsKey("loginUser"))){
			return ERROR;
		}
	//未ログインの際カート情報をinsertする
		if(!(session.containsKey("loginUser"))){
			try {
				dao.CartInsert(tempUserId, itemId, count);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	//CartSelectActionで使用するため必要事項をsessionへ格納する。
		session.put("userId", userId);
	//CartSelectActionへchainする
		result = SUCCESS;
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
