package com.douding.user.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.douding.user.dao.UserResgisterDao;
import com.douding.user.entity.Enterprise;
import com.douding.user.entity.Message;
import com.douding.user.entity.User;
import com.douding.user.service.IUserResgisterService;
import com.douding.util.FormatValidation;
import com.douding.util.NodeResult;

@Service
public class UserRegisterService implements IUserResgisterService{
	
	@Autowired(required=true)
    private UserResgisterDao userResgisterDao;
   /**
    * 添加用户
    */
	public NodeResult addUser(User user) throws Exception {
		NodeResult result = new NodeResult();
		User user1 = userResgisterDao.selectUserByPhone(user.getUserPhone());
		 if(user1 == null){
			 userResgisterDao.addUser(user);
			 result.setMsg("注册成功");
			 result.setStatus(0);
		 }else{
			 result.setMsg("该号码已经被注册");
			 result.setStatus(1);
		 }
		return result;
	}
   /**
    * 根据手机号码查找用户
    */
	public NodeResult selectUserByPhone(String userPhone) throws Exception {
		NodeResult result = new NodeResult();
		if(!"".equals(userPhone)){
		   if(FormatValidation.regxPhoneNumber(userPhone)){
			     if(userResgisterDao.selectUserByPhone(userPhone)!=null){
			    	 result.setMsg("该号码已经被注册");
			    	 result.setStatus(1);
			     }else{
			    	 result.setMsg("该号码可用");
			     }
		   }else{
			   result.setMsg("请输入正确的手机号码");
			   result.setStatus(1);
		   }
		}else{
		  result.setMsg("空的手机号码，请重新输入");	
		  result.setStatus(1);
			
		}
		
		return result;
	}
   /**
    * 普通用户信息补全
    */
	@Override
	public NodeResult completeInformation(Message message) throws Exception {
		NodeResult result = new NodeResult();
		userResgisterDao.completeInformation(message);;
		result.setData(message);
		result.setMsg("保存成功");
		result.setStatus(0);
		return   result;
		
	}
  
     /**
      * 查询普通用户id
      */
	@Override
	public NodeResult selectConsumerId(Message message) throws Exception {
		 NodeResult result = new NodeResult();
		String consumerId =userResgisterDao.selectConsumerId(message);
		result.setData(consumerId);
		result.setMsg("查询成功");
		result.setStatus(0);
		return result;
	}
    /**
     * 更新普通用户id
     */
	@Override
	public NodeResult updateConsumerInfo(Message message) throws Exception {
		NodeResult result = new NodeResult();
	   userResgisterDao.updateConsumerInfo(message);
	   result.setMsg("更新成功");
	   result.setStatus(0);
		return result;
		
	}
	@Override
	public NodeResult updateUserStatus(User user) throws Exception {
		NodeResult result = new NodeResult();
		userResgisterDao.updateUserStatus(user);
		result.setMsg("更新成功");
		result.setStatus(0);
		return result;
	}

    
}
