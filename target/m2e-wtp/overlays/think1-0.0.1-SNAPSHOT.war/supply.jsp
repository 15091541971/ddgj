<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="<%=request.getContextPath()%>/supply/addFavorites.do?user_id=455&supply_id=465">收藏demand</a><BR>
<a href="<%=request.getContextPath()%>/supply/removeFavorites.do?user_id=455&supply_id=465">删除demand收藏</a><BR>
<a href="<%=request.getContextPath()%>/suppply/selectMySupplyFavorites.do?user_id=455">查看demand收藏</a><BR>
<form action="<%=request.getContextPath()%>/supply/addSupply.do" enctype="multipart/form-data" method="post">
<table>
<thead>添加idea</thead>
<!-- <tr><td><label>supply_id</label></td><td><input type="text" name="supply_id" ></td></tr> -->
<tr><td><label>fromId</label></td><td><input type="text" name="fromId.id"></td></tr>
<tr><td><label>title</label></td><td><input type="text" name="title"></td></tr>
<tr><td><label>productName</label></td><td><input type="text" name="productName"></td></tr>
<tr><td><label>detail</label></td><td><input type="text" name="detail"></td></tr>
<tr><td><label>price</label></td><td><input type="text" name="price"></td></tr>

<tr><td><label>count</label></td><td><input type="text" name="count"></td></tr>
<tr><td><label>region</label></td><td><input type="text" name="region.xian_id"></td></tr>
<tr><td><label>tel</label></td><td><input type="text" name="tel"></td></tr>
<tr><td><label>picture</label></td><td><input type="file" name="pictrue5"></td></tr>
<tr><td><label>picture</label></td><td><input type="file" name="pictrue6"></td></tr>
<tr><td><label>maxDate（有效期）</label></td><td><input type="" name="pictrue6"></td></tr>

<tr><td><input type="submit" value="提交"></td></tr>
</table>
</form>
</body>
</html>