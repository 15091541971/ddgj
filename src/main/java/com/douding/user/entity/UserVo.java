package com.douding.user.entity;

import java.util.List;

public class UserVo {
  private String fromId;	
  private User user;
  private Enterprise enterprise;
  private Message message;
  private List list;
  private int pageNumber=1;
  private int size;
  private int pageMaxSize=10;
  
  
public String getFromId() {
	return fromId;
}
public void setFromId(String fromId) {
	this.fromId = fromId;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public Enterprise getEnterprise() {
	return enterprise;
}
public void setEnterprise(Enterprise enterprise) {
	this.enterprise = enterprise;
}
public Message getMessage() {
	return message;
}
public void setMessage(Message message) {
	this.message = message;
}
public List getList() {
	return list;
}
public void setList(List list) {
	this.list = list;
}
public int getPageNumber() {
	return pageNumber;
}
public void setPageNumber(int pageNumber) {
	this.pageNumber = pageNumber;
}
public int getSize() {
	return size;
}
public void setSize(int size) {
	this.size = size;
}
public int getPageMaxSize() {
	return pageMaxSize;
}
public void setPageMaxSize(int pageMaxSize) {
	this.pageMaxSize = pageMaxSize;
}
  
  
}
