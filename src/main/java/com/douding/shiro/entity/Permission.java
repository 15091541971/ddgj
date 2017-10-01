package com.douding.shiro.entity;

public class Permission {
   private int permissionId;
   private String  permissionName;
   private String  permiossionNode;
   private String permissionUrl;
   
public String getPermissionUrl() {
	return permissionUrl;
}
public void setPermissionUrl(String permissionUrl) {
	this.permissionUrl = permissionUrl;
}
public int getPermissionId() {
	return permissionId;
}
public void setPermissionId(int permissionId) {
	this.permissionId = permissionId;
}
public String getPermissionName() {
	return permissionName;
}
public void setPermissionName(String permissionName) {
	this.permissionName = permissionName;
}
public String getPermiossionNode() {
	return permiossionNode;
}
public void setPermiossionNode(String permiossionNode) {
	this.permiossionNode = permiossionNode;
}

}
