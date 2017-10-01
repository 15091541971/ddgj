package com.douding.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douding.user.dao.UserLoginDao;
import com.douding.user.entity.User;
import com.douding.user.service.IUserLoginService;
import com.gj.util.NodeResult;

@Service
public class UserLoginService implements IUserLoginService {
	
     @Autowired(required=true)
	private UserLoginDao loginDao;
	/**
	 * 用户登陆
	 */
	@Override
	public NodeResult selectUserNameAndPsw(User user)throws Exception {
		NodeResult result = new NodeResult();
		User user1 = new User();
		user1 = loginDao.selectUserNameAndPsw(user); 
		if(user1!=null){
		result.setData(user1);
		result.setStatus(0);
		return result;
		}else{
			result.setMsg("用户名或密码错误");
			result.setStatus(1);
			return result;
			
		}
	
	}
	@Override
	public NodeResult selectUserByPhone(String userPhone) throws Exception {
		NodeResult result = new NodeResult();
		result.setData(this.loginDao.selectUserByPhone(userPhone));
		return result;
	}

}
