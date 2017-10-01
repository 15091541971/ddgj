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
		    $(function(){
		      $("#email").focusout(function(){
		    	  
		         var email = $(this).val();
		         var regx = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/;
		         if(regx.test(email)){
		        	 $(this).next("span").text("");
		          
		         }else{
		        		
		           $(this).next("span").text("邮箱格式不正确");
		         }
		      });
		    
		    
		    });
		    $(function(){
		    	$(".normal").focusout(function(){
		    		var value=$(this).val();
		    		if(value.length<1){
		    			$(this).next("span").text("不能为空");
		    			
		    		}else{
		    			$(this).next("span").text("");
		    		}
		    		
		    	})
		    })
		
		</script>
		<style type="text/css">
		
		.cue{
		color: red;
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
					
						<form  id="fileForm"action="<%=path%>/personInfo.do" enctype="multipart/form-data" method="post" >
						 
							<div class="coin-mid">
								<div class="comid-l">
									<div class="title"><span>个人信息</span></div>
									<div class="tit-f"><span style="color: #FB5685;">建议您完善个人信息，为您推荐更合适的产品与服务</span></div>
									<div class="infor">
										<div class="infor-l"><span style="color: #FB5685;">*</span>姓名:</div>
										<div class="infor-r"><input type="text" name="name" id="" value="" class="normal" /><span class="cue"></span></div>
									</div>
									
										
									<div class="infor">
										<div class="infor-l"><span style="color: #FB5685;">*</span>昵称:</div>
										<div class="infor-r"><input type="text" name="nikeName" id="" value=""  class="normal"/><span class="cue"></span></div>
									</div>
									<div class="infor">
										<div class="infor-l"><span style="color: #FB5685;">*</span>行业:</div>
										<div class="infor-r"><input type="text" name="field" id="" value=""  class="normal"/><span class="cue"></span></div>
									</div>
									<div class="infor">
										<div class="infor-l"><span style="color: #FB5685;">*</span>邮箱:</div>      
										<div class="infor-r"><input type="text" name="email" id="email" value="" /><span id="s_email" style="color: red"></span></div>
										<span id="emailMsg"></span>
									</div>
									<div class="infor">
										<div class="infor-l"><span style="color: #FB5685;">*</span>固定电话:</div>
										<div class="infor-r"><input type="text" name="telephone" id="" value="" /><span id="s_telephone" style="color: red"></span></div>
									</div>
									<div class="infor">
										<div class="infor-l"><span style="color: #FB5685;">*</span>地址:</div>
										<div class="infor-r"><input type="text" name="address" id="" value="" class="normal"/><span class="cue"></span></div>
									</div>								
								</div>
								  
								<div class="comid-r">
								<!-- 
									<iframe   id="iframe" name="iframe" src="shangchuan0.html" width="120" height="150" scrolling="no" frameborder="no"></iframe>
								 -->
								 <div>	 
									<img src="" id="head_pic" name="headPic"/>
								 </div>
									
								</div>
								
								<input type="file" id="up_head_pic" name="files" onchange="preImg(this.id,'photo')">
								<div class="tijo">	
								
									<input class="butt" id="butt" type="submit" value="确认提交"/>
								</div>
								
							</div>
						</form>
						<div id="head_pic_div">
						     <img alt="" src="" id="photo">
						</div>
						   
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
