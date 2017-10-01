package com.douding.user.dao;

import com.douding.user.entity.User;

public interface UserLoginDao {
    /**
     * 查找用户名密码
     * @param user
     * @return
     */
	    User selectUserNameAndPsw(User user)throws Exception;
	    /**
		 * 手機號碼查找用戶
		 * @param userPhone
		 * @return
		 * @throws Exception
		 */
	   User selectUserByPhone(String userPhone)throws Exception;
}
