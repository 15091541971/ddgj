package com.douding.user.dao;


import com.douding.user.entity.Enterprise;
import com.douding.user.entity.Message;
import com.douding.user.entity.User;

public interface UserResgisterDao {
   /**
    * 添加用戶
    * @param user
    * @throws Exception
    */
	void addUser(User user)throws Exception;
	/**
	 * 手機號碼查找用戶
	 * @param userPhone
	 * @return
	 * @throws Exception
	 */
   User selectUserByPhone(String userPhone)throws Exception;
   /**
    * 普通用户信息补全
    * @param consumer
    * @return
    */
   void completeInformation(Message message)throws Exception;
   /**
    * 更新普通用户信息
    * @param consumer
    * @throws Exception
    */
    void updateConsumerInfo(Message message)throws Exception;
    /**
    * 查询普通用户Id
    * @param consumer
    * @return
    * @throws Exception
    */
   String selectConsumerId(Message message)throws Exception;
   /**
    * 更新用户认证状态
    * @param user
    * @throws Exception
    */
   void updateUserStatus(User user)throws Exception;
}

  
