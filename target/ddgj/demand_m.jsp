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

<form action="<%=request.getContextPath()%>/demand/addDemand.do" enctype="multipart/form-data" method="post">
<table>
<thead>添加idea</thead>
<tr><td><label>demand_id</label></td><td><input type="text" name="demand_id" ></td></tr>
<tr><td><label>fromId</label></td><td><input type="text" name="fromId.userId"></td></tr>
<tr><td><label>title</label></td><td><input type="text" name="title"></td></tr>

<tr><td><label>detail</label></td><td><input type="text" name="detail"></td></tr>
<tr><td><label>price</label></td><td><input type="text" name="price"></td></tr>
<tr><td><label>maxDay</label></td><td><input type="text" name="maxDay"></td></tr>
<tr><td><label>count</label></td><td><input type="text" name="count"></td></tr>
<tr><td><label>address</label></td><td><input type="text" name="region.xian_id"></td></tr>
<tr><td><label>tel</label></td><td><input type="text" name="tel"></td></tr>
<tr><td><label>picture</label></td><td><input type="file" name="pictrue5"></td></tr>

<tr><td><input type="submit" value="提交"></td></tr>
</table>
</form>
</body>
</html>
