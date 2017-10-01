<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css">
    <script  src=" <%=path%>/layui/layui.js"></script> 
    <script type="text/javascript" src="<%=path%>/js/jquery-3.0.0.min.js" ></script>
	<script type="text/javascript">
	
		layui.use('element', function() {
			var element = layui.element();

			//一些事件监听
			element.on('tab(demo)', function(data) {
				console.log(data);
			});
		});
	</script>
<style type="text/css">
.layui-nav-tree .layui-nav-item {
    display: block;
    width: 100%;
    line-height: 45px;
    height: 12%;
}
</style>
  </head>
  
  <body>
     <shiro:hasPermission name="admin:userPermission:select">
       <%-- <h2>查询角色权限</h2>
       <form action="<%=path%>/selectRoleAllPermission.do" method="post">
       		普通用户:<input name="roleName" type="radio" value="user">
   			商家：<input name="roleName" type="radio" value="enterpriese"><br>   
      			 <input type="submit" value="查询">
       </form> --%>
       <hr>
       
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
          <li class="layui-nav-item"><a href="<%=path%>/selectUncheck.do">进入企业注册审核</a></li>
          <li class="layui-nav-item"><a href="<%=path%>/supply/unCheckProduct.do">进入产品发布审核</a></li>
          <li class="layui-nav-item"><a href="<%=path%>/demand/adminSelectUncheckDemand.do">进入需求发布审核</a></li>
          <li class="layui-nav-item"><a>产品推荐管理</a>
             <dl class="layui-nav-child">
             <dd><a href="">查看当前产品推荐</a></dd>
             </dl>
          </li>
          <li class="layui-nav-item"><a>需求推荐管理</a>
             <dl class="layui-nav-child">
             <dd><a href="">查看当前需求推荐</a></dd>
             </dl>
          </li>
          <li class="layui-nav-item"><a>创意推荐管理</a>
             <dl class="layui-nav-child">
             <dd><a href="<%=path%>/ideado/adminSelectRecommendIdea.do">查看当前创意推荐</a></dd>
             <dd><a　href="">查看所有的创意</a></dd>
             </dl>
          </li>
          <li class="layui-nav-item"><a>轮播图管理</a>
            <dl class="layui-nav-child">
               <dd><a href="">查看当前轮播图</a></dd>
             </dl>
          </li>
        </ul>
     </shiro:hasPermission>
  </body>
</html>
