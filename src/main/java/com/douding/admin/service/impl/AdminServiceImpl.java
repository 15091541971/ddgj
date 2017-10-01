package com.douding.admin.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douding.admin.dao.AdminDao;
import com.douding.admin.service.IAdminService;
import com.douding.shiro.entity.Permission;
import com.douding.shiro.entity.Role;
import com.douding.util.NodeResult;
@Service
public class AdminServiceImpl implements IAdminService {
   
	
	@Autowired
	private AdminDao adminDao;
	@Override
	public NodeResult selectRoleAllPermission(Role role)
			throws Exception {
		NodeResult result = new NodeResult();
		List<Permission> permissionList = new ArrayList<Permission>();
		permissionList = adminDao.selectRoleAllPermission(role);
		result.setData(permissionList);
		result.setMsg("查询成功");
		result.setStatus(0);
		return result;
	}

}
