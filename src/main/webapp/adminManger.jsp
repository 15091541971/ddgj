<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminManger.jsp' starting page</title>
    
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
      <div>
      <h2>角色权限查询结果</h2>
        <table>
           <tr>
             <th>角色</th>
             <th>权限ID</th>
             <th>权限标示符</th>
             <th>权限解释</th>
             <th>权限URL</th>
           </tr>
           <c:forEach var="permission" items="${permissionInfo.data}">
             <tr>
               <th>企业用户</th>
               <th>${permission.permissionId}</th>
               <th>${permission.permissionName}</th>
               <th>${permission.permiossionNode}</th>
               <th>${permission.permissionUrl}</th>
               <th><a href="#">删除</a></th>
               <th><a href="#">修改</a></th>
             </tr>
           </c:forEach>
        </table>
      
      </div>
  </body>
</html>
