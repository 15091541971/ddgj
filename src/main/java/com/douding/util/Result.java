package com.douding.util;


public class Result{
	// 地位
	private int status=1;
	//   信息
	private String msg;
	//  对象数据
	private Object data;
	private Object Number;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public Object getNumber() {
		return Number;
	}
	public void setNumber(Object number) {
		Number = number;
	}
}
