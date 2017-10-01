<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<script type="text/javascript">
		  $(function(){
		
		      $.ajax({
		        url:"/ideado/seletAllPerant.do",
		        type:"post",
                dataType:"json",
                async: false,	
                success:function(result){
                 $.each(result.data,function(i,type){
                   $("#perantType").append(
                   "<option id="+i+">"+type.type_name+"</option>"
                   )
                 })
                 
                 $("#perantType").change(function(){
                  
                 var inx = $("#perantType option:selected").index();
                 if(inx==0){
                  $("#sonType").html("<option>请选择类别<option>");
                  return;
	                 }
	             $("#sonType").html("");
                 var test = $("#perantType option:selected");
                 var index = test.index();
                 var spantext = $(".fabu_allChoose_msg_parent").text(test.text()+":");
                   $.ajax({
                     url:"/ideado/selectTypeByParent.do?type_parent="+index,
                     type:"post",
                     dataType:"json",
                     success:function(json){
                      $.each(json.data,function(x,typeName){
                        $("#sonType").append(
                         "<option id="+x+">"+typeName.type_name+"</option>"
                        )
                      })
                      $("#sonType").change(function(){
                        var sonMsg = $("#sonType option:selected").text();
                       $(".fabu_allChoose_msg_son").text(sonMsg);
                        
                      
                      })
                     }
                   
                   })
                 })
                 
               }
		      });
		      
		  
		  });
		
		</script>
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
						请<span><a href="../login.jsp">登录</a></span>或<span><a href="../Emanage.jsp">免费注册</a></span>
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
			<div class="fabu_content">
				<div class="fabu_head">
					<div class="fabu_headLeft">
						发布产品信息
					</div>
					<div class="fabu_headRight">
						<div class="fabu_typeChoose">
							选择类目
						</div>
						<div class="fabu_typeRe">
							您选择的类目：<span id="fabu_typeRe_first_span">一级类目</span><span>二级类目</span>
						</div>
					</div>
				</div>
				<div class="fabu_main">
					<div class="fabu_maininm">
						<div class="fabu_mainHead">
							为您的产品信息选择合适的类目
						</div>
						<div class="fabu_mainMid">
							<div class="fabu_typeFind">
								<div class="fabu_typeUnit1">
									查找类目
								</div>
								<div class="fabu_typeUnit">
									<a href="#">您常使用的类目</a>
								</div>
								<div class="fabu_typeUnit">
									<a href="#">导入已发布信息</a>									
								</div>
							</div>
							<div class="fabu_typeTxt">
								<div class="fabu_typeBlank">
									<input type="text" value="请输入产品关键词，我们为你推荐类目" onfocus="if (value =='请输入产品关键词，我们为你推荐类目'){value='';$(this).css('color','#333333')}" onblur="if (value ==''){value='请输入产品关键词，我们为你推荐类目';$(this).css('color','#999999')}" />
								</div>
								<div class="fabu_typeSearch">
									<img src="../img/serch.png"/>查找类目
								</div>
							</div>
							<div class="fabu_lei">
								<div class="fabu_leiLeft">
									类目：
								</div>
								<div class="fabu_leiUnit1">
									所有类目
								</div>
								<div class="fabu_leiLine">|</div>
								<div class="fabu_leiUnit">
									供应产品
								</div>
								<!--<div class="fabu_leiUnit">
									加工定制
								</div>-->
								<div class="fabu_leiUnit">
									商务服务
								</div>
							</div>
							<div class="fabu_leiChoose">
								
									<select id="perantType">
									   <option>请选择类别</option>
									</select>
								
									<select id="sonType">
									   <option>请选择类别</option>
									</select>
							</div>
							<div class="fabu_allChoose">
								您当前选择的类目：
								<div class="fabu_allChoose_msg_parent"></div>
								<div class="fabu_allChoose_msg_son"></div>
							</div>
						</div>
						<div class="fabu_mainDown">
							<a href="FBXX2.jsp"><div class="fabu_next">
								下一步，填写详细类目
							</div></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
