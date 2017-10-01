package com.douding.util;

import com.douding.user.entity.User;

public class Test {
   public static void main(String[] args) {
	  User u1 = new User();
	  u1.setUserName("asdasd");
	  u1.setUserPassword("asdasdasd");
	  User u2 = new User();
	  System.out.println(u1==null);
	  System.out.println(u2);
}
}
