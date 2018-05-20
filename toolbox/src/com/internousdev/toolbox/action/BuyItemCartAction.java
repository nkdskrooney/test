package com.internousdev.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.toolbox.dao.CartItemDAO;
import com.internousdev.toolbox.dao.ItemDAO;
import com.internousdev.toolbox.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCartAction extends ActionSupport implements SessionAware{
//sessionの定義
	public Map<String,Object>session;
//各値のフィールドの作成(グローバル変数)
	public int count;
	public String payment;
	public String pay;
	public int itemId;


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
		ArrayList<ItemDTO> CartList = new ArrayList<>();
//ItemDAO/CartItemDAOメソッドを利用するため、インスタンス生成
		ItemDAO item = new ItemDAO();
		CartItemDAO cart = new CartItemDAO();
//ItemDTO型のインスタンスを作成
		ItemDTO itemDTO = new ItemDTO();

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
