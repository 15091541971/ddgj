package douding.test;


import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.subject.Subject;
import org.junit.Assert;
import org.springframework.context.ApplicationContext;
import org.unitils.UnitilsJUnit4;
import org.unitils.spring.annotation.SpringApplicationContext;
import org.unitils.spring.annotation.SpringBeanByType;

import com.douding.admin.dao.AdminDao;
import com.douding.shiro.MyRealm;

public class Test extends UnitilsJUnit4{
	@SpringApplicationContext({"spring-config.xml","spring-mybatis.xml"})
	private ApplicationContext applicationContext;
	@SpringBeanByType
	private MyRealm myRealm;
	@SpringBeanByType
	private AdminDao adminDao;
	public void t(){
		Assert.assertNotNull(myRealm);
		UsernamePasswordToken token=new UsernamePasswordToken("15091541971", "123456");
		myRealm.getAuthenticationInfo(token);
	}
	 @org.junit.Test
    public void getSecurity(){
    	DefaultSecurityManager securityManager=new DefaultSecurityManager(myRealm);
    	securityManager.hasRole(null, "");
    	SecurityUtils.setSecurityManager(securityManager);
    	Subject subject=SecurityUtils.getSubject();
    	UsernamePasswordToken token=new UsernamePasswordToken("15091541971", "4QrcOUm6Wau+VuBX8g+IPg==");
    	subject.login(token);
    	System.out.println(subject.getClass().getName());
    	System.out.println("isAuthenticated:"+subject.isAuthenticated());
    	
    	System.out.println("hasRole:"+subject.hasRole("admin"));    	
    }
   
	public void t1(){
		try {
			
			String name=adminDao.selectRoles("15091541971").get(0);
			
				System.out.println(name);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
