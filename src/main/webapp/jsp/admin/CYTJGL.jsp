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
    
    <title>My JSP 'CYTJGL.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
      <table>
        <tr>
          <th>标题</th>
          <th>发布者</th>
          <th>创建时间</th>
          <th>状态</th>
          <th>操作</th>
        </tr>
        <c:forEach items="${recommendedIdeas.data}" var="ideas">
          <tr>
            <td>${ideas.title}</td>
            <td>${ideas.fromId.nikeName}</td>
            <td>${ideas.createdate}</td>
            <td>${ideas.status}</td>
            <td>
             <a>移除</a>
            </td>
          </tr>
        </c:forEach>
      </table>
  </body>
</html>
