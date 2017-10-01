package com.douding.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douding.user.dao.EnterpriseManagerDao;
import com.douding.user.entity.Enterprise;
import com.douding.user.service.IEnterpriseManagerService;
import com.douding.util.NodeResult;
@Service
public class EnterpriseManagerServiceImpl implements IEnterpriseManagerService {
    @Autowired
	private EnterpriseManagerDao enterpriseManagerDao;
	@Override
	public NodeResult queryEnterpriseAll(String enterpriseId) throws Exception {
		NodeResult result = new NodeResult();
		Enterprise enterprise = new Enterprise();
		enterprise = enterpriseManagerDao.queryEnterpriseAll(enterpriseId);
		result.setData(enterprise);
		result.setMsg("查询成功");
		result.setStatus(0);
		return result;
	}

}
