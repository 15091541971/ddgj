<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h2>Hello World!</h2>
<form action="<%=request.getContextPath() %>/mainpage/fileUpload.do" enctype="multipart/form-data" method="post">
<label>图片</label><input type="file" name="picture1"><br>
<label>图片</label><input type="file" name="picture2"><br>
<input type="submit" value="提交">
</form>
<!-- <a href="http://192.168.0.201:8080/mainpage/getMainPictruepath.do">获取轮播图</a> -->
<a href="http://192.168.0.201:8080/mainpage/ideaRecommend.do">首页创意</a>
<a href="http://192.168.0.201:8080/mainpage/productRecommend.do">首页产品</a>
<a href="http://192.168.0.201:8080/mainpage/serveRecommend.do">首页服务</a>
<a href="http://192.168.0.201:8080/mainpage/getAdvertisement.do">获得轮播图</a>
<form action="<%=request.getContextPath()%>/mainpage/fileUpload.do" enctype="multipart/form-data" method="post">
<table>
<thead>添加轮播图</thead>
<tr><td><label>url</label></td><td><input type="text" name="url"></td></tr>
<tr><td><label>title</label></td><td><input type="text" name="title"></td></tr>
<tr><td><label>pictrue</label></td><td><input type="file" name="pictrue"></td></tr>

<tr><td><input type="submit" value="提交"></td></tr>
</table>
</form>
</body>
</html>
