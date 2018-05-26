package com.internousdev.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.toolbox.dao.ItemDAO;
import com.internousdev.toolbox.dto.ItemDTO;
import com.internousdev.toolbox.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class StartAction extends ActionSupport implements SessionAware{
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
		session.put("itemId", ItemDTO.getItemId());
//カート処理の為の仮IDを発行
		session.put("temp_user_id", RandomStringUtils.randomAlphanumeric(10));
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
