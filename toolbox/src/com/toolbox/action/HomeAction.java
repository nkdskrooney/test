package com.toolbox.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.ItemDAO;
import com.toolbox.dto.ItemDTO;

public class HomeAction extends ActionSupport implements SessionAware {
	public Map<String,Object>session;
	public List<ItemDTO> itemList = new ArrayList<ItemDTO>();

	public String execute(){
		String result=SUCCESS;
		ItemDAO dao = new ItemDAO();
		itemList = dao.getItemInfo();
		session.put("itemList", itemList);
		return result;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}


