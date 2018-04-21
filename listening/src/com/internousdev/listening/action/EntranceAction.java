package com.internousdev.listening.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.ItemDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class EntranceAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	public List<ItemDTO> itemList = new ArrayList<ItemDTO>();
	public LoginDTO loginDTO = new LoginDTO();

	public String execute(){
		String result=SUCCESS;
		loginDTO.setLoginFlg(false);
		ItemDAO dao = new ItemDAO();
		itemList = dao.getItemInfo();

		return result;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}