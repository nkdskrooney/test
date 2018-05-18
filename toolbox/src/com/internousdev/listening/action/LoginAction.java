package com.internousdev.listening.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.ItemDAO;
import com.internousdev.listening.dao.LoginDAO;
import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
//session情報
	public Map<String, Object> session;
//フィールドの定義
	private String loginUserId;
	private String loginPassword;
//ItemDTO型のArrayList・itemListの定義
	public ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();
//LoginDAO・LoginDTOのインスタンス生成
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();

	public String execute() {
//result結果、ERRORの挿入
		String result = ERROR;
//ItemDAOのインスタンス生成
		ItemDAO dao = new ItemDAO();
//itemListに商品情報を挿入する(home.jsp遷移後に商品情報を表示するため)
		itemList = dao.getItemInfo();
//インスタンスloginDTOにログイン情報を格納する
		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);

//ログイン判定処理(管理者)
		if (loginDTO.getUserName().equals("root")&&loginDTO.getLoginPassword().equals("root")){
			return INPUT ;
		}
//ログイン判定処理(ユーザー)(LoginflgはDAOにてtrue挿し込み済)
		if(loginDTO.getLoginFlg()) {
			session.put("loginUser", loginDTO);
			//購入履歴検索処理で呼び出す為にloginUserIdをsessionへ格納
			session.put("loginUserId",loginDTO.getLoginId());
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
