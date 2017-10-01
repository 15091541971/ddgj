package com.douding.user.controller;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.douding.shiro.MyRealm;
import com.douding.user.entity.User;
import com.douding.user.service.IUserLoginService;
import com.gj.util.NodeResult;


@Controller
public class UserLogin {
	/**
	 * 用户登陆
	 */
    @Autowired
	private IUserLoginService userLoginService;

    
	@RequestMapping("/login.do")
	  public String Login(HttpServletRequest request,HttpServletResponse response ,String username,String password){
		  String errorClassName = (String) request
	                .getAttribute("shiroLoginFailure");
	        String authticationError = null;
	   
			if(errorClassName != null){
			    if (UnknownAccountException.class.getName().equals(errorClassName)) {
			        authticationError = "用户名不存在";
			        request.setAttribute("authticationError", authticationError);
			        return "login";
			    } else if (IncorrectCredentialsException.class.getName().equals(
			            errorClassName)) {
			        authticationError = "用户名/密码错误";
			        request.setAttribute("authticationError", authticationError);
			        return "login";
			    } else if(AuthenticationException.class.getName().equals(authticationError)){
			    	authticationError = "请输入用户名/密码";
			    	request.setAttribute("authticationError", authticationError);
			        return "login";
			     }else{
			    	 authticationError="发生了错误，请重新输入用户名密码！";
			    	 request.setAttribute("authticationError", authticationError);
				     return "login";
					}
			     }
		
	        return"login";
	  }
	
	  }

