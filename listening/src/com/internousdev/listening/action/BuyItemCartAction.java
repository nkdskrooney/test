package com.internousdev.listening.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.ItemDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCartAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	public List<ItemDTO> itemList = new ArrayList<>();
	public int PurchaseNumber;
	public String payment;
	public String pay;

	public int id;

	public String execute(){
		String result=SUCCESS;

		if(pay.equals("1")) {
			payment = "現金払い";
		}else {
			payment = "クレジットカード";
		}

		session.put("payment", payment);

		ItemDAO dao = new ItemDAO();
		itemList = dao.getItemInfo(id,payment, PurchaseNumber);
		if(session.containsKey("itemList")){
			@SuppressWarnings("unchecked")
			List<ItemDTO> stockList = (List<ItemDTO>) session.get("itemList");
			List<ItemDTO> addList = new ArrayList<>();
			addList.addAll(stockList);
			addList.addAll(itemList);

			session.put("itemList", addList);

		}else{
			session.put("itemList", itemList);
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<ItemDTO> getItemList() {
		return itemList;
	}

	public void setItemList(List<ItemDTO> itemList) {
		this.itemList = itemList;
	}
	public int getPurchaseNumber() {
		return PurchaseNumber;
	}

	public void setPurchaseNumber(int purchaseNumber) {
		PurchaseNumber = purchaseNumber;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



}
