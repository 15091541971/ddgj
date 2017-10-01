package com.douding.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 表单正则效验
 * @author Administrator
 *
 */
public class FormatValidation {
	/**
	 * 手机号码正则匹配
	 * @param userPhone
	 * @return
	 */
   public static boolean regxPhoneNumber(String userPhone){
	   if("".equals(userPhone)||userPhone==null){
		   return false;
	   }
	   String regx = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
	   Pattern p = Pattern.compile(regx);
	   Matcher m = p.matcher(userPhone);
	   return m.matches();
   }
   /**
    * 密码正则匹配
    * @param password
    * @return
    */
   public static boolean regxPassword(String password){
	   if("".equals(password)||password==null){
		   return false;
	   }
	   String regx = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$";
	   Pattern p =Pattern.compile(regx);
	   Matcher m = p.matcher(password);
	   return m.matches();
   }
   
   public static void main(String[] args) {
	   System.out.println("1212121212121");
	   System.out.println(FormatValidation.regxPassword(""));
}

}
