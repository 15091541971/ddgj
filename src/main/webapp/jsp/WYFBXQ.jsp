<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<shiro:hasPermission name="enterprise:userInfo:update">
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<!--<link rel="stylesheet" href="../css/base.css" />-->
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
						<div class="HTnav_unit1">
							首页
						</div>
					</a>
					<a href="ZHGL-jbxx.jsp">
						<div class="HTnav_unit">
							<a href="ZHGL-jbxx.jsp">账号管理</a>
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
						<div class="oneup">
							<a href="../Emanage.jsp">商家信息</a>
							
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">需求管理</a>   
							
						</div>
						<div class="onedown">  
							<div class="odin">  
								<a href="JYFU.jsp">发布需求</a> 
							</div>  
						</div>
						<div class="onedown">  
							<div class="odin">
								<a href="TKTH.jsp">查看需求</a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">产品管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="../jsp/FBGY.jsp">发布供应产品</a><div class="rightimg"><img src="../img/rightward.png" /></div>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="${pageContext.request.contextPath}/supply/selectSupply.do?fromId=${userId}&supply.status=0">查询已发布</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="WSJ.jsp">未上架的产品</a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">店铺管理</a>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="WDDP.jsp">我的店铺资料</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GSJS.jsp">公司介绍</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GSDP.jsp">公司店铺管理</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GLXC.jsp">管理相册</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mainRight_ht">
				<div class="iwf">
					<div class="iwfb">
						<div class="iwfb-l">
							<div class="fbl-up">只需三步，即可发布您的供应产品信息、加工信息或服务信息</div>
							<div class="fbl-do">
								<div class="bimg"><img src="../img/choose1.png"/></div>
									<div class="quan">
										<div class="qw1"><span>1</span></div>
									</div>
									<div class="lett"><span>选择分类</span></div>
								
								<div class="bimg1"><img src="../img/choose4.png"/></div>
									<div class="quan2">
										<div class="qw2"><span>2</span></div>
									</div>
									<div class="lett"><span>填写产品详情</span></div>

								
								<div class="bimg1"><img src="../img/choose4.png"/></div>
									<div class="quan2">
										<div class="qw2"><span>3</span></div>
									</div>
									<div class="lett"><span>填写产品详情</span></div>
							</div>
						</div>
						<div class="iwfb-r">
							<a target="FBXQ.jsp" href="FBXQ.jsp"><input type="button" name="" value="我要发布"/ class="btn"></a>
						</div>
					</div>
					<div class="phend">
						<div class="pe-up">手机端快速发布的产品转换后可以让更多用户搜索到</div>
						<div class="pe-do"><input type="button" name="" value="手机客户端"class="btn1"style="outline: none;"/></div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
</shiro:hasPermission>
