<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录</title>
		<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
        <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
        <META HTTP-EQUIV="Expires" CONTENT="0">
		<link rel="stylesheet" href="css/login&sign.css" />
		<script type="text/javascript" src="js/jquery-1.4.4.min.js" ></script>
		<%
       response.setHeader("Cache-Control","no-store");
       response.setDateHeader("Expires", 0);
       response.setHeader("Pragma","no-cache"); 
       %>
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
				</div>
			</div>
		</div>
		<div class="login_main">
			<div class="login_img">
				<img src="img/loginbanner.jpg" class="login_bac" />
				<script>
					var winWide = $(window).width();
					var left;
					if(winWide<1920&&winWide>=1200){
						left = (winWide-1920)/2;
						$('.login_bac').css('margin-left',left+'px');
					}
					else if(winWide<1200){
						$('.login_bac').css('margin-left','-360px');
					}
					$(window).resize(function(){
						winWide = $(window).width();
						if(winWide<1920&&winWide>=1200){
						left = (winWide-1920)/2;
						$('.login_bac').css('margin-left',left+'px');
					}
					else if(winWide<1200){
						$('.login_bac').css('margin-left','-360px');
					}
					})
					
				</script>
				
				<shiro:authenticated>
				<script type="text/javascript">
                  $(function(){
                   window.location.href="<%=path%>/OK.jsp";
                  });
               </script>
				</shiro:authenticated>
				 <shiro:hasPermission name="user:userInfo:update">
               
             </shiro:hasPermission> 
			</div>
			<div class="login_kuang">
				<div class="head_content">
					<form class="login_form" action="login.do" method="post">
						<div class="login_formUp">
							密码登录
						</div>
						<span>${authticationError}</span>
						<div class="login_unit">
							<div class="login_unitLeft">
								<img src="img/login.png"/>
							</div>
							<div class="login_unitRight">
								<input type="text" class="login_blank" name="username" />
							</div>
						</div>
						<div class="login_unit">
							<div class="login_unitLeft">
								<img src="img/login06.png"/>
							</div>
							<div class="login_unitRight">
								<input type="password" class="login_blank" name="password"/>
							</div>
						</div>
						<div class="login_unit1">
							<input type="submit" value="登录" class="login_sub" />
						</div>
						<div class="login_unit2">
							<a href="#">忘记密码</a>&nbsp;
							<a href="sign_person.jsp">免费注册</a>
						</div>
					</form>
				</div>
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
