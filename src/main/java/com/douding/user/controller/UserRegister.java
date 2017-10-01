package com.douding.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.codec.Base64;
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
import com.douding.user.entity.Message;
import com.douding.user.entity.User;
import com.douding.user.service.impl.UserRegisterService;
import com.douding.util.FileUploadUtil;
import com.douding.util.FormatValidation;
import com.douding.util.MD5;
import com.douding.util.NodeResult;
import com.douding.util.Utility;
@Controller
public class UserRegister {
	@Autowired
	private UserRegisterService registerService;
	@Autowired
	private UserAuthenticationServiceImpl  userAuthenticationServiceImpl;
	private TalkHttpService service = new TalkHttpServiceImplApache();
	private TalkDataService talkDataService = new TalkDataServiceImpl(service);
	
	
	//用户注册
	@RequestMapping("/userRegister.do")
    public String userRegister(User user,HttpServletRequest request,
    		@Param(value="PhoneCode")String PhoneCode ){
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
				return  "sign_person";
			}
		String phoneCode = (String)request.getSession().getAttribute("messageCode");
		if("".equals(PhoneCode)||PhoneCode==null||!PhoneCode.equals(phoneCode)){
			result.setMsg("手机验证码不正确");
			result.setStatus(2);
			request.setAttribute("errorMsg", result);
			return  "sign_person";
		}
		
		if (FormatValidation.regxPhoneNumber(phone)) { // 正则匹配手机号码与类别判断
			if (passWord.equals(passWord2)) { // 判断两次密码是否一致
				      //Md5Hash md5Hash = new Md5Hash(passWord);
				      String psw = MD5.md5(passWord);
				      String id = Utility.createId();
				      user.setUserId(id);
				      user.setUserName(id);
				      user.setStatus(0);    //用户未认证
				      user.setType(0);      //设置用户类别为个人用户
					  user.setUserPassword(psw);   //md5加密
					  Role role = new Role();
					  role.setRoleId(1);        //用户角色
					  PermissionView permissionView = new PermissionView() ;
					  permissionView.setRole(role);    
					  permissionView.setUserModel(user);
						try {
							TalkNode node = talkDataService.userSave(user.getUserId(), user.getUserPassword(), user.getUserPhone());
							if(node.getStatusCode()==200){
								result = registerService.addUser(user);
								userAuthenticationServiceImpl.insertUserRole(permissionView);	
							}else{
								result.setMsg("注册失败");
								result.setStatus(3);
								request.setAttribute("errorMsg", result);
								return "sign_person" ;
							}
						} catch (Exception e) {
							e.printStackTrace();
							result.setStatus(3);
							result.setMsg("发生了异常");
							request.setAttribute("errorMsg", result);
							return "sign_person" ;
						}
						result.setData(user);
						request.setAttribute("userInfo", result);
					} else {
						request.setAttribute("errorMsg", result);
						result.setStatus(4);
						result.setMsg("两次密码不一致！");
						request.setAttribute("errorMsg", result);
						return"sign_person"; 
					}
		}else{
			result.setMsg("信息填写错误！");
			result.setStatus(5);
			request.setAttribute("errorMsg", result);
			return "sign_person";
		}
		
		return  "regsuccess";
    }
	@ResponseBody
	@RequiresGuest
	@RequestMapping("/findUserByPhone.do")
	public NodeResult selectUserByPhone(String phone) {
		NodeResult result = null;
		try {
			result = registerService.selectUserByPhone(phone);
		} catch (Exception e) {
			e.printStackTrace();
			result.setMsg("未知错误");
		}
		return result;
	}
	//用户信息补全
	@RequiresPermissions("user:userInfo:update")   //次方法需要权限
	@RequestMapping("personInfo.do")
	public String personInfo(Message message,   @RequestParam(value="files",required=false)  MultipartFile[]  files,
			MultipartHttpServletRequest  request){
		System.out.println("私人用户认证：+++++++++++++++++++++++++++++++++++");
		NodeResult result = new NodeResult();
		User user = (User)request.getSession().getAttribute("userInfo");
		if(user==null || "".equals(user)){                                   
		  result.setMsg("您还没用登陆，请先登录");
		  result.setStatus(6);
		  return "login";
		}
		message.setUserId(user.getUserId());
		String floder = "/img/head/";    //图片保存的文件夹
		
		try {
			 result =  FileUploadUtil.picUpload(files, request, floder,true);      //用户头像保存,开启图片压缩
			 List<String> urlList = result.getCount();
			 String url ="";
			 if(urlList.size() != 0){
				 url = urlList.get(0);
			 }
			 message.setUserIcon(url);
			 message.setRegisterDate(Utility.CreateTime());
			 message.setId(user.getUserId());
			if(message.getName()==null||"".equals(message.getName())){
				result.setMsg("请完整填写信息");
				result.setStatus(9);
				return "grxx";
			}
			 result = registerService.selectConsumerId(message);
			 String userId = (String)result.getData();
			 if(userId!=null){
				 result =  registerService.updateConsumerInfo(message);
				 user.setStatus(1);                                        //设置用户状态为已认证
				 registerService.updateUserStatus(user);  //更新用户认证状态
				 result.setMsg("更新成功");
			 }else{
				 result =  registerService.completeInformation(message);     //保存普通用户详细信息
				 result.setMsg("保存成功");
			 }
		} catch (Exception e) {
			e.printStackTrace();
			result.setMsg("发生了异常");
			result.setStatus(10);
			return "grxx";
		}
		return "index";
	
	}
}
