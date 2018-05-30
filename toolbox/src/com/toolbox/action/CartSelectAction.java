package com.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.CartSelectDAO;
import com.toolbox.dto.CartDTO;
import com.toolbox.dto.LoginDTO;

public class CartSelectAction extends ActionSupport implements SessionAware{

//sessionの定義
	public Map<String,Object>session;

	public String execute(){
		ArrayList<CartDTO> cartList = new ArrayList<>();
		CartSelectDAO dao = new CartSelectDAO();
		String userId ;
		String tempUserId = "none";
		String result;

	//ログイン済の際に結び付く情報をSELECTする
		if(session.containsKey("loginUser")){
			LoginDTO logindto = (LoginDTO) session.get("loginUser");
			userId = logindto.getUserId();
			cartList = dao.CartSelect(userId);
			session.put("cartList", cartList);
		//カートの合計金額を計算し、sessionへ格納する。
			int allTotalPrice = 0;
				for(CartDTO Price : cartList){
				allTotalPrice = allTotalPrice + Price.getTotalPrice();
				}
			session.put("allTotalPrice", allTotalPrice);

		}
	//temp_user_idがsessionから消えている、かつ未ログインの際にStartActionを実行する。
		if( session.get("temp_user_id").toString() == "none" && !(session.containsKey("loginUser"))){
			return ERROR;
		}
	//未ログインの際に結び付く情報をSELECTする
		if(!(session.containsKey("loginUser"))){
			tempUserId = session.get("temp_user_id").toString();
			cartList = dao.tempCartSelect(tempUserId);
			session.put("cartList", cartList);
		//カートの合計金額を計算し、sessionへ格納する。
			int allTotalPrice = 0;
				for(CartDTO Price : cartList){
				allTotalPrice = allTotalPrice + Price.getTotalPrice();
				}
			session.put("allTotalPrice", allTotalPrice);
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
