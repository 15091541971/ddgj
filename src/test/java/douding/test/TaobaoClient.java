package douding.test;

import java.util.HashMap;

import org.junit.Test;

import com.alibaba.fastjson.JSONObject;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class TaobaoClient {
	private static String URL = "http://gw.api.taobao.com/router/rest";
	  private static String APP_KAY = "23894020";
	  private static String SECRET = "a2d8cd5d27e248aaecf1de23837484a7";
	  private static String TEMPLATE = "SMS_69775391";
	  
	  public void f(String id,String userPhone){
		  JSONObject jsonObject = new JSONObject();
		  HashMap<String,String> map = new HashMap<String,String>();
		  map.put("code", id);
		  String idJson = jsonObject.toJSONString(map);
		  System.out.println(idJson);
		  DefaultTaobaoClient client = new DefaultTaobaoClient(URL, APP_KAY, SECRET);
		  AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		  req.setExtend("");
		  req.setSmsType( "normal" );
		  req.setSmsFreeSignName( "李玉刚1995" );
		  req.setSmsParamString( idJson );
		  req.setRecNum( userPhone );
		  req.setSmsTemplateCode( TEMPLATE );
		  AlibabaAliqinFcSmsNumSendResponse rsp = null;
		try {
			rsp = client.execute(req);
			
			
			
		} catch (ApiException e) {
			e.printStackTrace();
			
		}
		  System.out.println(rsp.getBody());
		  
	  }
	  @Test
	  public void t(){
		  f("1234", "18792421935");
	  }
	  }

