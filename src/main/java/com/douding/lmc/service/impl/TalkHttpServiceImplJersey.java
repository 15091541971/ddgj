package com.douding.lmc.service.impl;
import java.io.File;
import java.util.Map;

import com.douding.lmc.model.Authentic;
import com.douding.lmc.model.TalkNode;
import com.douding.lmc.service.TalkHttpService;


public class TalkHttpServiceImplJersey implements TalkHttpService {
	public TalkNode request(String url, int method, Object param, Authentic auth, String[][] field) throws Exception {
		//TODO 另一个http请求的实现
		return null;
	}
	public TalkNode upload(String url, File file, Authentic auth, String[][] equal) throws Exception {
		//TODO 另一个http请求的实现
		return null;
	}
	public void downLoad(String url, File file, Authentic auth, Map<String,String> header) throws Exception {
		//TODO 另一个http请求的实现
	}
}