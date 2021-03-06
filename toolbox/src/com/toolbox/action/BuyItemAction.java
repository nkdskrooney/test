package com.toolbox.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.ItemDAO;
import com.toolbox.dto.ItemDTO;

public class BuyItemAction extends ActionSupport implements SessionAware{

//session情報
	public Map<String,Object>session;
//前ページで選択されたitemIdを受け取る
	private int itemId ;

	public String execute(){
//DBから取得した商品情報を格納するDTOのインスタンス生成
		ItemDTO itemDTO = new ItemDTO();
//ItemDAOインスタンスを作成
		ItemDAO dao = new ItemDAO();
//商品情報を取得(ホーム画面で入力されたidを引数に/idに対応した情報だけを抽出)
		itemDTO = dao.getItemInfo(itemId);
		session.put("itemId", itemDTO.getItemId());
		session.put("itemName", itemDTO.getItemName());
		session.put("itemNameKana", itemDTO.getItemNameKana());
		session.put("categoryId", itemDTO.getCategoryId());
		session.put("price", itemDTO.getPrice());
		session.put("stock", itemDTO.getStock());
		session.put("imageFilePath", itemDTO.getImageFilePath());
		session.put("releaseDate", itemDTO.getReleaseDate());
//結果にSUCCESSを挿入
		String result=SUCCESS;
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

}