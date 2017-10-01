package com.douding.shiro.dao;

import java.util.List;

import com.douding.shiro.entity.Permission;
import com.douding.shiro.entity.PermissionView;
import com.douding.user.entity.User;

public interface UserAuthenticationDao {
	/**
     *  用户名查找用户  
     * @param username
     */
	User selectUserByUsername(String username) throws Exception;
	/**
	 * 插入用户角色
	 * @param permissionView
	 * @throws Exception
	 */
	void insertUserRole(PermissionView permissionView)throws Exception;
	
	/**
	 * 用户名查找用户权限
	 * @param username
	 * @return
	 */
	List<String> selectPermissionByUsername(String username) throws Exception;
	/**
	 * 查找用户具有的角色
	 * @param username
	 * @return
	 * @throws Exception
	 */
	List<String> selectUserRoleByUserName(String username)throws Exception;
}
