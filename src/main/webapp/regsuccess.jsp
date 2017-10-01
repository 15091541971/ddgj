<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regsuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<meta http-equiv="refresh" content="2;url=${pageContext.request.contextPath}/login.jsp"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=path%>js/jquery-3.0.0.min.js"></script>
	<script type="text/javascript">
	  $(function(){
	     
	  
	  
	  
	  
	  
	  
	  });
	
	
	</script>

  </head>
  
  <body>
       <span>注册成功，正在为您跳转......<br>
                          若长时间未响应，请点击<a href="<%=path%>/login.jsp">登陆</a></span>
  </body>
</html>
