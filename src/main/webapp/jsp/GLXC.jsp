<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>管理相册</title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<link rel="stylesheet" href="../css/styleDP.css" />
		<link rel="stylesheet" href="css/pagination.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/jquery.pagination.js" ></script>
		<script type="text/javascript" src="../js/ALL.js" ></script>
	</head>
	<body>
		<div class="headHT">
			<div class="headHT_top">
				
				
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
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GLXC.jsp">管理相册</a>
								<div class="rightimg"><img src="../img/rightward.png" /></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript" >
						$(function(){
				
							$("#Pagination").pagination("1");//动态获取页数
							$(".allPage").text("1");
							
						})
			
					</script>
			<div class="mainRight_ht">
				<div class="dpxc_main">
					<div class="dpxc_head">
						管理相册
					</div>
					<div class="dpxc_inm">
						<div class="dpxc_upload">
							上传相片
						</div>
						<!--<div class="dpxc_page">
							<div class="pageg">
								<div class="pages" style="margin-top:-50px">
							        <div id="Pagination" margin:10px 0;></div>
							        <div class="searchPage">
							          <span class="page-sum">共<strong class="allPage"></strong>页</span>
							          <span class="page-go">跳转<input type="text">页</span>
							          <a href="javascript:;" class="page-btn">确定</a>
							        </div>
							    </div>
						
								<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
								</div>
							</div>
						</div>-->
						<div class="dpxc_sum">
							共有2个相册
						</div>
					</div>
					<div class="dpxc_list" style="height:270px;width:100%;">
						<ul class="dpxc_listc"id="dpxc_listc" >
							<li>
								<div class="dpxc_unit">
									<div class="dpxc_unitimg">
										<!--相册封面图片-->
										<!--<img src=""/>-->
									</div>
									<div class="dpxc_unitSum">
										相册（20）
									</div>
									<div class="dpxc_unitTime">
										2016-12-12
									</div>
								</div>
							</li>
							<li>
								<div class="dpxc_unit">
									<div class="dpxc_unitimg">
										<!--相册封面图片-->
										<!--<img src=""/>-->
									</div>
									<div class="dpxc_unitSum">
										相册（20）
									</div>
									<div class="dpxc_unitTime">
										2016-12-12
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!--<div class="dpxc_page">
						<div class="dpxc_pageLast">
							<img src="img/last.png"/>
						</div>
						<div class="dpxc_pagesum">
							1
						</div>
						<div class="dpxc_pageLast">
							下一页<img src="img/next.png"/>
						</div>
						<div class="dpxc_go">
							到<input type="text" />页
						</div>
						<div class="dpxc_sure">
							确定
						</div>
					</div>-->
					
					<div class="dpxc_page">
							<div class="pageg">
								<div class="pages" style="margin-top:-50px">
							        <div id="Pagination" margin:10px 0;></div>
							        <div class="searchPage">
							          <span class="page-sum">共<strong class="allPage"></strong>页</span>
							          <span class="page-go">跳转<input type="text">页</span>
							          <a href="javascript:;" class="page-btn">确定</a>
							        </div>
							    </div>
						
								<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
								</div>
							</div>
						</div>
						
				</div>
			</div>
		</div>
		<div class="zzc">	
		</div>
		<div class="zzck">
			<div class="zzcn">
				<div class="zzcn-title">
					<h4>新建相册</h4>
					<span class="zzcn-qx">X</span>
				</div>
				<div class="zzcn-c">
					<p><span class="picture">相册名称：</span><input class="picture1"type="text"></p>
					<p><span>相册名称：</span><input name="xz" type="radio"/>公开<input name="xz" type="radio">密码访问<input name="xz" type="radio">不公开</p>
				</div>
				<div class="zzcn-bottom">
					<input class="zzcn-qx zzcn-ok" type="button" value="确认" style="background:#da3901;color:#fff"/>
					<input class="zzcn-qx" type="button" value="取消" style="background:#cfcfcf"/>
				</div>
			</div>
		</div>
	</body>
</html>
