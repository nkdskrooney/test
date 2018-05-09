package com.internousdev.listening.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.ItemDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{
//session情報
	public Map<String,Object>session;
	public ItemDTO itemDTO = new ItemDTO();
	public int itemId ;

	public String execute(){
//ItemDAOインスタンスを作成
		ItemDAO dao = new ItemDAO();
//商品情報を取得(ホーム画面で入力されたidを引数に/idに対応した情報だけを抽出)
		itemDTO = dao.getItemInfo(itemId);
		session.put("itemName", itemDTO.getItemName());
		session.put("imgAddress", itemDTO.getImgAddress());
		session.put("itemPrice", itemDTO.getItemPrice());
		session.put("itemStock", itemDTO.getItemStock());
//結果にSUCCESSを挿入
		String result=SUCCESS;
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