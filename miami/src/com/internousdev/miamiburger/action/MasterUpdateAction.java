package com.internousdev.miamiburger.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.miamiburger.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MasterUpdateAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private String productId;
	public ArrayList<ProductInfoDTO> productInfoList = new ArrayList<ProductInfoDTO>();

	public String execute() {

		session.put("productId", productId);
		session.put("productInfoList", productInfoList);

		return SUCCESS;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public ArrayList<ProductInfoDTO> getProductInfoList() {
		return productInfoList;
	}
	public void setProductInfoList(ArrayList<ProductInfoDTO> productInfoList) {
		this.productInfoList = productInfoList;
	}


}
