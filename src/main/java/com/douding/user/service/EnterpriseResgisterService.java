package com.douding.user.service;

import java.util.List;

import com.douding.user.entity.Enterprise;
import com.douding.user.entity.User;
import com.douding.user.entity.UserVo;
import com.gj.entity.Result;
import com.gj.util.NodeResult;

public interface EnterpriseResgisterService {
	/**
	    * 添加用戶
	    * @param user
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
	    * 商家基本信息补全
	    * @param enterprise
	    * @throws Exception
	    */
	   NodeResult enterpriseInfo(Enterprise enterprise)throws Exception;
	   /**
	    * 商家营业执照法人身份证照上传
	    * @param enterprise
	    * @throws Exception
	    */
	   NodeResult enterprisePic(Enterprise enterprise)throws Exception;
	   /**
	    * 查询上商家id
	    * @param enterprise
	    * @return
	    * @throws Exception
	    */
	   NodeResult selectUserId(Enterprise enterprise)throws Exception;
	   /**
	    * 商家更新信息
	    * @param enterprise
	    * @throws Exception
	    */
	   NodeResult updateEnterpriseInfo(Enterprise enterprise)throws Exception;
	   /**
	    * 更新企业认证状态
	    * @param user
	    */
	   NodeResult updateEnterpriseStatus(User user);
	   /**
	    * 查询未审核企业
	    * @return
	    */
	   Result selectEnterpriseUnchecked(UserVo userVo);
	   /**
	    * 查询为审核企业信息
	    * @param fromId
	    * @return
	    */
	   Result selectEnterpriseMSG(String fromId);
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
