
 
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人注册</title>
		<link rel="stylesheet" href="/css/login&sign.css" />
		 <script type="text/javascript" src="js/sign.js" ></script> 
		<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
		 <script type="text/javascript" src="js/sendCode.js"></script> 
	<script type="text/javascript"> 
		      //后台验证手机号码
		      $(function(){
                    $("#pnone"). focusout(function(){
                        var phone = $(this).val();
                        $.ajax({
                           url:"<%=path%>/findUserByPhone.do",
                           data:{"phone":phone},
                            type:"post",
                            dataType:"json",
                            success:function(result){
                            var massage = result.msg;
                            $(".phoneMsg").text(""+massage);
                     }
            });       
            
             });  
                     //是否勾选同意协议判断
                       $(".sign_xiyi").click(function(){
                        var a =  $(this).attr("checked");
                        if(a){
                          $(".sign_sub").removeAttr("disabled").css({"background":"#4ca4fb"}); 	
                        }else{
                          $(".sign_sub").attr({"disabled":"disabled"}).css({"background":"#787878"});
                        }
    
                       });
                    //判断两次密码是否一致
                    $("#userPassword2").keyup(function(){
                       var psw = $("#pawpwd").val();
                        if($(this).val()!=psw){
                          $("#errorMsg").text("两次密码不一致！")
                        }else{
                         $("#errorMsg").text("");
                        }
                     });
                      $("#imgCode").click(function(){
                           var a = $(this).attr("src","<%=path%>/imgcode.do?timestamp="+(new Date()).valueOf());
                                                      
                        })
   })
		     
		</script> 
		<script type="text/javascript">
		function open(){
			$("#second").attr("disabled", true);
		}
		
		$(function(){
			$("#pnone").keyup(function(){
				$("#pnone").css("background-color","#D6D6FF");
				if(isPhoneNum()){
					 obj.removeAttr("disabled"); 
				}else{
					
					
				}
				});
		})
		var countdown; 
		function settime(obj) { 
			
		    if (countdown <= 0) { 
		        obj.removeAttr("disabled");    
		        obj.text("免费获取验证码"); 
		        setCookie("secondsremained",60);
		        return;
		    } else { 
		        obj.attr("disabled", true); 
		        obj.text("重新发送(" + countdown + ")"); 
		        countdown--;
		       
		    } 
		    setTimeout(function() { settime(obj) },1000) 
		} 
		//校验手机号是否合法
		function isPhoneNum(){
		    var phonenum = $("#pnone").val();
		    var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
		    if(!myreg.test(phonenum)){ 
		        $(".phoneMsg").text("请输入正确的手机号码")
		        return false; 
		    }else{
		        return true;
		    }
		}
		//设置cookie 作者：王伟
		function setCookie(name,value)
		{
		  
		    var exp = new Date();
		    exp.setTime(exp.getTime() +60*1000);
		    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
		} 
		//获得cookie的值  作者：王伟
		function getCookie(name)
		{
		    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)"); //正则匹配
		    if(arr=document.cookie.match(reg)){
		      return unescape(arr[2]);
		    }
		    else{
		     return null;
		    }
		} //发送验证码请求
		 function sendCode(){
		    	var userPhone = $("#pnone").val();
		  
		    	$.ajax({
	    	        async : false,
	    	        cache : false,
	    	        type : 'POST',
	    	        url : "sendCode.do",// 请求的action路径
	    	        data:{"userPhone":userPhone},
	    	        error : function() {// 请求失败处理函数
	    	        	/* alert("error"); */
	    	        },
	    	        success : function(result){
	    	        	/*  alert("success");  */
	    	        	   
	    	        }
	    	    }); 
		    }
		//点击发送验证码    作者：王伟
		$(function(){
		    $("#second").click(function (){
		    	if(isPhoneNum()){
		    		sendCode();
		    		countdown=getCookieValue("secondsremained");
			    	var n=countdown.length;
			    	 
			    	if(n==0){
			    		countdown=60;
			    		setCookie("secondsremained",60)
			    	}
			    	 var strCookie=document.cookie; 
			    
			    	
			    	  settime($("#second"));//开始倒计时
		    	}else{
		    		alert("请输入手机号码");
		    	}
		    	 
		    })
		    	
		  
		})
		</script>
		<!-- <script type="text/javascript">
		
		        $(function(){
		        	$("#second").click(function(){
		        		alert("sdf");
		        		sendCode($("#second"));
		        	})
		        })
		</script> -->
		
	</head>
	<body>
     <div class="header_login">
			<div class="head_logo">
				<div class="head_content">
					<div class="head_logoImg">
						<img src="img/logo_03.png"/>
					</div>
					<div class="head_logoLine"></div>
					<div class="head_logoImg">
						<img src="img/fabu_03.png"/>
					</div>
					<div class="head_logoLogin">
						已有账号&nbsp;&nbsp;<a href="<%=path%>/login.jsp">请登录&nbsp;&gt;</a>
					</div>
				</div>
			</div>
		</div>
		<div class="login_main">
			<div class="head_content">
				<form class="sign_form"  action="<%=path%>/enterpriseRegister.do"  method="post" >
					<a href="<%=path%>/sign_person.jsp"><div class="sign_choose1">
						个人注册
					</div></a>
					<a href="<%=path%>/sign_buss.jsp"><div class="sign_choose">
						商家注册
					</div></a>
					<div class="sign_unit">
						<div class="sign_left">
							手机号：
						</div>
						<div class="sign_right">
							<input id="pnone" class="sign_blank" type="text" value="请输入手机号码"  name="userPhone"   maxlength="11" onfocus="if (value =='请输入手机号码'){value=''}" onblur="if (value ==''){value='请输入手机号码'}" />
							<span class="phoneMsg"></span>
						</div>
					</div>
					<div id="imgCodeDiv" class="sign_unit">
						<div class="sign_left">
							验密码：
						</div>
						<div class="sign_right">
							<input type="text" name="code" class="sign_blank">
							<img src="<%= request.getContextPath() %>/imgcode.do" id="imgCode">
							<span class="codeMsg"></span>
						</div>
					</div>
					<div class="sign_unit">
						<div class="sign_left">
							手机验证码：
						</div>
						<div class="sign_right">
							<input type="text" name="PhoneCode" class="sign_blank">
							<div class="sign_yanz" >
							    <button type="button" id="second" value="" >免费获取验证码</button>
							</div>
						</div>
					</div>
					
					<div class="sign_unit">
						<div class="sign_left">
							创建密码：
						</div>
						<div class="sign_right">
							<input id="textpwd" class="sign_blank" type="text" value="请输入6-12个字符" onfocus="mimashow(this)" />
							<input id="pawpwd" class="sign_blank" type="password" onblur="mimahide(this)"  name="userPassword" /> 
						</div>
					</div>
					<div class="sign_unit">
						<div class="sign_left">
							确认密码：
						</div>
						<div class="sign_right">
							<input class="sign_blank" type="password" name="userPassword2"  id="userPassword2" />
							<span id="errorMsg">${errorMsg.msg}</span>
						</div>
					</div>
					
					<div class="sign_unit1">
						<input class="sign_xiyi" type="checkbox" checked="checked" />
						我已阅读并同意<a href="#">《豆丁工匠相关协议》</a>
					</div>
					<div class="sign_unit1">
					  
					    <!--  <input type="hidden" name="formToken" value="${formToken}">-->
						<input class="sign_sub" type="submit" value="注册"/>
					</div>
					
				</form>
			</div>
		</div>
		<div class="login_foot">
			<div class="head_content">
				<div class="login_footUp">
					<div class="login_footUnit">
						<a href="#">豆丁指南</a>
					</div>
					<div class="login_footUnit">
						<a href="#">特色产品</a>
					</div>
					<div class="login_footUnit">
						<a href="#">服务支持</a>
					</div>
					<div class="login_footUnit">
						<a href="#">帮助中心</a>
					</div>
				</div>
				<div class="login_footDown">
					&copy;西安豆丁工匠网络科技有限公司
				</div>
			</div>
		</div>
	</body>
</html>
 