<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <a href="login.jsp">登录</a>
    <hr>
    <form action="<%=request.getContextPath()%>/D_insertTb_bbs.do" enctype="multipart/form-data" method="post">
    <label>title</label><input type="text" name="title"><br>
   <label>picture</label><input type="file" name="picture"><br>
   <label>content</label><input type="text" name="content"><br>
   <label>userId</label><input type="text" name="userId"><br>
   <input type="submit" value="提交">
   </form>
   <hr>
   <form action="<%=request.getContextPath()%>/D_insertCustom.do" enctype="multipart/form-data" method="post">
     <label>title</label><input type="text" name="title"><br>
   <label>details</label><input type="file" name="picture"><br>
   <label>number</label><input type="text" name="content"><br>
   <label>price</label><input type="text" name="userId"><br>
   <label>userId</label><input type="text" name="userId"><br>
   <label>document</label><input type="text" name="userId"><br>
   <label>picture
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   </label><input type="text" name="userId"><br>
   <label>userId</label><input type="text" name="userId"><br>
   <input type="submit" value="提交">
   
   </form>
   
    
  </body>
</html>
