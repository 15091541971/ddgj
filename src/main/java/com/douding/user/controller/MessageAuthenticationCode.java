package com.douding.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.douding.util.SendMessage;
import com.douding.util.Utility;
import com.gj.entity.Result;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
@Controller
public class MessageAuthenticationCode {
	
  /*private static String URL = "http://gw.api.taobao.com/router/rest";
  private static String APP_KAY = "23894020";
  private static String SECRET = "a2d8cd5d27e248aaecf1de23837484a7";
  private static String TEMPLATE = "SMS_69775391";*/
  @Autowired
  private SendMessage sendMessage;
  @RequestMapping("sendCode")
  @ResponseBody
  public Result sendMessage(@Param(value="userPhone") String userPhone,HttpServletRequest request){
	  System.out.println(sendMessage);
	  Result r = new Result();
	  String id = Utility.creatsSecurityCode();
	  JSONObject jsonObject = new JSONObject();
	  HashMap<String,String> map = new HashMap<String,String>();
	  map.put("code", id);
	  String idJson = jsonObject.toJSONString(map);
	  System.out.println(idJson);
	  TaobaoClient client = new DefaultTaobaoClient(sendMessage.getURL(),sendMessage.getAPP_KAY(), sendMessage.getSECRET());
	  AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
	  req.setExtend("");
	  req.setSmsType( "normal" );
	  req.setSmsFreeSignName( sendMessage.getFreeSignName() );
	  req.setSmsParamString( idJson );
	  req.setRecNum( userPhone );
	  req.setSmsTemplateCode( sendMessage.getTEMPLATE() );
	  AlibabaAliqinFcSmsNumSendResponse rsp = null;
	try {
		rsp = client.execute(req);
		/*sendMessage.Send(userPhone, id);*/
		request.getSession().setAttribute("messageCode", id);
		r.setMsg("发送成功");
		r.setStatus(0);
		
	} catch (ApiException e) {
		e.printStackTrace();
		r.setMsg("发送失败");
		r.setStatus(3);
	}
	System.out.println(rsp.getBody());
	  return r;
  }
 
}
