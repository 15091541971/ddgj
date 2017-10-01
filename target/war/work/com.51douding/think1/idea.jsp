<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="<%=request.getContextPath()%>/ideado/selectIdea.do?text=豆丁&pageNumber=1&pageMaxSize=10">json(包含模糊查询，text输入内容，可选)</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/isFavoriteIdea.do?idea_id=1&user_id=10">查看创意是否被收藏</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/isPraiseIdea.do?idea_id=1&user_id=10">查看创意是否被点赞</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/addFavoriteIdea.do?idea_id=1&user_id=10">收藏idea</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/removeFavoriteIdea.do?idea_id=1&user_id=10">取消idea的收藏idea</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectMyFavorite.do?user_id=1489202507754&pageNumber=1&pageMaxSize=10">查找我收藏的创意</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectIdea.do?idea.idea_Id=1490155256825&user_id=1489202507754">根据id查找创意</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/addIdeaPraise.do?idea_id=1490155256825&user_id=1489202507754">点赞</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/removePraise.do?idea_id=1490155256825&user_id=1489202507754">取消点赞</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectModuleAll.do?pageNumber=1&pageMaxSize=10">查询创意模块</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectIdeaOfModule.do?moduleid=4&pageNumber=1&pageMaxSize=10">查询每个模块中的idea</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/find.do?text=豆丁&pageNumber=1&pageMaxSize=10">模糊查询</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/addComment.do?idea_id=16464&user.Id=1545454&context=15424sfdg">给某一个创意添加评论</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectCommentsByIdeaId.do?idea_id=1490155146727&pageNumber=1&pageMaxSize=10">根据id查找创意的评论</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/removeComment.do?user_id=1490155146727&comment_id=1">删除评论</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectIdea.do?type=2&pageNumber=1&pageMaxSize=11">根据typeId查找创意</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectAllType.do">查询所有创意类型</a><br><br>
<a href="<%=request.getContextPath()%>/ideado/selectTypeByTypeId.do?type_id=2">根据type_id查询所有创意类型</a><br><br>
<a href="<%=request.getContextPath()%>ideado/selectIdea.do?fromId=1489202507754&pageNumber=1&pageMaxSize=10">查看我的发布</a><br><br>
<a href="<%=request.getContextPath()%>ideado/deleteIdea.do?idea_Id=1490155259167">删除创意</a><br><br>
<a href="<%=request.getContextPath()%>ideado/auditingIdea.do?idea_Id=1490155259167">审核中创意</a><br><br>
<a href="<%=request.getContextPath()%>ideado/hidenIdea.do?idea_Id=1490155259167">隐藏创意</a><br><br>
<a href="<%=request.getContextPath()%>ideado/addWantto.do?user_id=1489202507754&idea.idea_id=1">添加我想买</a><br><br>
<a href="<%=request.getContextPath()%>ideado/removeWantto.do?user_id=1490155259167&idea.idea_id=3">删除我想买</a><br><br>
<form action="<%=request.getContextPath()%>/ideado/add.do" enctype="multipart/form-data" method="post">
<table>
<thead>添加idea</thead>
<tr><td><label>title</label></td><td><input type="text" name="title"></td></tr>
<tr><td><label>userid</label></td><td><input type="text" name="userid"></td></tr>
<tr><td><label>detail</label></td><td><input type="text" name="detail"></td></tr>
<tr><td><label>type</label></td><td><input type="text" name="type"></td></tr>
<tr><td><label>pictrue0</label></td><td><input type="file" name="pictrue0"></td></tr>
<tr><td><label>pictrue1</label></td><td><input type="file" name="pictrue1"></td></tr>
<tr><td><label>pictrue2</label></td><td><input type="file" name="pictrue2"></td></tr>
<tr><td><label>pictrue3</label></td><td><input type="file" name="pictrue3"></td></tr>
<tr><td><label>pictrue4</label></td><td><input type="file" name="pictrue4"></td></tr>
<tr><td><label>pictrue5</label></td><td><input type="file" name="pictrue5"></td></tr>
<tr><td><input type="submit" value="提交"></td></tr>
</table>
</form>
<hr>
<h2> 专利相关接口!</h2>

<a href="<%=request.getContextPath()%>/patent/findById.do?patent_id=12">根据专利id查询专利</a><br><br>
<a href="<%=request.getContextPath()%>/patent/findFromId.do?patent_fromId=4545">根据用户id查询专利</a><br><br>
<a href="<%=request.getContextPath()%>/patent/delete.do?patent_id=12">根据专利id删除专利</a><br><br>
<a href="<%=request.getContextPath()%>/patent/find?patent_id=12&pageNumber=12&pageMaxSize=121&patent_filed=1545">根据分页查询所有专利</a><br><br>
<a href="<%=request.getContextPath()%>/patent/addCollection.do?userId=12&patent_id=112">添加专利收藏</a><br><br>
<a href="<%=request.getContextPath()%>/patent/findCollection.do?userId=12">根据用户id查找收藏的专利</a><br><br>
<a href="<%=request.getContextPath()%>/patent/removeCollection.do?patent_id=112">根据用户id删除收藏的专利</a><br><br>
</body>
<hr>
<h1>Url:https://192.168.0.201/svn/me/</h1>
</html>