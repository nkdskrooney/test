package com.internousdev.listening.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.LoginDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{


	public Map<String, Object> session;

	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();

	public String execute() {


		@SuppressWarnings("unchecked")
		List<ItemDTO> allitemlist = (List<ItemDTO>) session.get("itemList");
		int ATP = allTotalPrice(allitemlist);
		session.put("alltotalprice", ATP);
		String result = ERROR;

		if(session.containsKey("LoginId")) {
			result = SUCCESS;
			return result;
		}
		return result;
	}

	public int allTotalPrice(List<ItemDTO> itemlist){

		int allTotalPrice = 0;
		for(ItemDTO TP : itemlist ){
			allTotalPrice += TP.getTotalPrice();
		}
		return allTotalPrice;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public LoginDAO getLoginDAO() {
		return loginDAO;
	}

	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}

	public void setLoginDTO(LoginDTO loginDTO) {
		this.loginDTO = loginDTO;
	}


}
