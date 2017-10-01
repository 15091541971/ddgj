<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>发布信息</title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<link rel="stylesheet" href="../css/styleDP.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/region.js" ></script>
		<style type="text/css">
		  .selectDiv{
		  display: none;
		  }
		</style>
	</head>
	<body>
		<div class="headHT">
			<div class="headHT_top">
				<div class="contentHT">
					<div class="headHT_left">
						西安&nbsp;【<a href="Emanage.jsp">切换</a>】
					</div>
					<div class="headHT_left">
						hi，欢迎来到租天下！
					</div>
					<div class="headHT_left">
					   ${userInfo.userPhone}|您好，欢迎登陆！
					   
					</div>
				</div>
			</div>
			<div class="headHT_nav">
				<div class="contentHT">
					<div class="navHT_left">
						<img src="../img/logorrr.png"/>
					</div>
					<a href="Emanage.jsp">
						<div class="HTnav_unit1">
							首页
						</div>
					</a>
					<a href="ZHGL-jbxx.jsp">
						<div class="HTnav_unit">
							账号管理
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="mainHT">
			<div class="fabu_content">
				<div class="fabu_head">
					<div class="fabu_headLeft">
						发布产品信息
					</div>
				
				</div>
			   
				<form class="fabu_main2" action="<%=path%>/supply/updateMySupply.do" method="post" enctype="multipart/form-data">
					<div class="fabu2_unit">
						<div class="fabu2_title">
							填写基本信息
						</div>
						<div class="fabu2_inm">
							<div class="fabu2_inmUnit">
								<div class="fabu2_inmLeft">
									信息标题：<A>${checkDemand.data.title}</A>
								</div>
							</div>
							<div class="fabu2_inmUnit">
								
								<div class="fabu2_inmRight">
									<div class="fabu2_inmShu">
										
									</div>
									<!--  
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
											类别：
										</div>
										<div class="fabu2_shuRight">
											<input type="text" value="" class="fabu2_pai" />
										</div>
									</div>
									-->
									<div class="fabu2_inmShu " id="regionSelected">
										<div class="fabu2_shuLeft">
										地区：
										</div>
										 <div id="regionMsg">
										      <span>${checkDemand.data.region.SHENG}</span>&nbsp;&nbsp;<span>${checkDemand.data.region.SHI}</span>&nbsp;&nbsp;<span>${checkDemand.data.region.XIAN}</span>&nbsp;&nbsp;
										      &nbsp;&nbsp;
										   </div>
										<div class="fabu2_shuRight selectRegion selectDiv" >
										  
										
											<!-- <select id="perantType">
									   <option>请选择类别</option>
									</select>
								
									<select id="sonType">
									   <option>请选择类别</option>
									</select> -->
										</div>
									</div>
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
										数量：<A>${checkDemand.data.count}</A>
										</div>
										<div class="fabu2_shuLeft">
										类别：
										</div>
									<div id="typeMsg">
										      <span>${checkDemand.number.type_name}</span>
										   </div>
									</div>
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
										价格：<A>${checkDemand.data.price}</A>
										</div>
									</div>
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
										联系电话：<A>${checkDemand.data.tel}</A>
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					
					
					
					<div class="fabu2_unit">
						<div class="fabu2_title">
							图片和详细说明
						</div>
						<div class="fabu2_inm">
							<div class="fabu2_picUnit">
								<a class="picString selectDiv" >${checkDemand.data.pictrue}</a>
								<div class="picDiv">
								   
								
								</div>
								
							</div>
							<div class="fabu2_picUnit">
								<div class="fabu2_inmLeft">
									详细说明：
								</div>
								<div class="fabu2_picRight">
									<p>${checkDemand.data.detail}</p>
									<!-- 
									<div class="fabu2_picsub">
										<input type="button" class="fabu2_sub" value="保存并确定" />
									</div>
									 -->
								</div>
							</div>
						</div>
					</div>
					
						<!--  
						<div class="fabu2_look">
							预览
						</div>
						-->
					</div>
				
				</form>
				
			</div>
		</div>
		  
	</body>
		<script type="text/javascript">
          //图片回显
          var picString = $(".picString").text().split(",");
          var picDiv= $(".picDiv");
          for(var i=0;i<picString.length;i++){
             picDiv.append("<img src='http://192.168.0.166:8088/51douding/"+picString[i]+"'\/>");
           
          }
           var a = $("img[src='http://192.168.0.166:8088/51douding/']").addClass("selectDiv");
        </script>
      
</html>
