package com.internousdev.listening.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dao.MyPageDAO;
import com.internousdev.listening.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware {
//session情報
	public Map<String, Object> session;
//MyPageDAOのインスタンス生成
	private MyPageDAO myPageDAO = new MyPageDAO();
//MyPage型のArrayListインスタンス、myPageListを生成
	private ArrayList<MyPageDTO> myPageList = new ArrayList<MyPageDTO>();
//各フィールドの定義
	private String deleteFlg;
	private String message;

	public String execute() throws SQLException {
//session内に"LoginId"がない場合ERRORを返す
		if (!(session.containsKey("loginUser"))) {
			return ERROR;
		}
//deleteFlgが空の場合、購入履歴を表示する
		if(deleteFlg == null) {
			String item_transaction_id = session.get("itemId").toString();
			String user_master_id = session.get("loginUserId").toString();
			myPageList = myPageDAO.getMyPageUserInfo(item_transaction_id, user_master_id);
			session.put("myPageList", myPageList);
//deleteFlgが"1"の場合、同クラス内のdelete()を実行する
		} else if(deleteFlg.equals("1")) {
			delete();
		}
//result結果、SUCCESSを挿入する
		String result = SUCCESS;
		return result;
	}
//delete()の定義
	public void delete() throws SQLException {
	//
		String item_transaction_id = session.get("itemId").toString();
		String user_master_id = session.get("LoginId").toString();
		int res = myPageDAO.buyItemHistoryDelete(item_transaction_id, user_master_id);
	//
		if(res > 0) {
			myPageList = null;
			setMessage("商品情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}
	/**
	 * sessionを取得します。
	 * @return session
	 */
	public Map<String,Object> getSession() {
	    return session;
	}
	/**
	 * sessionを設定します。
	 * @param session session
	 */
	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}
	/**
	 * myPageDAOを取得します。
	 * @return myPageDAO
	 */
	public MyPageDAO getMyPageDAO() {
	    return myPageDAO;
	}
	/**
	 * myPageDAOを設定します。
	 * @param myPageDAO myPageDAO
	 */
	public void setMyPageDAO(MyPageDAO myPageDAO) {
	    this.myPageDAO = myPageDAO;
	}
	/**
	 * myPageListを取得します。
	 * @return myPageList
	 */
	public ArrayList<MyPageDTO> getMyPageList() {
	    return myPageList;
	}
	/**
	 * myPageListを設定します。
	 * @param myPageList myPageList
	 */
	public void setMyPageList(ArrayList<MyPageDTO> myPageList) {
	    this.myPageList = myPageList;
	}
	/**
	 * deleteFlgを取得します。
	 * @return deleteFlg
	 */
	public String getDeleteFlg() {
	    return deleteFlg;
	}
	/**
	 * deleteFlgを設定します。
	 * @param deleteFlg deleteFlg
	 */
	public void setDeleteFlg(String deleteFlg) {
	    this.deleteFlg = deleteFlg;
	}
	/**
	 * messageを取得します。
	 * @return message
	 */
	public String getMessage() {
	    return message;
	}
	/**
	 * messageを設定します。
	 * @param message message
	 */
	public void setMessage(String message) {
	    this.message = message;
	}

}
