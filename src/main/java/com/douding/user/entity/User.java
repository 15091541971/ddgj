package com.douding.user.entity;

public class User implements java.io.Serializable{
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;   //用户名 NOT NULL
     private String userPassword; //密码  NOT NUll
     private String userPassword2; //
     private String userPhone;  //用户手机号码 NOt NULL
     private int type;         //用户类型  0代表普通用户，1代表商家
     private int status;     //用户状态 0为未认证，1为已认证，3为账号锁定
     private String userId;      //用户名
     private String node;
     
     
	public String getNode() {
		return node;
	}
	public void setNode(String node) {
		this.node = node;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getUserPassword2() {
		return userPassword2;
	}
	public void setUserPassword2(String userPassword2) {
		this.userPassword2 = userPassword2;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
     
   
}
