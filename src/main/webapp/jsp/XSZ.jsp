<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		 <link rel="stylesheet" href="../layui/css/layui.css">
		 <script t src="../layui/lay/dest/layui.all.js"></script> 
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/jquery.pagination.js" ></script>
		<script type="text/javascript" src="../js/ALL.js" ></script>
		<script type="text/javascript" >
			$(function(){
			        var userId="${userId}";
			        //layui
			        layui.use(['laypage','layer'],function() {
					var laypage = layui.laypage, layer = layui.layer;
					
					//获取后台数据总数
					var sum = ${supply.number}; //数据总数
					var pageSum=sum;
				    var a = pageSum / 10;
				    var pages; //总页数
				    
			
				    if (a > 1) {
					pages = parseInt(a) + 1;
				    } else {
					pages = 1;
				    }
				    //调用分页
			        laypage({
				    cont : 'pages',
					pages : pages,
					first : 1,
				    curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
                    var page = location.search.match(/page=(\d+)/);
                    return page ? page[1] : 1;
                    }(),
					last : false,
					jump:function(obj,first){
					   var curr = obj.curr;   //获取当前页
					   var size = curr*10-10; 
					   
					    if(!first){
					    location.href='/supply/selectSupply.do?fromId='+userId+
					    '&size='+size+'&supply.status=0'+'&page='+curr;
					   } 
					 }
					});
				});
                //单个删除
				 $(".deleteSupply").click(function() {
					var id = $(this).attr("id");
					var thisTr = $(this).parent().parent();
					layer.confirm('您确定要删除吗？', {
						btn : [ '确定', '取消' ]
					}, function() {
						location.href='${pageContext.request.contextPath}/supply/deleteMySupply.do?fromId='+userId+'&supply.status=0'+'&supply.supply_id='+id;
					    layer.msg("删除成功");
					});
				});
				
				
				//复选框控制
                $("#allchoose").click(function(){
                  if($(this).is(':checked')){
                     $("input[type='checkbox']").attr("checked",true);
                  }else{
                     $("input[type='checkbox']").attr("checked",false);
                  }
               });
               
               $(".checkBox").click(function(){
                  if(!$(this).is(":checked")){
                    $("#allchoose").attr("checked",false);
                  }
                  ckeckAll();
               });
              
               function ckeckAll(){
                  var checkSum = $(".checkTd :checkbox").size();
                  var checkedSum=0;
                  $(".checkTd :checkbox").each(function(){
                    if($(this).is(":checked")){
                      checkedSum++;
                    }
                  });
                   if(checkSum==checkedSum){
                      $("#allchoose").attr("checked",true);
                   }else{
                     $("#allchoose").attr("checked",false);
                   }; 
                  };
                 $(".deleteSelected").click(function(){
                     var valArr = new Array;
	                 layer.confirm('您确定要删除吗？',{
					 btn : [ '确定', '取消' ]},function(){
					  $(".checkTd :checkbox[checked]").each(function(i){
		              valArr[i] = $(this).val();
		             
                    });
                      var vals = valArr.join(',');//转换为逗号隔开的字符串
                      location.href='${pageContext.request.contextPath}/supply/deleteMySupplys.do?fromId='+userId+'&supply.status=0'+'&supply_ids='+vals;
					});
                 });
               
			}); 
		</script>
		<style type="text/css">
		  .trHidden{
		     display: none;
		  }
		  .deleteSelected{  
	      float:left;
          width: 100px;
          line-height: 30px;
          position: relative;
          top: 13px;
          left: 10px;
           }
		</style>
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
								<a href="../jsp/FBGY.jsp">发布供应产品</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="XSZ.jsp">查询已发布</a>
								<div class="rightimg"><img src="../img/rightward.png" /></div>
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
				<div class="xsz_main">
					<div class="xsz_head">
						<div class="xsz_content">
							<div class="xsz_headMain">
								<div class="xsz_headChoose">
									<input type="checkbox" id="allchoose" value="" /><label for="allchoose">全选</label>
								</div>
								
							</div>
						</div>
					</div>
					<div class="xsz_nav" style="height:auto">
					
					   <table   class="layui-table" lay-skin="line" width="100%"  style="text-align:center" cellspacing="0">
					      <tr>
					        <th >&nbsp;</th>
					        <th>标题</th>
					        <th>产品名称</th>
					        <th>价格</th>
					        <th>数量</th>
					        <th>发布时间&uarr;&darr;</th>
					        <th>状态</th>
					        <th>操作</th>
					      </tr>
					      <c:forEach var="supply" items="${supply.data}" varStatus="len">
					        <tr class="${supply.supply_id}">
					         <c:choose>
					           <c:when test="${supply.status!=7 && supply.status!=1}">
					              <td class="checkTd"><input type="checkbox" value="${supply.supply_id}"  class="checkBox"></td>
					           </c:when>
					           <c:otherwise>
					             <td><div></div></td>
					           </c:otherwise>
					         </c:choose>
					          
					        
					          <td>${supply.title}</td>
					          <td>${supply.productName}</td>
					          <td>${supply.price}￥</td>
					          <td>
					            <fmt:formatNumber value="${supply.count}" type="number"></fmt:formatNumber>
					          </td>
					          <td>
					            <fmt:formatDate value="${supply.createTime}" pattern="yyyy年MM月dd日HH点mm分ss秒"/>
					          </td>
					          <td>
					             <c:choose>
					                <c:when test="${supply.status==2}">
					                  <a>审核通过</a>
					                </c:when>
					                <c:when test="${supply.status==1}">
					                  <a>等待审核</a>
					                </c:when>
					                <c:when test="${supply.status==6}">
					                  <a>审核未通过</a>
					                </c:when>
					                <c:when test="${supply.status==7}">
					                  <a>管理员删除</a>
					                </c:when>
					             </c:choose>
					          </td>
					         
					          <td class="test1">
					          <c:if test="${supply.status!=7 && supply.status!=1}">
				                <a target="BJXX" href="${pageContext.request.contextPath}/supply/selectSupplyById.do?supply_id=${supply.supply_id}"><i class="layui-icon">&#xe642;</i></a><!-- 编辑 -->
				                <a  class="deleteSupply" href="javaScript:void(0)" id="${supply.supply_id}"><i class="layui-icon">&#xe640;</i></a><!-- 删除 -->
				                </c:if>
				                <a target="CKXQ" href="${pageContext.request.contextPath}/supply/checkSupply.do?supply_id=${supply.supply_id}" ><i class="layui-icon" >&#xe60a;</i></a><!-- 查看 -->
					          </td>
					        </tr>
					      </c:forEach>
					   </table>
					  
					</div>
					<div class="xsz_goodsAll">
					                    <div class="deleteSelected">
									   <a href="javaScript:void(0)"><i class="layui-icon" style="font-size: 25px">&#xe640;</i>删除所选</a>
								       </div>
								
									    <div id="pages"></div> 
								        <fieldset class="layui-elem-field layui-field-title" style=" margin-top: 50px;"></fieldset>
						                <div class="xsz_content">
							<div class="xsz_headMain">
										<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';display: inline;">
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
