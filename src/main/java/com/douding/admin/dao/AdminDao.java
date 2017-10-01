package com.douding.admin.dao;

import java.util.List;

import com.douding.shiro.entity.Permission;
import com.douding.shiro.entity.Role;

public interface AdminDao {
	/**
	 * 查找角色所有权限
	 * @param role
	 * @return
	 * @throws Exception
	 */
  List<Permission> selectRoleAllPermission(Role role)throws Exception;
  List<String> selectRoles(String userPhone)throws Exception;

}
