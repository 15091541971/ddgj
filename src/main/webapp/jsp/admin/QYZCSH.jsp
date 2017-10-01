<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'QYZCSH.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<script type="text/javascript" src="<%=path%>/js/jquery-1.4.4.min.js" ></script>
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css">
	<script  src="<%=path%>/layui/lay/dest/layui.all.js"></script> 
      <script type="text/javascript">
          $(function(){
		         //layui
			   layui.use(['laypage','layer'],function() {
			   var layPage = layui.laypage, layer = layui.layer;
			   
			   
			   	//获取后台数据总数
					var sum = ${uncheck.number}; //数据总数
					var pageSum=sum;
				    var a = pageSum / 10;
				    var pages; //总页数
			        
				    if (a > 1) {
					pages = parseInt(a) + 1;
				    } else {
					pages = 1;
				    }
				    //调用分页
			        layPage({
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
					    location.href='/selectUncheck.do?size='+size+'&page='+curr;
					   } 
					 }
					});
					})
			});
		     
      
      </script>
  </head>
  
  <body>
    <h2>企业审核</h2><br>
    
    <table class="layui-table">
      <tr>
        <th>企业名称</th>
        <th>法人名称</th>
        <th>注册时间</th>
        <th>操作</th>
      </tr>
      <c:forEach var="enterprise" items="${uncheck.data}">
        <tr>
          <td>${enterprise.enterpriseName}</td>
          <td>${enterprise.legalPersonName}</td>
          <td>${enterprise.registeredTime}</td>
          <td><a target="_enterprise" href="/selectEnterpriseMSG.do?fromId=${enterprise.fromId}">审核</a></td>
        </tr>
      </c:forEach>
    </table>
      <div id="pages"></div> 
	 <fieldset class="layui-elem-field layui-field-title" style=" margin-top: 50px;"></fieldset>
  </body>
</html>
