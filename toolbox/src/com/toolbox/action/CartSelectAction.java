package com.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.CartSelectDAO;
import com.toolbox.dto.CartDTO;

public class CartSelectAction extends ActionSupport implements SessionAware{

//sessionの定義
	public Map<String,Object>session;

	public String execute(){
		ArrayList<CartDTO> cartList = new ArrayList<>();
		CartSelectDAO dao = new CartSelectDAO();
		String userId ;
		String tempUserId ;
		String result;

	//ログイン済の際に結び付く情報をSELECTする
		if(session.containsKey("loginUser")){
			userId = session.get("userId").toString();
			tempUserId = session.get("temp_user_id").toString();
			cartList = dao.CartSelect(userId, tempUserId);
			session.put("cartList", cartList);
		}
	//temp_user_idがsessionから消えている、かつ未ログインの際にStartActionを実行する。
		if( session.get("temp_user_id").toString() == null && !(session.containsKey("loginUser"))){
			return ERROR;
		}
	//未ログインの際に結び付く情報をSELECTする
		if(!(session.containsKey("loginUser"))){
			tempUserId = session.get("temp_user_id").toString();
			cartList = dao.CartSelect(tempUserId);
			session.put("cartList", cartList);
		}
	//SUCCESSであればbuyItemCart.jspへ
		result = SUCCESS;
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