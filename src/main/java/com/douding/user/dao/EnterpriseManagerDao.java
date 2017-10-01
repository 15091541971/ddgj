package com.douding.user.dao;

import com.douding.user.entity.Enterprise;

public interface EnterpriseManagerDao {
	/**
	 * 查询企业所有信息
	 * @param enterpriseId
	 * @return
	 * @throws Exception
	 */
   Enterprise queryEnterpriseAll(String enterpriseId)throws Exception;
}
