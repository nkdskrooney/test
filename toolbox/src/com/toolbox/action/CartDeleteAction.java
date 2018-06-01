package com.toolbox.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.CartDeleteDAO;
import com.toolbox.dto.LoginDTO;

public class CartDeleteAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private int cartId;

	public String execute(){
		System.out.println(cartId);
		String userId = "none" ;
		String tempUserId = "none";
		String result;
		CartDeleteDAO dao = new CartDeleteDAO();

		if(session.containsKey("temp_user_id")){
			tempUserId = session.get("temp_user_id").toString();
		}
		if(session.containsKey("loginUser")){
			LoginDTO loginDTO = (LoginDTO) session.get("loginUser");
			userId = loginDTO.getUserId();
			//CartSelectActionで使用するため必要事項をsessionへ格納する。
			session.put("userId", userId);
		}

		dao.CartDelete(userId, tempUserId, cartId);

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

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

}
