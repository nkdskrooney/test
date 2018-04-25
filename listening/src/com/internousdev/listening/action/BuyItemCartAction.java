package com.internousdev.listening.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.ItemDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCartAction extends ActionSupport implements SessionAware{
//sessionの定義
	public Map<String,Object>session;
//各値のフィールドの作成(グローバル変数)
	public int PurchaseNumber;
	public String payment;
	public String pay;
	public int itemId;

	@SuppressWarnings("unchecked")
	public String execute(){
//result結果、SUCCESSを挿入
		String result=SUCCESS;
//支払い方法判定（"1"orその他）sessionへ格納
		if(pay.equals("1")) {
			payment = "現金払い";
		}else {
			payment = "クレジットカード";
		}
//ArrayList「itemDTOList」の作成
		ArrayList<ItemDTO> itemDTOList = new ArrayList<>();
//ItemDAOメソッドを利用するため、インスタンス生成
		ItemDAO dao = new ItemDAO();
//ItemDTO型のインスタンスを作成
		ItemDTO itemDTO = new ItemDTO();
//ItemDTOからの購入情報をItemDTO型のインスタンスに格納
		itemDTO = dao.getItemInfo(itemId, payment, PurchaseNumber);
//sessionに"itemList"が	ない場合、購入情報をsessionへ格納。ある場合、購入情報とsession内の情報を格納
		if(!session.containsKey("itemList")){
			itemDTOList.add(itemDTO);
			session.put("itemList", itemDTOList);
		}else{
			itemDTOList.add(itemDTO);
			itemDTOList.addAll((ArrayList<ItemDTO>) session.get("itemList"));
			session.put("itemList", itemDTOList);
			System.out.println(((ArrayList<ItemDTO>) session.get("itemList")).size());
		}
		return result;
	}

//以下、getter/setter
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
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

}