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
		<link rel="stylesheet" href="../css/LQ.css" />
		<link rel="stylesheet" href="../css/pagination.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/jquery.pagination.js" ></script>
		<script type="text/javascript" src="../js/ALL.js" ></script>
	</head>
	<body>
		<div class="headHT">
			<!-- <div class="headHT_top">
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
			</div> -->
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
							<a href="">需求管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="WYFBXQ.jsp">发布需求</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="TKTH.jsp">查看需求</a><div class="rightimg"><img src="../img/rightward.png" /></div>
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
				<div class="TK-r">
					<div class="wsd">
						<span>我收到的退款退货</span>
					</div>
					<div class="serch-dd">
						<div class="devide">
							<div class="deword"><span>订单编号：</span></div>
						</div>
						<div class="detext"><input type="text" name="" value="" /> </div>
						
						<div class="devide">
							<div class="deword"><span>时间：从</span></div>
						</div>
						<div class="detext"><input type="text" name="" value="" /></div>
						<div class="devide">
							<div class="deword"><span>到</span></div>
						</div>
						<div class="detext"><input type="text" name="" value="" /></div>
						
						<div class="devide">
							<div class="deword"><span>退货运单号：</span></div>
						</div>
						<div class="detext"><input type="text" name="" value="" /> </div>
						
						<div class="devide">
							<div class="deword"><span>推款/退货状态：</span></div>
						</div>
						<div class="detext"><input type="text" name="" value="" /> </div>
						
						<a href="#"><div class="sejia">搜索</div></a>
					</div>
					<div class="xqtkth">
						<div class="th-up">
							<div class="titone">
								<div class="conin" style="line-height: 20px;">
									<span >退款退货/<br />订单编号</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin">
									<span>货品名称</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin">
									<span>买家</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin">
									<span>货品已付金额</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin" style="line-height: 20px;">
									<span >申请退款<br />退货金额</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin">
									<span>申请时间</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin">
									<span>退款退货状态</span>
								</div>
							</div>
							<div class="divi"></div>
							
							<div class="titone">
								<div class="conin">
									<span>操作</span>
								</div>
							</div>
						</div>
						
						<div class="xq-down">
							<ul>
								<li>
									<div class="txq">
										<div class="titone1" style="width: 90px;">
											<div class="conin1" style="line-height: 15px;">
												<span >tq73075623<br /> 45687456/<br />151588632<br />151588632</span>
											</div>
										</div>
										<div class="titone1" style="width: 85px;">
											<div class="conin1" style="line-height: 20px;">
												<span >wifi智能广告机</span>
											</div>
										</div>
										<div class="titone1" style="width: 56px;">
											<div class="conin1" style="line-height: 20px;">
												<span >大太阳爱<br /> 小阳世界</span>
											</div>
										</div>
										<div class="titone1" style="width: 108px;">
											<div class="conin1" style="line-height: 20px;">
												<span >3,200.00</span>
											</div>
										</div>
										<div class="titone1" style="width: 88px;">
											<div class="conin1" style="line-height: 20px;">
												<span >申请退款<br /> /退货金额</span>
											</div>
										</div>
										<div class="titone1" style="width: 88px;">
											<div class="conin1" style="line-height: 20px;">
												<span >2016-05-30<br /> 16:12:32</span>
											</div>
										</div>
										<div class="titone1" style="width: 112px;">
											<div class="conin1" style="line-height: 20px;">
												<span >退款成功<br /> 2016-05-30<br /> 16:12:32</span>
											</div>
										</div>
										<div class="titone1" style="width: 56px;">
											<div class="conin1" style="line-height: 20px;">
												<a href="#" >查看详情</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="txq">
										<div class="titone1" style="width: 90px;">
											<div class="conin1" style="line-height: 15px;">
												<span >tq73075623<br /> 45687456/<br />151588632<br />151588632</span>
											</div>
										</div>
										<div class="titone1" style="width: 85px;">
											<div class="conin1" style="line-height: 20px;">
												<span >wifi智能广告机</span>
											</div>
										</div>
										<div class="titone1" style="width: 56px;">
											<div class="conin1" style="line-height: 20px;">
												<span >大太阳爱<br /> 小阳世界</span>
											</div>
										</div>
										<div class="titone1" style="width: 108px;">
											<div class="conin1" style="line-height: 20px;">
												<span >3,200.00</span>
											</div>
										</div>
										<div class="titone1" style="width: 88px;">
											<div class="conin1" style="line-height: 20px;">
												<span >申请退款<br /> /退货金额</span>
											</div>
										</div>
										<div class="titone1" style="width: 88px;">
											<div class="conin1" style="line-height: 20px;">
												<span >2016-05-30<br /> 16:12:32</span>
											</div>
										</div>
										<div class="titone1" style="width: 112px;">
											<div class="conin1" style="line-height: 20px;">
												<span >退款成功<br /> 2016-05-30<br /> 16:12:32</span>
											</div>
										</div>
										<div class="titone1" style="width: 56px;">
											<div class="conin1" style="line-height: 20px;">
												<a href="#" >查看详情</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="txq">
										<div class="titone1" style="width: 90px;">
											<div class="conin1" style="line-height: 15px;">
												<span >tq73075623<br /> 45687456/<br />151588632<br />151588632</span>
											</div>
										</div>
										<div class="titone1" style="width: 85px;">
											<div class="conin1" style="line-height: 20px;">
												<span >wifi智能广告机</span>
											</div>
										</div>
										<div class="titone1" style="width: 56px;">
											<div class="conin1" style="line-height: 20px;">
												<span >大太阳爱<br /> 小阳世界</span>
											</div>
										</div>
										<div class="titone1" style="width: 108px;">
											<div class="conin1" style="line-height: 20px;">
												<span >3,200.00</span>
											</div>
										</div>
										<div class="titone1" style="width: 88px;">
											<div class="conin1" style="line-height: 20px;">
												<span >申请退款<br /> /退货金额</span>
											</div>
										</div>
										<div class="titone1" style="width: 88px;">
											<div class="conin1" style="line-height: 20px;">
												<span >2016-05-30<br /> 16:12:32</span>
											</div>
										</div>
										<div class="titone1" style="width: 112px;">
											<div class="conin1" style="line-height: 20px;">
												<span >退款成功<br /> 2016-05-30<br /> 16:12:32</span>
											</div>
										</div>
										<div class="titone1" style="width: 56px;">
											<div class="conin1" style="line-height: 20px;">
												<a href="#" >查看详情</a>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--<div class="pageg">
						<div class="pagein">
							<div class="pa-1">
								<a href="#"><img src="../img/hover_left.png" /></a>
								<span style="color: #D73600; font-weight: bold;">1</span>
								<a href="#"><img src="img/hover_right.png"/></a>
								<span>共一页</span>
								<span>&nbsp;&nbsp;&nbsp; 1条&nbsp;&nbsp;到</span>
								<input type="text" name="" value="" />&nbsp;&nbsp;页
								<a class="qd" href="../Emanage.jsp">确定</a>								
							</div>
						</div>
					</div>-->
					<script type="text/javascript" >
						$(function(){
				
							$("#Pagination").pagination("1");//动态获取页数
							$(".allPage").text("1");
							
						})
			
					</script>
					<div class="pageg">
						<div class="pages">
					        <div id="Pagination" margin:10px 0;></div>
					        <div class="searchPage">
					          <span class="page-sum">共<strong class="allPage"></strong>页</span>
					          <span class="page-go">跳转<input type="text">页</span>
					          <a href="javascript:;" class="page-btn">GO</a>
					        </div>
					    </div>
				
						<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
