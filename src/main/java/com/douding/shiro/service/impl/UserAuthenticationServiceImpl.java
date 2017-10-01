package com.douding.shiro.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douding.admin.dao.AdminDao;
import com.douding.shiro.dao.UserAuthenticationDao;
import com.douding.shiro.entity.PermissionView;
import com.douding.shiro.service.UserAuthenticationService;
import com.douding.user.entity.User;
@Service
public class UserAuthenticationServiceImpl implements UserAuthenticationService {
   
	@Resource
	private UserAuthenticationDao userAuthenticationDao;
	@Autowired
	private AdminDao adminDao;
	@Override
	public User selectUserUsername(String username) throws Exception {
		return userAuthenticationDao.selectUserByUsername(username);
	}

	@Override
	public List<String> selectPermissionByUsername(String username)
			throws Exception {
		return userAuthenticationDao.selectPermissionByUsername(username);
	}

	@Override
	public void insertUserRole(PermissionView permissionView) throws Exception {
	    
		userAuthenticationDao.insertUserRole(permissionView);
		
	}

	@Override
	public List<String> selectUserRoleByUserName(String username)
			throws Exception {
		
		return userAuthenticationDao.selectUserRoleByUserName(username);
	}

	@Override
	public List<String> selectRoles(String userPhone) throws Exception {
		// TODO Auto-generated method stub
		List<String> list=adminDao.selectRoles(userPhone);
		return list;
	}
 
}

