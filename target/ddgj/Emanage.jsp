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
		<link rel="stylesheet" href="<%=path%>/css/baseHT.css" />
		<link rel="stylesheet" href="<%=path%>/css/index.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="<%=path%>/js/ALL.js" ></script>
	</head>
	<body>
		<div class="headHT">
			<div class="headHT_top">
				<div class="contentHT">
					<div class="headHT_left">
						西安&nbsp;【<a href="<%=path%>/index.jsp">切换</a>】
					</div>
					<div class="headHT_left">
						hi，欢迎来到豆丁工匠！
					</div>
					<div class="headHT_left">
						请<span><a href="<%=path%>/index.jsp">登录</a></span>或<span><a href="<%=path%>/index.jsp">免费注册</a></span>
					</div>
					<div class="headHT_right">
						<a href="<%=path%>/index.jsp">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=path%>/index.jsp">分类</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<%=path%>/img/ku.png"/><a href="<%=path%>/index.jsp">租物车</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<%=path%>/img/shouchang.png"/><a href="<%=path%>/index.jsp">收藏</a>
					</div>
				</div>
			</div>
			<div class="headHT_nav">
				<div class="contentHT">
					<div class="navHT_left">
						<img src="img/logorrr.png"/>
					</div>
					<a href="<%=request.getContextPath() %>/ddgj/index.jsp">
						<div class="HTnav_unit1">
							首页
						</div>
					</a>
					<a href="jsp/ZHGL-jbxx.jsp">
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
								商品<img src="img/pull.png" />
							</div>
							<div class="HTsearch_mid">
								<img src="img/serch.png"/>
								<input type="text" value="请搜索你的需求" onfocus="if (value =='请搜索你的需求'){value=''}" onblur="if (value ==''){value='请搜索你的需求'}" />
							</div>
						</div>
						<a href="jsp/index.jsp">
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
							<a href="index.jsp">商家信息</a>
							<div class="rightimg"><img src="img/rightward.png" /></div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="jsp/..">需求管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="jsp/JYFW.jsp">发布需求</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=path%>/demand/selectDemand.do?fromId=${userId}">查看已发布需求</a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">产品管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=path%>/jsp/FBGY.jsp">发布供应产品</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=request.getContextPath() %>/supply/selectSupply.do?fromId=${userId}&supply.status=0">查询已发布</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=path%>/jsp/FBXQ.jsp"></a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">店铺管理</a>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=path%>/jsp/WDDP.jsp">我的店铺资料</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="jsp/GSJS.jsp">公司介绍</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=path%>/jsp/GSDP.jsp">公司店铺管理</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="<%=path%>/jsp/GLXC.jsp">管理相册</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mainRight_ht">
				<div class="index_unit">
					<div class="index_content">
						<div class="index_user">
							<div class="index_userHead">
								<div class="index_userImg">
									<!--<img src="img/dp3.png"/>--><!--头像图片-->
								</div>
							</div>
							<div class="index_userInm">
								<div class="index_userName">
									${enterpriseInfo.data.legalPersonName}<span class="zi">（公司简称）</span>
								</div>
								<div class="index_userName">
									${enterpriseInfo.data.enterpriseName}
								</div>
								<div class="index_userName">
									<div class="index_userA">
										<a href="<%=path%>/jsp/ZHGL-jbxx.jsp">账号信息管理</a>
									</div>
									<div class="index_userA">
										<a href="<%=path%>/jsp/WDDP.jsp">我的店铺</a>
									</div>
								</div>
							</div>
						</div>
						
						<div class="index_wait">
							<div class="index_waitLeft">
								待办提醒
							</div>
							<div class="index_waitRight">
								<div class="index_waitUnit">
									<div class="index_waitType">
										交易管理：
									</div>
									<ul class="index_waitList">
										<li>待报价（0）</li>
										<li>待买家付款（0）</li>
										<li>待发货（0）</li>
										<li>待买家收货（0）</li>
										<li>待退款退货（0）</li>
										<li>待处理售后（0）</li>
										<li>待相应投诉（0）</li>
										<li>待评价（0）</li>
									</ul>
								</div>
								<div class="index_waitUnit">
									<div class="index_waitType">
										商品管理：
									</div>
									<ul class="index_waitList">
										<li>销售价</li>
										<li>审核中</li>
										<li>未上架</li>
										<li>待违规处理</li>
										<li>违规已下架</li>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
				</div>
				
				<div class="index_unit">
					<p class="index_title">
						<span class="index_title_nav" style="margin-left:20px;">定制推荐</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<span >采购推荐</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<span>创意推荐</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
					<div class="index_content">
						<div class="index_goods">
							<div class="index_goodsTime">
								发布时间
							</div>
							<div class="index_goodsName1">
								名称
							</div>
							<div class="index_goodsNum">
								采购量
							</div>
							<div class="index_goodsEnd">
								报价截止
							</div>
							<div class="index_goodsAdd">
								所在地
							</div>
						</div>
						<ul class="index_goodsList index_goodsHeight">
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
						</ul>
						
						<ul class="index_goodsList index_goodsHeight" style="display: none;">
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服1
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服1
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服1
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服1
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服1
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服1
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
						</ul>
						
						
						<ul class="index_goodsList index_goodsHeight" style="display: none;">
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服2
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服2
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服2
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服2
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
							<li>
								<div class="index_goodsTime">
									<span>01.16</span><span>08:04</span>
								</div>
								<div class="index_goodsName">
									求购库存尾单宠物衣服2
								</div>
								<div class="index_goodsNum">
									100套
								</div>
								<div class="index_goodsEnd">
									5天
								</div>
								<div class="index_goodsAdd">
									<span>山东</span><span>泰安</span>
								</div>
							</li>
						</ul>
						<ul class="index_goodsList index_goodsHeight1">
							
						</ul>
						
						
						<div class="index_goodsMore">
							<span class="index_goodsLoad">加载更多</span>
							<span class="index_goodsHide">收起</span>
						</div>
					</div>
				</div>
				
				<div class="index_unit">
					<div class="index_content">
						<div class="index_workHead">
							店铺经营情况
						</div>
						<div class="index_workLeft">
							<div class="index_workUnitName">
								店铺服务情况
							</div>
							<ul class="index_workUnitList">
								<li>退款速度</li>
								<li>退款率</li>
								<li>投诉率</li>
								<li>纠纷率</li>
							</ul>
						</div>
						<div class="index_workRignt">
							<div class="index_workUnitName">
								店铺违规情况
							</div>
							<ul class="index_workUnitList">
								<li>违规累计扣分</li>
								<li>知识产权严重侵权累计</li>
								<li>其中同一知识产权严重侵权</li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="index_unit">
					<div class="index_content">
						<div class="index_userTitle">
							卖家等级
						</div>
						<div class="index_userLVshow jz">
							<div class="index_userLVRe">
								V1
							</div>
							<div class="index_userLine jz"></div>
							<div class="index_userLVNow">
								V2
							</div>
							<div class="index_userLine jz"></div>
							<div class="index_userLVFure">
								V3
							</div>
							<div class="index_userLine jz"></div>
							<div class="index_userLVFure">
								V4
							</div>
							<div class="index_userLine jz"></div>
							<div class="index_userLVFure">
								V5
							</div>
							<div class="index_userLine jz"></div>
							<div class="index_userLVFure">
								V6
							</div>
							<div class="index_userLine jz"></div>
							<div class="index_userEnd">
								
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</body>
</html>
</shiro:hasPermission>