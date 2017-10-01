<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>销售中的产品</title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<link rel="stylesheet" href="../css/styleDP.css" />
		<link rel="stylesheet" href="../css/pagination.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/jquery.pagination.js" ></script>
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
								<div class="rightimg"><img src="../img/rightward.png" /></div>
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
				<div class="xsz_main">
					<div class="wsj_head">
						<div class="xsz_content">							
							<div class="wsj_headType">
								<span>待上架</span>&nbsp;&nbsp;|&nbsp;&nbsp;
								待上架&nbsp;&nbsp;|&nbsp;&nbsp;
								违规下架
							</div>
						</div>
					</div>
					<div class="xsz_head">
						<div class="xsz_content">
							<div class="xsz_headMain">
								<div class="xsz_headChoose">
									<input type="checkbox" id="allchoose" value="" /><label for="allchoose">全选</label>
								</div>
								<div class="xsz_headUnit">
									上架
								</div>
								<div class="xsz_headUnit">
									下架
								</div>
								<div class="xsz_headUnit1">
									永久删除
								</div>
								<div class="xsz_headRight">
									<div class="xsz_headType1">
										<select name="">
											<option value="">自定义分类</option>
										</select>
									</div>
									<div class="xsz_headType2">
										<select name="">
											<option value="">产品类型</option>
										</select>
									</div>
									<div class="xsz_headType3">
										<select name="">
											<option value="">产品标题/货号</option>
										</select>
									</div>
									<a href="#"><div class="xsz_headSearch">
										搜索
									</div></a>
								</div>
							</div>
						</div>
					</div>
					<div class="xsz_nav">
						<div class="xsz_content">
							<div class="xsz_chooseBox">
								&nbsp;
							</div>
							<div class="xsz_gooseNum">
								标题货号
							</div>
							<div class="xsz_gooseprice">
								价格
							</div>
							<div class="xsz_gooseTime">
								发布时间&uarr;&darr;
							</div>
							<div class="xsz_gooseTime">
								到期时间&uarr;&darr;
							</div>
							<div class="xsz_gooseZhi">
								质量星级
							</div>
							<div class="xsz_gooseOpr">
								操作
							</div>
							<div class="xsz_gooseOpr">
								状态
							</div>
						</div>
					</div>
					<div class="xsz_goodsinm">
						<div class="xsz_content">
							<ul class="xsz_goodsList">
								<li>
									<div class="xsz_chooseBox">
										
									</div>
									<div class="xsz_gooseNum">
										
									</div>
									<div class="xsz_gooseprice">
										
									</div>
									<div class="xsz_gooseTime">
										
									</div>
									<div class="xsz_gooseTime">
										
									</div>
									<div class="xsz_gooseZhi">
										
									</div>
									<div class="xsz_gooseOpr">
										
									</div>
									<div class="xsz_gooseOpr">
										
									</div>
								</li>
								<li>
									<div class="xsz_chooseBox">
										
									</div>
									<div class="xsz_gooseNum">
										
									</div>
									<div class="xsz_gooseprice">
										
									</div>
									<div class="xsz_gooseTime">
										
									</div>
									<div class="xsz_gooseTime">
										
									</div>
									<div class="xsz_gooseZhi">
										
									</div>
									<div class="xsz_gooseOpr">
										
									</div>
									<div class="xsz_gooseOpr">
										
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="xsz_goodsAll">
						<div class="xsz_content">
							<div class="xsz_headMain">
								<div class="xsz_headChoose">
									<input type="checkbox" id="allchoose" value="" /><label for="allchoose">全选</label>
								</div>
								<div class="xsz_headUnit">
									上架
								</div>
								<div class="xsz_headUnit">
									下架
								</div>
								<div class="xsz_headUnit1">
									永久删除
								</div>
							<div class="xsz_headRight">
									<!--<div class="xsz_pageNext">
										下一页&nbsp;&gt;
									</div>
									<div class="xsz_pageNow">
										1
									</div>
									<div class="xsz_pageNext">
										&lt;
									</div>-->
									<script type="text/javascript" >
										$(function(){
								
											$("#Pagination").pagination("1");//动态获取页数
											$(".allPage").text("1");
											
										})
							
									</script>
									<div class="pageg">
										<div class="pages" style="margin-top:-40px;">
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
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
