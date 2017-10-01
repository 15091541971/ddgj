package com.douding.shiro.entity;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.douding.user.entity.User;

public class PermissionView {
   private Permission permission;
   private Role role;
   private RolePermission rolePermission;
   private UserRole userRole;
   private User user;
  private List<Permission> permissionList = new ArrayList<Permission>();
  private List<Role> roleList = new ArrayList<Role>();
   
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public List<Permission> getPermissionList() {
	return permissionList;
}
public void setPermissionList(List<Permission> permissionList) {
	this.permissionList = permissionList;
}
public List<Role> getRoleList() {
	return roleList;
}
public void setRoleList(List<Role> roleList) {
	this.roleList = roleList;
}
public User getUserModel() {
	return user;
}
public void setUserModel(User user) {
	this.user = user;
}
public Permission getPermission() {
	return permission;
}
public void setPermission(Permission permission) {
	this.permission = permission;
}
public Role getRole() {
	return role;
}
public void setRole(Role role) {
	this.role = role;
}
public RolePermission getRolePermission() {
	return rolePermission;
}
public void setRolePermission(RolePermission rolePermission) {
	this.rolePermission = rolePermission;
}
public UserRole getUserRole() {
	return userRole;
}
public void setUserRole(UserRole userRole) {
	this.userRole = userRole;
}

   
   
   
}
