package com.douding.util;

import java.util.HashMap;

import org.junit.Test;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class SendMessage {
 /*private static String URL = "http://gw.api.taobao.com/router/rest";
	  private static String APP_KAY = "23894020";
	  private static String SECRET = "a2d8cd5d27e248aaecf1de23837484a7";
	  private static String TEMPLATE = "SMS_69775391";
	  private static String freeSignName="李玉刚1995";*/
	  private  String URL;
	  private  String APP_KAY ;
	  private String SECRET;
	  private  String TEMPLATE;
	  private  String freeSignName;
 
	

public String getURL() {
		return URL;
	}



	public void setURL(String uRL) {
		URL = uRL;
	}



	public String getAPP_KAY() {
		return APP_KAY;
	}



	public void setAPP_KAY(String aPP_KAY) {
		APP_KAY = aPP_KAY;
	}



	public String getSECRET() {
		return SECRET;
	}



	public void setSECRET(String sECRET) {
		SECRET = sECRET;
	}



	public String getTEMPLATE() {
		return TEMPLATE;
	}



	public void setTEMPLATE(String tEMPLATE) {
		TEMPLATE = tEMPLATE;
	}



	public String getFreeSignName() {
		return freeSignName;
	}



	public void setFreeSignName(String freeSignName) {
		this.freeSignName = freeSignName;
	}



	@Override
	public String toString() {
		return "SendMessage [URL=" + URL + ", APP_KAY=" + APP_KAY + ", SECRET=" + SECRET + ", TEMPLATE=" + TEMPLATE
				+ ", freeSignName=" + freeSignName + "]";
	}




}
