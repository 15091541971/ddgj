package com.douding.user.service;

import com.douding.user.entity.Enterprise;
import com.douding.util.NodeResult;

public interface IEnterpriseManagerService {
	/**
	 * 查询企业所有信息
	 * @param enterpriseId
	 * @return
	 * @throws Exception
	 */
   NodeResult queryEnterpriseAll(String enterpriseId)throws Exception;
}
