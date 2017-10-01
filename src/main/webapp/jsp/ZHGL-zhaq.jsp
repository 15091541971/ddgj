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
		<script type="text/javascript" src="../js/ALL.js" ></script>
	</head>
	<body>
		<div class="headHT">
			<div class="headHT_top">
				<div class="contentHT">
					<div class="headHT_left">
						西安&nbsp;【<a href="../Emanage.jsp">切换</a>】
					</div>
					<div class="headHT_left">
						hi，欢迎来到豆丁工匠！
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
							<a href="">账号安全</a>
							<div class="rightimg"><img src="../img/rightward.png" /></div>  
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
								<div class="nifo">
									<a href="#"><span style="font-weight: bold;margin-left: -30px;">账号安全</span></a>
								</div>
							</div>
						</div>
						<form>
							<div class="jb-content">
								<div class="jbkuang1"><span style="margin-left: 20px;">基础信息</span></div>
								<div class="con-n" style="margin-top: 10px;">
									<div class="cnn-l">
										<span>手机号码：</span>
									</div>
									<div class="cnn-r">
										<span class="phone">123****1789</span>
										<input class="phonE" type="text" />
										<a href="#"class="chang">修改</a>
										<a class="cnn-y"><span class="ok" style="margin-right:10px;">确认</span><span class="qx">取消</span></a>
										<a href="#" class="open">开启手机登录</a>
										<a href="#" class="quxiao">取消手机绑定</a>
									</div>
									
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>登录邮箱：</span>
									</div>
									<div class="cnn-r">
										<span class="emile">123****12312@qq.com</span>
										<input class="emilE" type="text" style="position: absolute;left:0;top:10px;display: none;">
										<a href="#"  class="Elime">修改邮箱</a>
										<a class="cnn-y1"><span class="ok1" style="margin-right:10px;">确认</span><span class="qx1">取消</span></a>
									</div>
								</div>
								<div class="jbkuang1"><span style="margin-left: 20px;">安全</span></div>
								<div class="zha-n">
									<div class="zhn-l">
										<span>身份认证</span>
									</div>
									<div class="zhn-r">
										<span>身份认证是指通过工商信息，银行卡信息和身份证信息的核实，身份认证是指通过工商信息，<br />银行卡信息和身份证信息的核实</span>
									</div>
									<div class="zhn-t"><a href="#">个人身份认证</a></div>
								</div>
								<div class="xian1"></div>
								<div class="zha-n">
									<div class="zhn-l">
										<span>登录密码</span>
									</div>
									<div class="zhn-r">
										<div style="float: left;">修改更高级别的密码能提高账号的安全性</div>
										<div class="litsq">
											<div class="lsq-l">
												<span style="float: left;">当前登录密码</span>
												
											</div>
											<div class="lsq-r">
												<input type="password" name="fdsf"/ id="fdsf">
												
											</div>
										</div>
										<div class="litsq">
											<div class="lsq-l">
												
												<span style="float: left;">新的登录密码</span>
												
											</div>
											<div class="lsq-r">
												
												<input class="ps" type="password" name="fdsf"/ id="fdsf"><span class="newmima"></span>
												
											</div>
										</div>
										<div class="litsq">
											<div class="lsq-l ">
												<span style="float: left;">确认新的登录密码</span>
												
											</div>
											<div class="lsq-r">
												
												<input class="ps1" type="password" name="fdsf"/ id="fdsf"><span class="maqr"></span>
											</div>
										</div>
										<div class="lendto">
											<input type="submit" value="保存" />
										</div>
									</div>
									<div class="zhn-t"><a href="#">修改</a></div>
								</div>
								<div class="xian1"></div>
								<div class="zha-n">
									<div class="zhn-l">
										<span>密保问题管理</span>
									</div>
									<div class="zhn-r">
										<span>修改更高级别的密码能提高账号的安全性</span>
									</div>
									<div class="zhn-t"><a href="#">管理</a></div>
								</div>
								<div class="protectpass">
									<div class="pass-up">
										<img src="../img/btn_main_img.png" style="width:21px;" />
										<div class="pass-w">
											<span>安全保护问题将作为重要的身份验证方式，请认真设置</span>
										</div>
									</div>
									<div class="pass-down">
										<div class="litsq" style="margin-left: 160px;">
											<div class="lsq-l">
												<span style="float: left;">问题一</span>
												
											</div>
											<div class="lsq-r">
												<select name="mib1" id="mib2"> </select>
											</div>
										</div>
										<div class="litsq" style="margin-left: 160px;">
											<div class="lsq-l">
												<span style="float: left;">答案</span>
												
											</div>
											<div class="lsq-r">
												<input />
											</div>
										</div>
										<div class="litsq" style="margin-left: 160px;">
											<div class="lsq-l">
												<span style="float: left;">问题二</span>
												
											</div>
											<div class="lsq-r">
												<select name="mib1" id="mib2"> </select>
											</div>
										</div>
										<div class="litsq" style="margin-left: 160px;">
											<div class="lsq-l">
												<span style="float: left;">答案</span>
												
											</div>
											<div class="lsq-r">
												<input />
											</div>
										</div>
										<div class="litsq" style="margin-left: 160px;">
											<div class="lsq-l">
												<span style="float: left;">问题三</span>
												
											</div>
											<div class="lsq-r">
												<select name="mib1" id="mib2"> </select>
											</div>
										</div>
										<div class="litsq" style="margin-left: 160px;">
											<div class="lsq-l">
												<span style="float: left;">答案</span>
												
											</div>
											<div class="lsq-r">
												<input />
											</div>
										</div>
									</div>
								</div>
								<div class="lendto">
								<input type="submit" value="保存" style="margin-left:150px" />
								</div>
							</form>
						</div>
					</div>
			</div>
		</div>
	</body>
</html>
