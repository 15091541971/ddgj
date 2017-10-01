
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
		<!-- <script type="text/javascript" src="/js/sign.js" ></script> -->
		<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
		<!-- <script type="text/javascript" src="/js/sendCode.js"></script> -->
		<script type="text/javascript">
		
		
     /* function sendCode(obj){
		    var userPhone = $("#pnone").val();
		    var result = isPhoneNum();
		    if(result){
		    	 $.ajax({
		    	        async : false,
		    	        cache : false,
		    	        type : 'POST',
		    	        url : rootPath+"/sendCode.do",// 请求的action路径
		    	        data:{"userPhone":userPhone},
		    	        error : function() {// 请求失败处理函数
		    	        },
		    	        success : function(result){
		    	        	alert(result.msg);
		    	        	addCookie("secondsremained",60,60);//添加cookie记录,有效时间60s
		    	            settime(obj);//开始倒计时
		    	        }
		    	    }); 
		    } */
		    
		    function sendCode(obj){
		    	var userPhone = $("#pnone").val();
		  
		    	$.ajax({
	    	        async : false,
	    	        cache : false,
	    	        type : 'POST',
	    	        url : "sendCode.do",// 请求的action路径
	    	        data:{"userPhone":userPhone},
	    	        error : function() {// 请求失败处理函数
	    	        	alert("error");
	    	        },
	    	        success : function(result){
	    	        	alert("success");
	    	        	   
	    	        }
	    	    }); 
		    }
		        $(function(){
		        	$("#second").click(function(){
		        		alert("sdf");
		        		sendCode($("#second"));
		        	})
		        })
		 
		
		</script>
	<%-- 	<script type="text/javascript"> 
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
		     
		</script> --%>
		<style type="text/css">
		  .hide{
		    display: none;
		  }
		</style>
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
				<form class="sign_form"  action="/userRegister.do"  method="post" >
					<a href="<%=path%>/sign_person.jsp"><div class="sign_choose">
						个人注册
					</div></a>
					<a href="<%=path%>/sign_buss.jsp"><div class="sign_choose1">
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
					<div id="imgCodeDiv" class="sign_unit hide">
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
