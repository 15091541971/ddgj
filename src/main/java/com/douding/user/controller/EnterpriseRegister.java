package com.douding.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.douding.lmc.model.TalkNode;
import com.douding.lmc.service.TalkDataService;
import com.douding.lmc.service.TalkHttpService;
import com.douding.lmc.service.impl.TalkDataServiceImpl;
import com.douding.lmc.service.impl.TalkHttpServiceImplApache;
import com.douding.shiro.entity.PermissionView;
import com.douding.shiro.entity.Role;
import com.douding.shiro.service.impl.UserAuthenticationServiceImpl;
import com.douding.user.entity.Enterprise;
import com.douding.user.entity.User;
import com.douding.user.service.impl.EnterpriseRegisterServiceImpl;
import com.douding.util.FormatValidation;
import com.douding.util.MD5;
import com.douding.util.Utility;
import com.gj.entity.Result;
import com.gj.util.FileUploadUtil;
import com.gj.util.NodeResult;

@Controller
public class EnterpriseRegister {
	@Autowired
	private EnterpriseRegisterServiceImpl resgisterService;
	@Autowired
	private UserAuthenticationServiceImpl  userAuthenticationServiceImpl;
	private TalkHttpService service = new TalkHttpServiceImplApache();
	private TalkDataService talkDataService = new TalkDataServiceImpl(service);
	 /**
	  * 企业注册
	  * @param user
	  * @param request
	  * @param response
	  * @return
	  */
	@RequestMapping("/enterpriseRegister.do")
    public String userRegister(User user,HttpServletRequest request,HttpServletResponse response,
    		@Param(value="PhoneCode")String PhoneCode){
    	NodeResult result = new NodeResult();
    	String phone = user.getUserPhone();
		String passWord = user.getUserPassword();
		String passWord2 = user.getUserPassword2(); 
		if ("".equals(passWord) || passWord == null || 
				"".equals(passWord2) || passWord2 == null ||
				FormatValidation.regxPassword(passWord)||FormatValidation.regxPassword(passWord2)||   //密码长度不正确
				"".equals(phone)||phone ==null) {
				result.setMsg("请输入正确的信息");
				result.setStatus(2);
				request.setAttribute("errorMsg", result);
				return  "sign_buss";
			}
		//手机验证码
		String phoneCode = (String)request.getSession().getAttribute("messageCode");
		if("".equals(PhoneCode)||PhoneCode==null||!PhoneCode.equals(phoneCode)){
			result.setMsg("手机验证码不正确");
			result.setStatus(2);
			request.setAttribute("errorMsg", result);
			return  "sign_buss";
		}
		if (FormatValidation.regxPhoneNumber(phone)) { // 正则匹配手机号码与类别判断
			if (passWord.equals(passWord2)) { // 判断两次密码是否一致
				//Md5Hash md5Hash = new Md5Hash(passWord);
				String psw = MD5.md5(passWord);
				String id = Utility.createId();
				      user.setUserId(id);
				      user.setUserName(phone);
				      user.setStatus(8);      //设置用户状态为未认证
				      user.setType(1);         //用户类别为企业用户
					  user.setUserPassword(psw);   //md5加密
					  PermissionView permissionView = new PermissionView();    //权限包装类
					  Role role = new Role();             //角色
					  role.setRoleId(2);                        //企业角色
					  permissionView.setRole(role);   
					  permissionView.setUserModel(user);
						try {
							TalkNode node = talkDataService.userSave(user.getUserPhone(),user.getUserPassword(),user.getUserPhone());
							if(node.getStatusCode()==200){
								result = resgisterService.addUser(user); 
								userAuthenticationServiceImpl.insertUserRole(permissionView);
							}else{
								result.setMsg("注册失败");
								result.setStatus(3);
								request.setAttribute("errorMsg", result);
								return "sign_buss" ;
							}
							
						} catch (Exception e) {
							e.printStackTrace();
							result.setStatus(3);
							result.setMsg("发生了异常");
							request.setAttribute("errorMsg", result);
							return "sign_buss" ;
						}
						result.setData(user);
						request.setAttribute("userInfo", result);
					} else {
						request.setAttribute("errorMsg", result);
						result.setStatus(4);
						result.setMsg("两次密码不一致！");
						request.setAttribute("errorMsg", result);
						return"sign_buss"; 
					}
		}else{
			result.setMsg("信息填写错误！");
			result.setStatus(5);
			request.setAttribute("errorMsg", result);
			return "sign_buss";
		}
		
		return  "regsuccess";
    }
	@ResponseBody
	@RequestMapping("/findEnterpriseByPhone.do")
	public NodeResult selectUserByPhone(String phone) {
		NodeResult result = null;
		try {
			result = resgisterService.selectUserByPhone(phone);
		} catch (Exception e) {
			e.printStackTrace();
			result.setMsg("未知错误");
		}
		return result;
	}
	/**
	 * 商家基本信息补全
	 * @param enterprise
	 * @param request
	 * @return
	 */

@RequiresPermissions("enterprise:userInfo:update")	  //此方法需要权限
@RequestMapping("enterpriseInfo.do")	
 public String enterpriseInfo(Enterprise enterprise,HttpServletRequest request){
	NodeResult result = new NodeResult();
	User user =  (User)request.getSession().getAttribute("userInfo");
	 if(user==null || "".equals(user)){                                   
		  result.setMsg("您还没用登陆，请先登录");
		  result.setStatus(6);
		  return "sjxx";
		}
	 try {
		 enterprise.setEnterpriseId(user.getUserId());
		 enterprise.setCreateTime(Utility.CreateTime());
		 result = resgisterService.selectUserId(enterprise);
		 String userId = (String)result.getData();    
		 if(userId!=null){                                                        //判断商家信息是否已存在,存在则更新，不存在则插入
			 resgisterService.updateEnterpriseInfo(enterprise);
		 }else{
			 resgisterService.enterpriseInfo(enterprise);
		 }
	} catch (Exception e) {
		result.setMsg("发生了异常");
		result.setStatus(11);
		request.setAttribute("errorMsg", result);
		System.out.println("信息补全发生异常");
		e.printStackTrace();
		return "sjxx";
	}
	 request.getSession().setAttribute("enterpriseInfo", enterprise);
	 return "sjxxpic";
 }  	
	
	
	/**
	 * 商家上传照片
	 * @param file1
	 * @param file2
	 * @param enterprise
	 * @param request
	 * @return
	 */
    @RequiresPermissions("enterprise:userInfopic:update")	  //此方法需要权限
	@RequestMapping("/enterprisePic.do")
	public  String enterpriseInfo(	  
			@RequestParam(value="legalPersonPicture",required=false) MultipartFile[]  file1,
			@RequestParam(value="LicensePicture",required=false) MultipartFile[]  file2, 
			MultipartHttpServletRequest  request){
    	
		   NodeResult result = new NodeResult();
		   User enterprise = (User)request.getSession().getAttribute("userInfo");  
		   Enterprise en = new Enterprise();
		   en.setEnterpriseId(enterprise.getUserId());
		   if(enterprise==null || "".equals(enterprise)){  	                                 
				  result.setMsg("您还没用登陆，请先登录");
				  result.setStatus(6);
				  request.getSession().setAttribute("errorMsg", result);
				  return "error";	
				}
		   String idCardFolder = "E://51douding/img/idCard/";   //身份证照片所在文件夹
		   String  LicensePictureFolder = "E://51douding/img/license/";  //营业执照所在文件夹
		   try {
			result = FileUploadUtil.picUpload2(file1, request, idCardFolder, "E://51douding/enterprisedocument", false);        //身份证照片上传
			String idCardUrl = result.getCount().get(0)+","+result.getCount().get(1);    //获取身份证照片保存路径
			en.setLegalPersonPicture(idCardUrl);
			result = FileUploadUtil.picUpload2(file2, request, LicensePictureFolder,"E://51douding/enterprisedocument", false);  //营业执照上传
			String linceseUrl = result.getCount().get(0);                            //获取营业执照保存路径
			en.setBusinessLicensePicture(linceseUrl);
		    result = resgisterService.enterprisePic(en);           //保存照片路径
		    enterprise.setStatus(1);                                               //等待审核
		    resgisterService.updateEnterpriseStatus(enterprise); 
		} catch (Exception e) {
			System.out.println("照片上传发生异常");
			e.printStackTrace();
		}
		   result.setData(en);
		   request.getSession().setAttribute("enterpriseInfo", result);
        return "OK";		
	}
    /**
     * 图片验证码效验
     * @param code
     * @param request
     * @return
     */
    @RequestMapping("validationCode")
    @ResponseBody
    public Result validationCode(@Param(value="code")String code,HttpServletRequest request){

    	 Result r = new Result();
    	 String codeStr = (String)request.getSession().getAttribute("code");
    
    	 String capitalCode = code.toUpperCase();
    	 String capitalCodeStr = codeStr.toUpperCase();
 		//图片验证码
 		if("".equals(code)||code==null||!capitalCode.equals(capitalCodeStr)){
 			r.setMsg("验证码不正确");
 			r.setStatus(500);
 		    request.getSession().removeAttribute("code");
 		    String codeStrr = (String)request.getSession().getAttribute("code");
 		    System.out.println(">>>>>>>>>>>>>>>>"+codeStrr);
 			return  r;
 		}else{
 			r.setMsg("验证码正确");
 			r.setStatus(200);
 			request.getSession().removeAttribute("code");
 			return r;
 		}
    	
    }
		
}
