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
		<link rel="stylesheet" href="../css/grzx1.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/ALL.js"></script>
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
							<a href="../Emanage.jsp">首页</a>
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
							<a href="#">账号信息</a>   
							<div class="rightimg"><img src="../img/rightward.png" /></div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-zhaq.jsp">账号安全</a>   
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-jyzl.jsp">交易资料管理</a>   
						</div>
					</div>
				</div>
			</div>
			<div class="mainRight_ht">
				<div class="ztn-r">
						<div class="n-nr">
							<div class="new-infor" >
								<div class="nifo" style="border-bottom: 2px solid #4CA4FB;">
									<a href="#">基本信息</a>
								</div>
								<div class="obvifo">
									<a href="ZHGL-grxx.jsp">个人信息</a>
								</div>
							</div>
						</div>
						<form>
							<div class="jb-content">
								<div class="con-n">
									<div class="cnn-l">
										<span>姓名：</span>
									</div>
									<div class="cnn-r">
										<span class="cnnr cnnr-1" id="name">张三</span>
										<input id="wb" type="text" />
										<a id="qr" style="cursor: pointer;position: absolute;left:102px;top:0;">修改</a>
										<a id="qr-0" style="position: absolute;left:102px;top:0;display: none;"><span class="qr-00" style="cursor: pointer;margin-right: 20px;">确认</span><span class="qr-01" style="cursor: pointer;">取消</span></a>
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>姓别：</span>
									</div>
									<div class="cnn-r">
										<span class="cnnr cnnr-2" id="name">先生</span>
										<input id="wb1" type="text" />
										<a id="qr1" style="cursor: pointer;position: absolute;left:102px;top:0;">修改</a>
										<a id="qr-1" style="position: absolute;left:102px;top:0;display: none;"><span class="qr-10" style="cursor: pointer;margin-right: 20px;">确认</span><span class="qr-11" style="cursor: pointer;">取消</span></a>
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>电话：</span>
									</div>
									<div class="cnn-r">
										<span class="cnnr cnnr-3" id="name">12345678912</span>
										<input id="wb2" type="text" /><span class="wb2pd" ></span>
										<a id="qr2" style="cursor: pointer;position: absolute;left:102px;top:0;">修改</a>
										<a id="qr-2" style="position: absolute;left:102px;top:0;display: none;"><span class="qr-20" style="cursor: pointer;margin-right: 20px;">确认</span><span class="qr-21" style="cursor: pointer;">取消</span></a>
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>电子邮箱：</span>
									</div>
									<div class="cnn-r">
										<span class="cnnr cnnr-4" id="name">1955124815@qq.com</span>
										<input id="wb3" type="text" style="display: none;position: absolute;width:145px;top: 7px;" /><span class="wb3pd" style="position: absolute;top:0;left:150px;"></span>
										<a id="qr3" style="cursor: pointer;position: absolute;left:102px;top:0;">添加</a>
										<a id="qr-3" style="position: absolute;left:102px;top:0;display: none;"><span class="qr-30" style="cursor: pointer;margin-right: 20px;">确认</span><span class="qr-31" style="cursor: pointer;">取消</span></a>
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>固定电话：</span>
									</div>
									<div class="cnn-r" style="width:260px;">
										<input style="text" class="jbinput1 jbin1"/>-
										<input style="text" class="jbinput2 jbin2"/>-
										<input style="text" class="jbinput3 jbin3"/>
									</div>
									<span class="coon-ngd"></span>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>传真：</span>
									</div>
									<div class="cnn-r" style="width:260px;">
										<input style="text" class="jbinput1 jbi1"/>-
										<input style="text" class="jbinput2 jbi2"/>-
										<input style="text" class="jbinput3 jbi3"/>
									</div>
									<span class="coon-ngd1"></spn>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>联系地址：</span>
									</div>
									<div class="cnn-r">
										<select name="county" id="county" >
											<option>中国</option>
						                </select>
										<select name="province" id="province">
											<option>陕西</option>
							            </select>
							            <select name="city" id="city">
							            	<option>西安</option>
							            </select>
						                <select name="area" id="area">
						                	<option>西安</option>
							            </select>
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span></span>
									</div>
									<div class="cnn-r">
										<input style="text" value="中国陕西西安自强东路"/>
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>邮编：</span>
									</div>
									<div class="cnn-r">
										<input style="text" value="710000"/>
									</div>
								</div>
							</div>
							<div class="lendto">
							<input type="submit" value="保存" />
							</div>
						</form>
					</div>
			</div>
		</div>
	</body>
</html>
