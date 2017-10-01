package com.douding.user.service;


import com.douding.user.entity.Enterprise;
import com.douding.user.entity.Message;
import com.douding.user.entity.User;
import com.douding.util.NodeResult;

public interface IUserResgisterService {
   /**
    * 增加用戶
    * @param user
    * @return
    * @throws Exception
    */
	NodeResult addUser(User user)throws Exception;
	/**
	 * 手機號碼查找用戶
	 * @param userPhone
	 * @return
	 * @throws Exception
	 */
	NodeResult selectUserByPhone(String userPhone)throws Exception;
	/**
	 * 普通用户信息补全
	 * @param consumer
	 * @return
	 * @throws Exception
	 */
	NodeResult completeInformation(Message message)throws Exception;
    /**
    * 查询普通用户Id
    * @param consumer
    * @return
    * @throws Exception
    */
   NodeResult selectConsumerId(Message message)throws Exception;
   /**
    * 更新普通用户信息
    * @param consumer
    * @throws Exception
    */
    NodeResult updateConsumerInfo(Message message)throws Exception;
    /***
     * 更新用户认证状态
     * @param user
     * @return
     * @throws Exception
     */
   NodeResult updateUserStatus(User user)throws Exception;

}
