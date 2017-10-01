package com.douding.user.service;

import com.douding.user.entity.User;
import com.gj.util.NodeResult;


public interface IUserLoginService {
    /**
     * 查找用户名密码
     * @param user
     * @return
     */
	NodeResult selectUserNameAndPsw(User user)throws Exception;
	/**
	 * 手機號碼查找用戶
	 * @param userPhone
	 * @return
	 * @throws Exception
	 */
   NodeResult selectUserByPhone(String userPhone)throws Exception;
}
