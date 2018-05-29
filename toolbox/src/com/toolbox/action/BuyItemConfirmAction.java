package com.toolbox.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware {
	//session情報
	public Map<String, Object> session;
	private int payment;

	public String execute() {
	//errorではログイン画面へ遷移させる
		String result = ERROR;

	//ここから先はログイン状態にあることを前提にする機能なのでここでログイン判定を行う。
		if(session.containsKey("loginUser")){
		//カート画面から受け取ったpaymentをsessionへ格納する。
			session.put("payment", payment);

		//確認画面でpaymentを日本語で表示するため、判別する
			try{
				switch(payment){
				  case 0 :
					  session.put("paymentName","現金払い" );
				       break;
				  case 1 :
					  session.put("paymentName","クレジットカード" );
				       break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			result = SUCCESS;
		}
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}


}