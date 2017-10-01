package com.douding.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;
public class Utility {
	/**
	 * java生成随机数字和字母组合
	 * @param length
	 * [生成随机数的长度]
	 * @return
	 */
	public static String getCharAndNumr(int length) {
		String val = "";
		Random random = new Random();
		for (int i = 0; i < length; i++) {
			// 输出字母还是数字
			String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num";
			// 字符串
			if ("char".equalsIgnoreCase(charOrNum)) {
				// 取得大写字母还是小写字母
				int choice = random.nextInt(2) % 2 == 0 ? 65 : 97;
				val += (char) (choice + random.nextInt(26));
			} else if ("num".equalsIgnoreCase(charOrNum)) { // 数字
				val += String.valueOf(random.nextInt(10));
			}
		}
		return val;
	}
	/**
	 * id生成器
	 * @return
	 */
	public static String createId(){
			UUID uuid=UUID.randomUUID();
			String id = uuid.toString().replaceAll("-", "");
			return id;
	} 
	/**
	 * 密码加密器
	 */
	public static String md5(String str){
			try {
				MessageDigest md=MessageDigest.getInstance("MD5");
				byte[] input=str.getBytes();
				byte[] output=md.digest(input);
				return null;
			} catch (NoSuchAlgorithmException e){
				e.printStackTrace();
				return "";
		}
	}
	/**
	 * 时间生成器
	 */
	public static String CreateTime(){
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		return time;
	}
	/**
	 * 四位随机数
	 * @return
	 */
	public static String creatsSecurityCode(){
		 int code = (int) ((Math.random()*9000)+1000);
		 String codeStr = code+"";
		return codeStr;
	}

	public static void main(String[] args) {
		String psw = Utility.creatsSecurityCode();
		System.out.println(psw);
	}
}
