package com.internousdev.listening.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.BuyItemCompleteDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;
public class BuyItemCompleteAction extends ActionSupport implements SessionAware {
//session情報
	public Map<String, Object> session;
//BuyItemDAOのインスタンス生成
	private BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();
	private ArrayList<ItemDTO> itemList;

	@SuppressWarnings("unchecked")
	public String execute() throws SQLException {
//空のitemListを作り、それにsessionに格納している購入情報を挿入する
		itemList = ((ArrayList<ItemDTO>) session.get("itemList"));
//for文を使用し、itemList内の配列数まで（実際には1少ない）buyItemInfo()を使用する処理をする
		System.out.println(itemList.size());
		for(int i = 0; i<itemList.size(); i++){
		buyItemCompleteDAO.buyItemInfo(itemList.get(i),((LoginDTO) session.get("loginUser")).getLoginId());
		}
//result結果、SUCCESSを挿入
		String result = SUCCESS;
		return result;
	}
//以下、getter/setter
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public BuyItemCompleteDAO getBuyItemCompleteDAO() {
		return buyItemCompleteDAO;
	}
	public void setBuyItemCompleteDAO(BuyItemCompleteDAO buyItemCompleteDAO) {
		this.buyItemCompleteDAO = buyItemCompleteDAO;
	}
	public ArrayList<ItemDTO> getItemList() {
		return itemList;
	}
	public void setItemList(ArrayList<ItemDTO> itemList) {
		this.itemList = itemList;
	}
	public Map<String, Object> getSession() {
		return session;
	}

}
