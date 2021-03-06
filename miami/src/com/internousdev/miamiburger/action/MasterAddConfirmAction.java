package com.internousdev.miamiburger.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class MasterAddConfirmAction extends ActionSupport implements SessionAware{
//session情報
	public Map<String, Object> session;

//情報を受け取る為の変数の定義（商品情報）
	private String productName;
	private String productNameKana;
	private String productDescription;
	private int categoryId;
	private int price;
	private String releaseDate;
	private int Status;

	public String execute() throws SQLException {

	//変更予定の商品情報を格納する
		session.put("productName", productName);
		session.put("productNameKana",productNameKana );
		session.put("productDescription",productDescription );
		session.put("price",price );
		session.put("releaseDate", releaseDate);
		session.put("categoryId", categoryId);
		session.put("Status", Status);

	//確認画面でcategoryIdを文字で表示する
		try{
			switch(categoryId){
			  case 1 :
				  session.put("categoryName","バーガー" );
			       break;
			  case 2 :
				  session.put("categoryName","飲み物" );
			       break;
			  case 3 :
				  session.put("categoryName","サイドメニュー" );
			       break;
			  case 4 :
				  session.put("categoryName","セット" );
				  break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	//確認画面でStatusを文字で表示する
			try{
				switch(Status){
				  case 1 :
					  session.put("StatusName","無効" );
				       break;
				  case 2 :
					  session.put("StatusName","有効" );
				       break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
	//InputChecker
		
		

	//result結果、SUCCESSを挿入する
		String result = SUCCESS;
		return result;
	}
//以下getter/setter

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductNameKana() {
		return productNameKana;
	}

	public void setProductNameKana(String productNameKana) {
		this.productNameKana = productNameKana;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public int getStatus() {
		return Status;
	}

	public void setStatus(int status) {
		Status = status;
	}

}
