package com.internousdev.listening.action;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.BuyItemCompleteDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;
public class BuyItemCompleteAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;
	private BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();

	@SuppressWarnings("unchecked")
	public String execute() throws SQLException {
		buyItemCompleteDAO.buyItemeInfo(
			(List<ItemDTO>) session.get("itemList"),
			((LoginDTO) session.get("loginUser")).getLoginId()
			);

		String result = SUCCESS;
		return result;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
