<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SHCP.jsp' starting page</title>
    
	<link rel="stylesheet" href="<%=path%>/layui/css/layui.css">
	<script  src="<%=path%>/layui/lay/dest/layui.all.js"></script> 
	    <script type="text/javascript" src="<%=path%>/js/jquery-1.4.4.min.js" ></script>
	 <script type="text/javascript">
          $(function(){
		         //layui
			   layui.use(['laypage','layer'],function() {
			   var layPage = layui.laypage, layer = layui.layer;
			   
			   
			   	//获取后台数据总数
					var sum = ${uncheckProduct.number}; //数据总数
					var pageSum=sum;
				    var a = pageSum / 10;
				    var pages; //总页数
			        
				    if (a > 1) {
					pages = parseInt(a) + 1;
				    } else {
					pages = 1;
				    }
				    //调用分页
			        layPage({
				    cont : 'pages',
					pages : pages,
					first : 1,
				    curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
                    var page = location.search.match(/page=(\d+)/);
                    return page ? page[1] : 1;
                    }(),
					last : false,
					jump:function(obj,first){
					   var curr = obj.curr;   //获取当前页
					   var size = curr*10-10; 
					    if(!first){
					    location.href='<%=path%>/supply/unCheckProduct.do?size='+size+'&page='+curr;
					   } 
					 }
					});
					})
			});
		     
      
      </script>

  </head>
    
  <body>
     <h2>产品发布审核</h2>
     <table class="layui-table">
       <tr>
         <th>公司名称</th>
         <th>产品标题</th>
         <th>发布日期</th>
         <th>操作</th>
       </tr>
     <c:forEach var="uncheckProduct" items="${uncheckProduct.data}">
       <tr>
         <td>${uncheckProduct.enterpriseName}</td>
         <td>${uncheckProduct.title}</td>
         <td>${uncheckProduct.createTime}</td>
         <td>
           <a href="<%=path%>/supply/adminSelectSupplyById.do?supply_id=${uncheckProduct.supply_id}">审核</a>
         </td>
       </tr>
     </c:forEach>

     </table>
      <div id="pages"></div> 
	 <fieldset class="layui-elem-field layui-field-title" style=" margin-top: 50px;"></fieldset>
  </body>
</html>
