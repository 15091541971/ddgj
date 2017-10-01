<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<!--<link rel="stylesheet" href="../css/base.css" />-->
		<link rel="stylesheet" href="../css/grzx1.css" />
		<link rel="stylesheet" href="../css/LQ.css" />
	</head>
	<body>
		<div class="headHT">
			<div class="headHT_top">
				<div class="contentHT">
					<div class="headHT_left">
						西安&nbsp;【<a href="../Emanage.jsp">切换</a>】
					</div>
					<div class="headHT_left">
						hi，欢迎来到租天下！
					</div>
					<div class="headHT_left">
						请<span><a href="../Emanage.jsp">登录</a></span>或<span><a href="../Emanage.jsp">免费注册</a></span>
					</div>
					<div class="headHT_right">
						<a href="../Emanage.jsp">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="../Emanage.jsp">分类</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="../img/ku.png"/><a href="../Emanage.jsp">租物车</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="../img/shouchang.png"/><a href="../Emanage.jsp">收藏</a>
					</div>
				</div>
			</div>
			<div class="headHT_nav">
				<div class="contentHT">
					<div class="navHT_left">
						<img src="../img/logorrr.png"/>
					</div>
					<a href="../Emanage.jsp">
						<div class="HTnav_unit">
							首页
						</div>
					</a>
					<a href="ZHGL-jbxx.jsp">
						<div class="HTnav_unit1">
							账号管理
						</div>
					</a>
					<!--<a href="fuWu.jsp">
						<div class="HTnav_unit">
							服务
						</div>
					</a>-->
					<div class="HTnav_right">
						<div class="HTsearch">
							<div class="HTsearch_left">
								商品<img src="../img/pull.png" />
							</div>
							<div class="HTsearch_mid">
								<img src="../img/serch.png"/>
								<input type="text" value="请搜索你的需求" onfocus="if (value =='请搜索你的需求'){value=''}" onblur="if (value ==''){value='请搜索你的需求'}" />
							</div>
						</div>
						<a href="../Emanage.jsp">
							<div class="HTsearch_right">
								搜索
							</div>
						</a>
					</div>
				</div>   
			</div>
		</div>
		<div class="mainHT">
			<div class="navLeft_ht">
				<div class="info">
					<div class="infone">
						<div class="oneup" style="font-size: 20px; margin-left: -10px;">
							<a href="">账号管理</a>   
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-jbxx.jsp">账号信息</a>   
							
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-zhaq.jsp">账号安全</a>   
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="#">交易资料管理</a><div class="rightimg"><img src="../img/rightward.png" /></div>  
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mainRight_ht">
			<div class="jytit">
				<div class="rgang"></div>
				<span style="margin-left: 20px;">账户信息</span>
			</div>
			<div class="jycon">
				<div class="jyin">
					<span>账户名:&nbsp;&nbsp;12345678901</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" style="color: #4ca4fb;">查看我的账户</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>如果更换已绑定的账户，</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>请先</span><a href="#" style="color: #4ca4fb;">&nbsp;&nbsp;解绑账户</a>
				</div>
				<div class="jyin">
					<span>状态:</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>已绑定</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>已激活</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>已认证</span>
				</div>
				<div class="jyin">
					<span>类型:</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>个人账户</span>
				</div>
				<div class="jyin" style="border: none;">
					<span>操作:</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" style="color: #4ca4fb;">查询</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" style="color: #4ca4fb;">充值</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" style="color: #4ca4fb;">提现</a>&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</div>
	</body>
</html>
