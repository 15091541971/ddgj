<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>公司店铺管理</title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<link rel="stylesheet" href="../css/styleDP.css" />
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
						<div class="oneup">
							<a href="../Emanage.jsp">商家信息</a>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">交易管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="JYFW.jsp">交易服务管理</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="TKTH.jsp">退款退货管理</a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">产品管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="FBGY.jsp">发布供应产品</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="XSZ.jsp">查询已发布</a>
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
								<div class="rightimg"><img src="../img/rightward.png" /></div>
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
				<div class="dp_jianjie">
					<div class="dp_content">
						<div class="dpgl_head">
							已有店铺
						</div>
						<div class="dpgl_main">
							<div class="dpgl_tab">
								<ul class="dpgl_list">
									<li>
										<div class="dpgl_unit">
											<div class="dpgl_type">
												类型
											</div>
											<div class="dpgl_vipName">
												会员登录名
											</div>
											<div class="dpgl_zhuang">
												店铺状态
											</div>
											<div class="dpgl_opr">
												操作
											</div>
										</div>
									</li>
									<li>
										<div class="dpgl_unit">
											<div class="dpgl_type">
												
											</div>
											<div class="dpgl_vipName">
												
											</div>
											<div class="dpgl_zhuang">
												
											</div>
											<div class="dpgl_opr">
												
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="dpgl_add">
							添加店铺
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
