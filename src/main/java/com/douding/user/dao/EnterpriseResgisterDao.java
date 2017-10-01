package com.douding.user.dao;

import java.util.List;

import com.douding.user.entity.Enterprise;
import com.douding.user.entity.User;
import com.douding.user.entity.UserVo;

public interface EnterpriseResgisterDao {
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
	    * 商家基本信息补全
	    * @param enterprise
	    * @throws Exception
	    */
	   void enterpriseInfo(Enterprise enterprise)throws Exception;
	   /**
	    * 商家营业执照法人身份证照上传
	    * @param enterprise
	    * @throws Exception
	    */
	   void enterprisePic(Enterprise enterprise)throws Exception;
	   /**
	    * 查询上商家id
	    * @param enterprise
	    * @return
	    * @throws Exception
	    */
	   String selectUserId(Enterprise enterprise)throws Exception;
	   /**
	    * 商家更新信息
	    * @param enterprise
	    * @throws Exception
	    */
	   void updateEnterpriseInfo(Enterprise enterprise)throws Exception;
	   /**
	    * 更新企业认证状态
	    * @param user
	    */
	   void updateEnterpriseStatus(User user);
	   /**
	    * 查询未审核企业
	    * @return
	    */
	   List<Enterprise> selectEnterpriseUnchecked(UserVo userVo);
	   /**
	    * 查询为审核企业信息
	    * @param fromId
	    * @return
	    */
	   Enterprise selectEnterpriseMSG(String fromId);
	   /**
	    * 查询未审核企业总数
	    * @return
	    */
	   int selectUncheckedSum();
	   /**
	    * 对企业进行审核
	    * @param userVo
	    */
	   void checkedEnterprise(UserVo userVo);
}
