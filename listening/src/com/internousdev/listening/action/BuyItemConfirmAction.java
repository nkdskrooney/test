package com.internousdev.listening.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.LoginDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{
//session情報
	public Map<String, Object> session;
//LoginDAO・LoginDTOのインスタンス生成
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();

	public String execute() {
		@SuppressWarnings("unchecked")
//ArrayList<ItemDTO>型のallItemListにsessionから今までの購入情報を挿入
		ArrayList<ItemDTO> allItemlist = (ArrayList<ItemDTO>) session.get("itemList");
//同クラス内のallTotalPrice()を使用し、カート内商品全ての合計金額を受け取り変数ATPに代入後、sessionに格納
		int ATP = allTotalPrice(allItemlist);
		session.put("alltotalprice", ATP);
//result結果、ERRORを挿入
		String result = ERROR;
//ログイン判定(LoginFlgがtrueの場合SUCCESSを結果に挿入)
		if(((LoginDTO) session.get("loginUser")).getLoginFlg()) {
			result = SUCCESS;
			return result;
		}
		return result;
	}

//allTotalPrice()の定義：ArrayList内に格納されている各商品ごとの合計金額を変数に繰り返し代入する
	public int allTotalPrice(ArrayList<ItemDTO> itemlist){
		int allTotalPrice = 0;
		for(ItemDTO TP : itemlist ){
			allTotalPrice += TP.getTotalPrice();
		}
		return allTotalPrice;
	}

//以下、getter/setter
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
