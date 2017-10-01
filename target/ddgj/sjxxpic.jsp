<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人信息</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/buq.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-3.0.0.min.js"></script>
		<script type="text/javascript">
		   //预览图片
	        function getFileUrl(sourceId) {  
                var url;  
                if (navigator.userAgent.indexOf("MSIE")>=1) { // IE  
                    url = document.getElementById(sourceId).value;  
                } else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox  
                    url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));  
                } else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome  
                    url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));  
                }  
                return url;  
            }  
            function preImg(sourceId, targetId) {  
                var url = getFileUrl(sourceId);   
                var imgPre = document.getElementById(targetId);   
                imgPre.src = url;   
            } 
		</script>
		<style type="text/css">
		  #License_Picture_img{
		     width: 200PX;
		     height: 50PX;
		  }
		
		</style>
	</head>
	<body>
		<div class="bqgr">
			<div class="head">
				<div class="head-up">
					<div class="gr_content">
						<div class="hup-l">
							<a href="#">${userInfo.userPhone}</a><div class="shu"></div>
							<a href="#">退出登录</a>
						</div>
						
						<div class="hup-r">
						<a href="#">个人中心</a><div class="shu"></div>
						<a href="#">社区</a><div class="shu"></div>
						<a href="#">收藏夹</a><div class="shu"></div>
						<a href="#">消息</a><div class="shu"></div>
						<a href="#">联系客服</a><div class="shu"></div>
						<a href="#">网站导航</a>
					</div>
					</div>
				</div>
				<div class="head-down">
					<div class="gr_content">
						<div class="dd-1">
							<div class="logo"><img src="img/logo_03.png"/ style="width: 50px; height: 60px;"></div>
							<div class="shu1"></div>
							<div class="fab"><img src="img/fabu_03.png"/ style="width: 700px; height: 60px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="gr_main">
				<div class="gr_content">
					<div class="conin">
						<form action="<%=request.getContextPath() %>/enterprisePic.do" method="post" enctype="multipart/form-data">
							<div class="coin-mid">
								<div class="comid">
									<div class="title-0"><span>企业信息</span></div>
									<div class="tit-f-0"><span style="color: #FB5685;">请您上传企业相关照片</span></div>
									
									
									
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 法人身份证照:</div>
										<div class="infor-r-0">
											正面照片<input type="file" id="Person_Picture1" name="legalPersonPicture" onchange="preImg(this.id,'legalPersonPicture_img1')">
											
											反面照片<input type="file" id="Person_Picture2" name="legalPersonPicture" onchange="preImg(this.id,'legalPersonPicture_img2')">
											
										</div>
									</div>
									
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 营业执照照片:</div>
										<div class="infor-r-0">
											<input type="file" id="License_Picture" name="LicensePicture" onchange="preImg(this.id,'License_Picture_img')">
											
										</div>
									</div>
									
								</div>
								
								<div class="tijo">		
									<input type="submit" class="butt" value="提交">
								</div>
							</div>
						</form>
						<img src="" id="legalPersonPicture_img1">
						<img alt="" src="" id="legalPersonPicture_img2">
						<img alt="" src="" id="License_Picture_img" >
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="gr_content">
					<div class="foot-up">
						<div class="upone">
							<div class="oa"><a href="">豆丁指南:</a></div>
							<div class="oa"><a href="">注册</a></div>
							<div class="oa"><a href="">发布</a></div>
							<div class="oa"><a href="">联系我们</a></div>
							<div class="oa"><a href="">简介</a></div>
						</div>
						<div class="upone">
							<div class="oa"><a href="">特色产品:</a></div>
							<div class="oa"><a href="">特色创意产品</a></div>
			
						</div>
						<div class="upone">
							<div class="oa"><a href="">服务支持:</a></div>
							<div class="oa"><a href="">推广</a></div>
							<div class="oa"><a href="">招商</a></div>
						</div>
						<div class="upone">
							<div class="oa"><a href="">帮助中心:</a></div>
							<div class="oa"><a href="">简介</a></div>
							<div class="oa"><a href="">问题</a></div>
						</div>
					</div>
					<div class="foot-down">
						<span>©西安豆丁工匠网络科技有限公司</span>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
