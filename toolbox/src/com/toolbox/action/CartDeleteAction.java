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
	//データベースへ書き込む際、中身がnullだとエラーになる為デフォルトの値を挿入。
		String userId = "none" ;
		String tempUserId = "none";
		String result;
		CartDeleteDAO dao = new CartDeleteDAO();
	//判別文を挟まずに仮Idを取得すると空の場合エラーになる為、有無の確認後に取得
		if(session.containsKey("temp_user_id")){
			tempUserId = session.get("temp_user_id").toString();
		}
	//ログインIdも仮Idと同様に、一度判別文を挟む。
		if(session.containsKey("loginUser")){
			LoginDTO loginDTO = (LoginDTO) session.get("loginUser");
			userId = loginDTO.getUserId();
			//CartSelectActionで使用するため必要事項をsessionへ格納する。
			session.put("userId", userId);
		}
	//ユーザーIdもしくは仮Idで登録されているCartIdを持つカート情報を削除する
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
