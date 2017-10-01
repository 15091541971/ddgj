<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%> 


<html>
  <head>

    
    <title>My JSP 'success.jsp' starting page</title>
    
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
     <h1>登陆成功</h1>
    
     <shiro:user>  
欢迎[<shiro:principal/>]登录，<a href="<%=request.getContextPath() %>/logout.do">退出</a>  
</shiro:user>
<br>
    
<shiro:hasPermission name="user:userInfo:update">
        <c:if test="${userInfo.status==00000}">
         <span>检测到您还没有认证，请点击<a href="${pageContext.request.contextPath}/grxx.jsp">链接</a>填写信息进行认证</span>
        </c:if>
</shiro:hasPermission>
<shiro:hasPermission name="enterprise:userInfo:update">
     
      
        <c:if test="${userInfo.status==00008}"> 
         <span>检测到您还没有认证，请点击<a href="${pageContext.request.contextPath}/sjxx.jsp">链接</a>填写信息进行认证</span>
        </c:if>
        <c:if test="${userInfo.status==00002}">
        <span><a href="${pageContext.request.contextPath}/enterpriseAllInfo.do?enterpriseId=${userInfo.userId}">
               企业后台管理
        </a></span>
        </c:if>
        <c:if test="${userInfo.status==00001}">
           <span>等待管理员审核</span>
        </c:if>
</shiro:hasPermission>  
      
  
     
      <shiro:hasPermission name="admin:userPermission:select">
        <a href="${pageContext.request.contextPath}/admin.jsp">进入管理员页面</a>
      </shiro:hasPermission>
      
  </body>
</html>
