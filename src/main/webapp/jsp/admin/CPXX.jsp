<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CPXX.jsp' starting page</title>
    
	  
	<link rel="stylesheet" href="<%=path%>/layui/css/layui.css">
	  <script t src="<%=path%>/layui/layui.js"></script> 
	<script type="text/javascript" src="<%=path%>/js/jquery-1.4.4.min.js" ></script>
	<script>
      layui.use(['form','layer'], function(){
      var form = layui.form();
      var layer = layui.layer;
 
      
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

 
});
</script>
	<style type="text/css">
	  .hide{
	    display: none;
	  }
	</style>

  </head>
  
  <body>
     <H2>审核页面</H2>
     <div>
        <span>产品标题：${checkSupply.data.title}</span><br>
     <span>产品名称：${checkSupply.data.productName}</span><br>
     <span>产品数量：${checkSupply.data.count}</span><br>
     <span>产品价格：${checkSupply.data.price}</span><br>
     <span>联系方式：${checkSupply.data.tel}</span><br>
     <span>创建时间：${checkSupply.data.createTime}</span><br>
     <span>
        <c:forEach items="${checkSupply.data.specs}" var="spec">
         <span>规格:${spec.spec}</span>&nbsp;&nbsp;
         <span>价格:${spec.price}</span>&nbsp;&nbsp;
         <span>数量:${spec.count}</span>
         <br>
        </c:forEach>
     </span>
     </div>
     <div>
       <span>产品详情</span>
       <p>${checkSupply.data.detail}</p>
     </div>
     <div class="picDiv">
        <span>产品图片</span>
        <a class="picString hide" >${checkSupply.data.pictrue}</a>
     </div>
      <form class="layui-form" action="<%=path%>/supply/saveCheckedMsg.do" method="post">
      <input  class="yes" type="radio" name="supply.status" value="2" lay-filter="radio" title="审核通过">
      <input class="no" type="radio" name="supply.status" value="6" lay-filter="radio" title="审核未通过" checked="checked"><br>
      <textarea name="supply.node"  required placeholder="请输入" class="layui-textarea "></textarea>
      <input type="hidden"  name="supply.supply_id" value="${checkSupply.data.supply_id}">
      <button class="layui-btn" lay-submit lay-filter="form">立即提交</button>
     </form>
  </body>
  <script type="text/javascript">
          //图片回显
          var picString = $(".picString").text().split(",");
          var picDiv= $(".picDiv");
          for(var i=0;i<picString.length;i++){
             picDiv.append("<img src='http://192.168.0.166:8088<%=path%>/51douding/"+picString[i]+"'\/>");
           
          }
           var a = $("img[src='http://192.168.0.166:8088<%=path%>/51douding/']").addClass("hide");
        </script>
</html>
