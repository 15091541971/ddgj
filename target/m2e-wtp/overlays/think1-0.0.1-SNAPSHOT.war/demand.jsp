<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>supply</title>
</head>
<body>

<h1>supply</h1>

<form action="<%=request.getContextPath()%>/supply/addSupply.do" enctype="multipart/form-data" method="post">
<table>
<thead>添加idea</thead>
<tr><td><label>supply_id</label></td><td><input type="text" name="supply_id" ></td></tr>
<tr><td><label>fromId</label></td><td><input type="text" name="fromId.id"></td></tr>
<tr><td><label>title</label></td><td><input type="text" name="title"></td></tr>
<tr><td><label>productName</label></td><td><input type="text" name="productName"></td></tr>
<tr><td><label>detail</label></td><td><input type="text" name="detail"></td></tr>
<tr><td><label>price</label></td><td><input type="text" name="price"></td></tr>

<tr><td><label>count</label></td><td><input type="text" name="count"></td></tr>
<tr><td><label>adress</label></td><td><input type="text" name="adress"></td></tr>
<tr><td><label>tel</label></td><td><input type="text" name="tel"></td></tr>
<tr><td><label>picture</label></td><td><input type="file" name="pictrue5"></td></tr>
<tr><td><label>picture</label></td><td><input type="file" name="pictrue6"></td></tr>
<tr><td><label>maxDate（有效期）</label></td><td><input type="" name="pictrue6"></td></tr>

<tr><td><input type="submit" value="提交"></td></tr>
</table>
</form>
<hr>
<a href="<%=request.getContextPath()%>/supply/selectSupply.do">查询supply</a><br>
<a href="<%=request.getContextPath()%>/demand/selectDemand.do">查询demand</a>
<a href="<%=request.getContextPath()%>/supply/addFavorites.do?user_id=665&demand_id=4454">添加supply收藏</a><br>
<a href="<%=request.getContextPath()%>/supply/removeFavorites.do?user_id=665&demand_id=4454">删除supply的收藏</a><br>
<a href="<%=request.getContextPath()%>/supply/selectFavoritesDemand.do?user_id=665">查看supply的收藏</a><br>

</body>
</html>
