package com.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.ItemDAO;
import com.toolbox.dto.ItemDTO;
import com.toolbox.dto.LoginDTO;

public class EntranceAction extends ActionSupport implements SessionAware{
//session情報
	public Map<String,Object>session;
//各インスタンスの生成
	public ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();
	public LoginDTO loginDTO = new LoginDTO();
	public ItemDTO ItemDTO = new ItemDTO();

	public String execute(){
//商品情報を取得し,sessionへ格納
		ItemDAO dao = new ItemDAO();
		itemList = dao.getItemInfo();
		session.put("itemList", itemList);

//カート処理の為の仮IDを発行
		session.put("temp_user_id", RandomStringUtils.randomAlphanumeric(10));
		System.out.println(session.get("temp_user_id"));
//結果SUCCESSを挿入
		String result=SUCCESS;
		return result;
	}

//以下getter/setter
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
