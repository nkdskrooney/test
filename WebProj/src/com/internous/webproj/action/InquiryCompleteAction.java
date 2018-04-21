package com.internous.webproj.action;

import com.opensymphony.xwork2.ActionSupport;

public class InquiryCompleteAction extends ActionSupport {

	private String name;
	private String qtype;
	private String body;

	public String execute() {
		return SUCCESS;
	}

	public String getname() {
		return name;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype= qtype;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
}
