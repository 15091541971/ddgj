package com.douding.shiro.entity;

public class RolePermission {  
	private int rolePermissionId;
	private int roleId;
	private int permissionId;
	private String rolePermissionNode;
	public int getRolePermissionId() {
		return rolePermissionId;
	}
	public void setRolePermissionId(int rolePermissionId) {
		this.rolePermissionId = rolePermissionId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public int getPermissionId() {
		return permissionId;
	}
	public void setPermissionId(int permissionId) {
		this.permissionId = permissionId;
	}
	public String getRolePermissionNode() {
		return rolePermissionNode;
	}
	public void setRolePermissionNode(String rolePermissionNode) {
		this.rolePermissionNode = rolePermissionNode;
	}
	
	
}
