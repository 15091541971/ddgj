<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'XQXQ.jsp' starting page</title>
    
	<link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <script type="text/javascript" src="<%=path%>/js/jquery-3.0.0.min.js" ></script>
    <script t src="<%=path%>/layui/layui.js"></script> 
	<script>
	 layui.use(['form','layer'], function(){
	  var form = layui.form();
	  var layer = layui.layer;
	 
	  //各种基于事件的操作，下面会有进一步介绍
	 form.on('radio(radio)',function(data){
	    if(data.value==6){
	      $("textarea").removeClass("hide");
	      $("textarea").attr("lay-verify","required");
	    }else{
	      $("textarea").addClass("hide");
	      $("textarea").removeAttr("lay-verify");
	      $("textarea").removeAttr("required");
	      
	    }
	 });
	 var idPicStr = $(".picString").html().split(",");
	 var idPicDiv = $(".idPicDiv");
	 for(var x=0;x<idPicStr.length;x++){
	   idPicDiv.append("<img src='http://192.168.0.166:8088/douding/51douding/"+idPicStr[x]+"'\/>")
	 }
 	 var a = $("img[src='http://192.168.0.166:8088/douding/51douding/']").addClass("hide");
	});
</script>
<style>
 .hide{
   display: none;
 }
</style>
  </head>
  
  <body>
     <h2>需求详细信息</h2>
     <span>标题:${checkDemand.data.title}</span><br>
     <span>类型:${checkDemand.number.type_name}</span><br>
     <span>数量:${checkDemand.data.count}</span><br>
     <span>其他说明:${checkDemand.data.otherRequire}</span>
     <p>${checkDemand.data.detail}</p>
     <div class="idPicDiv">
       <a class="picString hide">${checkDemand.data.pictrue}</a>
     </div>
     <form action="<%=path%>/demand/saveCheckMsg.do">
      <input  class="yes" type="radio" name="demand.status" value="2" lay-filter="radio" title="审核通过">
      <input class="no" type="radio" name="demand.status" value="=6" lay-filter="radio" title="审核未通过" checked="checked"><br>
      <textarea name="demand.node"  required placeholder="请输入" class="layui-textarea "></textarea>
         <input type="hidden"  name="demand.demand_id" value="${checkDemand.data.demand_id}">
         <button class="layui-btn" lay-submit lay-filter="form">立即提交</button>
     </form>
  </body>
</html>
