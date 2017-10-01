package com.douding.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douding.user.dao.EnterpriseResgisterDao;
import com.douding.user.entity.Enterprise;
import com.douding.user.entity.User;
import com.douding.user.entity.UserVo;
import com.douding.user.service.EnterpriseResgisterService;
import com.douding.util.FormatValidation;
import com.gj.entity.Result;
import com.gj.util.NodeResult;



@Service
public class EnterpriseRegisterServiceImpl implements EnterpriseResgisterService {
	
	 @Autowired
	  private EnterpriseResgisterDao resgisterDao;
	
	/**
	    * 添加用户
	    */
		public NodeResult addUser(User user) throws Exception {
			NodeResult result = new NodeResult();
			User user1 = resgisterDao.selectUserByPhone(user.getUserPhone());
			 if(user1 == null){
				 resgisterDao.addUser(user);
				 result.setMsg("注册成功");
				 result.setStatus(0);
			 }else{
				 result.setMsg("该号码已经被注册");
				 result.setStatus(1);
			 }
			return result;
		}
		  /**
		    * 根据手机号码查找用户
		    */
			public NodeResult selectUserByPhone(String userPhone) throws Exception {
				NodeResult result = new NodeResult();
				if(!"".equals(userPhone)){
				   if(FormatValidation.regxPhoneNumber(userPhone)){
					     if(resgisterDao.selectUserByPhone(userPhone)!=null){
					    	 result.setMsg("该号码已经被注册");
					    	 result.setStatus(1);
					     }else{
					    	 result.setMsg("该号码可用");
					     }
				   }else{
					   result.setMsg("请输入正确的手机号码");
					   result.setStatus(1);
				   }
				}else{
				  result.setMsg("空的手机号码，请重新输入");	
				  result.setStatus(1);
					
				}
				
				return result;
			}

	   /**
	    * 商家信息补全
	    */
		@Override
		public NodeResult enterpriseInfo(Enterprise enterprise) throws Exception {
			NodeResult result  = new NodeResult();
			resgisterDao.enterpriseInfo(enterprise);
			result.setMsg("保存成功");
			result.setStatus(0);
			return result;
		}
	    /**
	     * 保存商家证件图片
	     */
		@Override
		public NodeResult enterprisePic(Enterprise enterprise) throws Exception {
			  NodeResult result = new NodeResult();
			  resgisterDao.enterprisePic(enterprise);
			  result.setMsg("照片上传成功");
			  result.setStatus(0);
			  return result;
		}
	    /**
	     * 查询商家Id
	     */
		@Override
		public NodeResult selectUserId(Enterprise enterprise) throws Exception {
			NodeResult result = new NodeResult();
			String userId =  resgisterDao.selectUserId(enterprise);
			result.setData(userId);
			return  result;
			
			
		}
	   /**
	    * 更新商家信息
	    */
		@Override
		public NodeResult updateEnterpriseInfo(Enterprise enterprise)throws Exception {
			NodeResult result = new NodeResult();
			resgisterDao.updateEnterpriseInfo(enterprise);
			result.setMsg("更新成功");
			result.setStatus(0);
			return result;
		}

@Override
public NodeResult updateEnterpriseStatus(User user) {
     	NodeResult result = new NodeResult();
       resgisterDao.updateEnterpriseStatus(user);
       result.setMsg("更新成功");
       result.setStatus(0);
       return result;
}
/**
 * 查找所有未审核企业
 */
@Override
public Result selectEnterpriseUnchecked(UserVo userVo) {
	Result r = new Result();
	List<Enterprise> enList = this.resgisterDao.selectEnterpriseUnchecked(userVo);
	r.setData(enList);
	return r;
  }
/**
 * 查询为审核企业信息
 */
@Override
public Result selectEnterpriseMSG(String fromId) {
	Result r = new Result();
    Enterprise enterprise = this.resgisterDao.selectEnterpriseMSG(fromId);
    r.setData(enterprise);
	return r;
}
/**
 * 未审核企业总数
 */
@Override
public int selectUncheckedSum() {
	
	return this.resgisterDao.selectUncheckedSum();
}
/**
 * 企业审核结果
 */
@Override
public void checkedEnterprise(UserVo userVo) {
	 this.resgisterDao.checkedEnterprise(userVo);
 }
	    
}
