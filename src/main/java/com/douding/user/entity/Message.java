package com.douding.user.entity;

public class Message {
	private String id;
   private String userId;
   private String nikeName;
   private String name;
   private String email;
   private String creditRating;
   private  String registerDate;
   private String userIcon;
   private String grade;
   private String address;
   private String field;
   private String telephone;
   private String icCompany;
   
   
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getNikeName() {
	return nikeName;
}
public void setNikeName(String nikeName) {
	this.nikeName = nikeName;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getCreditRating() {
	return creditRating;
}
public void setCreditRating(String creditRating) {
	this.creditRating = creditRating;
}
public String getRegisterDate() {
	return registerDate;
}
public void setRegisterDate(String registerDate) {
	this.registerDate = registerDate;
}
public String getUserIcon() {
	return userIcon;
}
public void setUserIcon(String userIcon) {
	this.userIcon = userIcon;
}
public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getField() {
	return field;
}
public void setField(String field) {
	this.field = field;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getIcCompany() {
	return icCompany;
}
public void setIcCompany(String icCompany) {
	this.icCompany = icCompany;
}
@Override
public String toString() {
	return "Message [id=" + id + ", userId=" + userId + ", nikeName="
			+ nikeName + ", name=" + name + ", email=" + email
			+ ", creditRating=" + creditRating + ", registerDate="
			+ registerDate + ", userIcon=" + userIcon + ", grade=" + grade
			+ ", address=" + address + ", field=" + field + ", telephone="
			+ telephone + ", icCompany=" + icCompany + "]";
}

   
}
