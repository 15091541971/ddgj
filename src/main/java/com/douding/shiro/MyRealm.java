package com.douding.shiro;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Component;

import com.douding.shiro.service.UserAuthenticationService;
import com.douding.user.entity.User;
@Component
public class MyRealm  extends AuthorizingRealm{
    
	@Resource
	private UserAuthenticationService  authenticationService;
	 
	@Override
	public void setName(String name) {
		super.setName("myRealm");
	}
	
	/**
	 *授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		System.out.println(".............执行");
		String  username = (String)principals.getPrimaryPrincipal();
		
		
		List<String>permissionList = null;
		try {
			permissionList = authenticationService.selectPermissionByUsername(username);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		List<String> permissions = new ArrayList<String>();
//	  if(permissionList!=null){
//		  for(String permission:permissionList){
//			  permissions.add(permission);
//		  }
//	  }
		
		//查到权限数据，返回授权信息(要包括 上边的permissionList)
		String userPhone= (String) principals.getPrimaryPrincipal();
		System.out.println("======================"+userPhone);
		List<String> rolelist=null;
		try {
			rolelist=authenticationService.selectRoles(userPhone);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		//将上边查询到授权信息填充到simpleAuthorizationInfo对象中
		simpleAuthorizationInfo.addStringPermissions(permissionList);
		simpleAuthorizationInfo.addRoles(rolelist);
		
   	return simpleAuthorizationInfo;
	}
   
	/**
	 * 身份验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		
		String phone = (String)token.getPrincipal();
		//String password = new String((char[])token.getCredentials());
		if(token.getCredentials()==null){
			throw new AuthenticationException("请输入密码");
		}
		Subject subject = SecurityUtils.getSubject();
		User user = null;
				System.out.println(phone);
		try {
			
		user = authenticationService.selectUserUsername(phone);
		
		} catch (Exception e) {
			e.printStackTrace();
		}			
		if(user==null){
			return null;
		} 
		
		Session session = subject.getSession();
		session.setAttribute("userInfo", user);
		String userId = user.getUserId();
		session.setAttribute("userId", userId);
		
		System.out.println(user.getUserPassword());
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
				user.getUserPhone(),user.getUserPassword(), getName());
		
		return simpleAuthenticationInfo;
	}
	//清除缓存
		public void clearCached() {
			PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
			super.clearCache(principals);
		}
}
