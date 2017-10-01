package com.douding.util;

import java.util.List;
/***
 * 返回结果包装类
 * @author Administrator
 *
 */
public class NodeResult implements java.io.Serializable {
	    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private  int status;
		private String msg;
		private Object data;
		private List<String> count;
		private Object sum;
		public List<String> getCount() {
			return count;
		}
		public void setCount(List<String> count) {
			this.count = count;
		}
		public Object getSum() {
			return sum;
		}
		public void setSum(Object sum) {
			this.sum = sum;
		}
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
	}

