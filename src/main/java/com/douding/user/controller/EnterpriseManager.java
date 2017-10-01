package com.douding.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.douding.user.service.IEnterpriseManagerService;
import com.douding.util.NodeResult;

@Controller
public class EnterpriseManager {
	@Autowired
	private IEnterpriseManagerService enterpriseManagerService;
	@RequestMapping("enterpriseAllInfo.do")
    public String enterpriseAllInfo(String enterpriseId,HttpServletRequest request){
    	NodeResult result = new NodeResult();
		try {
			result = enterpriseManagerService.queryEnterpriseAll(enterpriseId);
			result.setMsg("查询成功");
			result.setStatus(0);	
		} catch (Exception e) {
			result.setMsg("发生异常");
			result.setStatus(1);
			e.printStackTrace();
		    request.getSession().setAttribute("errorMsg", result);
		    return"error";
			
		}
		request.getSession().setAttribute("enterpriseInfo", result);
    	return "Emanage";
    }
	
	
}
