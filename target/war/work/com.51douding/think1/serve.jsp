<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>supply</title>
</head>
<body>
<h2>serve!</h2>
<hr>
<a href="<%=request.getContextPath()%>/serve/selectServe.do">查询serve</a>
<a href="<%=request.getContextPath()%>/serve/addFavorites.do?user_id=122&serve_id=6565">添加serve的收藏</a>
<a href="<%=request.getContextPath()%>/serve/removeFavorites.do?user_id=122&serve_id=6565">添加serve的收藏</a>
<a href="<%=request.getContextPath()%>/serve/selectMyServeFavorites.do?user_id=122">查看serve的收藏</a>
<hr>
<form action="<%=request.getContextPath()%>/serve/addServe.do" enctype="multipart/form-data" method="post">

<table>
<tr><td><label>idea_Id</label></td><td><input type="text" name="idea_Id" ></td></tr>
<tr><td><label>detail</label></td><td><input type="text" name="detail"></td></tr>
<tr><td><label>title</label></td><td><input type="text" name="title"></td></tr>

<tr><td><label>detail</label></td><td><input type="text" name="detail"></td></tr>
<tr><td><label>price</label></td><td><input type="text" name="price"></td></tr>
<tr><td><label>fromId</label></td><td><input type="text" name="fromId.userId"></td></tr>
<tr><td><label>count</label></td><td><input type="text" name="count"></td></tr>
<tr><td><label>views</label></td><td><input type="text" name="views"></td></tr>
<tr><td><label>type</label></td><td><input type="text" name="type"></td></tr>
<tr><td><label>tel</label></td><td><input type="text" name="tel"></td></tr>
<tr><td><label>picture</label></td><td><input type="file" name="pictrue5"></td></tr>
<tr><td><label>document</label></td><td><input type="file" name="document"></td></tr>
<tr><td><input type="submit" value="提交"></td></tr>
</table>
</form>

</body>

</html>
