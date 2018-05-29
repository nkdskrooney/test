package com.toolbox.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.BuyItemCompleteDAO;
import com.toolbox.dao.CartDeleteDAO;
import com.toolbox.dto.CartDTO;

public class BuyItemCompleteAction extends ActionSupport implements SessionAware {
//session情報
	public Map<String, Object> session;

	@SuppressWarnings("unchecked")
	public String execute() throws SQLException {
	//sessionタイムアウト用のエラーページへ飛ばす
		String result = ERROR;

		if(session.containsKey("cartList")){
	//cartListに格納されている情報を支払い情報とともにpurchase_infoにInsertする
			BuyItemCompleteDAO dao = new BuyItemCompleteDAO();
			ArrayList<CartDTO> cartList = (ArrayList<CartDTO>)session.get("cartList");
			dao.purchaseInsert(cartList, Integer.parseInt(session.get("payment").toString()));
	//今回purchase_infoへ追加したカート情報を削除する
			CartDeleteDAO delete = new CartDeleteDAO();
			delete.CartAllDelete(cartList.get(0).getUserId());

	//session上に残っている"cartList"を削除する
			session.remove("cartList");

	//result結果、SUCCESSを挿入
			result = SUCCESS;
		}

		return result;
	}
//以下、getter/setter
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Map<String, Object> getSession() {
		return session;
	}

}
