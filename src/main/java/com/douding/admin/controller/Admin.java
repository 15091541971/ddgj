package com.douding.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.douding.admin.service.IAdminService;
import com.douding.shiro.entity.Role;
import com.douding.user.entity.UserVo;
import com.douding.user.service.impl.EnterpriseRegisterServiceImpl;
import com.douding.util.NodeResult;
import com.gj.entity.Result;

@Controller
public class Admin {
  @Autowired	
  private IAdminService adminService;
  @Autowired
  private EnterpriseRegisterServiceImpl registerServiceImpl;
  /**
   * 查询角色的所有权限
   * @param roleName
   * @param request
   * @return
   */
  @RequestMapping("selectRoleAllPermission.do")
  @RequiresPermissions("admin:userPermission:select")
  public String selectRoleAllPermission(String roleName,HttpServletRequest request){
	  NodeResult result = new NodeResult();
 	  Role role = new Role();
	  role.setRoleName(roleName);
	  try {
		result =  adminService.selectRoleAllPermission(role);
		request.getSession().setAttribute("permissionInfo", result);
	} catch (Exception e) {
		result.setMsg("查询出现异常");
		result.setStatus(1);
		e.printStackTrace();
	}
	  return"adminManger";
  }
  /**
   * 查询所有未审核企业
   * @param userVo
   * @param request
   * @return
   */
  @RequestMapping("selectUncheck")
  public String selectUncheck(UserVo userVo,HttpServletRequest request){
	  Result r = new Result();
	  r = this.registerServiceImpl.selectEnterpriseUnchecked(userVo);
	  int sum = this.registerServiceImpl.selectUncheckedSum();
	  r.setNumber(sum);
	  request.setAttribute("uncheck", r);
	  return "jsp/admin/QYZCSH";
  }
  /**
   * 查询企业信息详情
   * @param fromId
   * @return
   */
  @RequestMapping("selectEnterpriseMSG")
  public String selectEnterpriseMSG(String fromId,HttpServletRequest request){
	  Result r = new Result();
	  r = this.registerServiceImpl.selectEnterpriseMSG(fromId);
	  request.setAttribute("enterpriseMsg", r);
	  return "jsp/admin/QYXQ";
  }
  @RequestMapping("checkedEnterprise")
 public String checkedEnterprise(UserVo userVo){
	 this.registerServiceImpl.checkedEnterprise(userVo);
	 return "jsp/admin/QYZCSH";
 }
  
}
