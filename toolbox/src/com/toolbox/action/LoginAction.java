package com.toolbox.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.toolbox.dao.CartSelectDAO;
import com.toolbox.dao.ItemDAO;
import com.toolbox.dao.LoginDAO;
import com.toolbox.dto.CartDTO;
import com.toolbox.dto.ItemDTO;
import com.toolbox.dto.LoginDTO;

public class LoginAction extends ActionSupport implements SessionAware{
//session情報
	public Map<String, Object> session;
//フィールドの定義
	private String loginUserId;
	private String loginPassword;
	private String tempUserId;
//ItemDTO型のArrayList・itemListの定義
	private ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();

	public String execute() {
//result結果、ERRORの挿入
		String result = ERROR;
//itemListに商品情報を挿入する(home.jsp遷移後に商品情報を表示するため)
		ItemDAO dao = new ItemDAO();
		itemList = dao.getItemInfo();
		session.put("itemList", itemList);
//インスタンスloginDTOにログイン情報を格納する
		if(!(loginUserId == null) && !(loginPassword == null)){
		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);
		}
//ログイン判定処理(管理者)
		if (loginDTO.getUserName().equals("admin")&&loginDTO.getPassword().equals("admin")){
			return INPUT ;
		}
//もしtempUserIdに照合するカートテーブルがあればログインしたUserIdとtempUserIdを紐づけする。
		if (session.containsKey("temp_user_id")){
			tempUserId = session.get("temp_user_id").toString();
			ArrayList<CartDTO> cartList = new ArrayList<>();
			CartSelectDAO cartdao = new CartSelectDAO();
			cartList = cartdao.tempCartSelect(tempUserId);
			if(!(cartList.isEmpty())){
				loginDAO.StringWithCart(loginDTO.getUserId(), tempUserId);
			}
		}
//ログイン判定処理(ユーザー)(LoginFlgはDAOにてtrue挿し込み済)
		if(loginDTO.getLoginFlg()) {
			session.put("loginUser", loginDTO);
			result = SUCCESS;
			return result;
		}
		return result;
	}

//以下、getter/setter
	public String getLoginUserId() {
		return loginUserId;
	}


	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}


	public String getLoginPassword() {
		return loginPassword;
	}


	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
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


	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
