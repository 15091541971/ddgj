package com.douding.admin.service;

import com.douding.shiro.entity.Role;
import com.douding.util.NodeResult;

public interface IAdminService {
	/**
	 * 查找角色全部权限
	 * @param result
	 * @return
	 */
	NodeResult selectRoleAllPermission(Role role)throws Exception;
}
