<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="<%=request.getContextPath()%>/suppply/addFavorites.do?user_id=455&supply_id=465">收藏demand</a><BR>
<a href="<%=request.getContextPath()%>/suppply/removeFavorites.do?user_id=455&supply_id=465">删除demand收藏</a><BR>
<a href="<%=request.getContextPath()%>/suppply/selectMySupplyFavorites.do?user_id=455">查看demand收藏</a><BR>

</body>
</html>