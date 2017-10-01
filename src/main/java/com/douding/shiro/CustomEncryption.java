package com.douding.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import com.douding.util.MD5;
//自定义密码加密匹配器
public class CustomEncryption extends SimpleCredentialsMatcher  {
    
	@Override
	public boolean doCredentialsMatch(AuthenticationToken token,
			AuthenticationInfo info) {
		String psw= new String((char[])token.getCredentials());
		String password = MD5.md5(psw);
		Object db_login_password = getCredentials(info);
		boolean matches = super.equals(password,db_login_password);
		return matches;
	}
}
