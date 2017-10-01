package com.douding.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.shiro.codec.Base64;

public class MD5 {
	//MS5加密
		public static String md5(String str){
			try {
				MessageDigest md=MessageDigest.getInstance("MD5");
				byte[] input=str.getBytes();
				byte[] output=md.digest(input);
				return Base64.encodeToString(output);
				
			} catch (NoSuchAlgorithmException e){
				e.printStackTrace();
				return "";
		}
	}
		public static void main(String[] args) {
			String psw = md5("123");
			System.out.println(psw);
		}
}
