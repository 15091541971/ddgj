<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<% String path=request.getContextPath(); %>          
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="zh-CN">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title></title>
	<link rel="stylesheet" href="<%=path %>/ddgj/css/base.css">

	<link rel="stylesheet" href="<%=path %>/ddgj/css/lunbo.css" type="text/css" />
<script type="text/javascript" src="<%=path %>/ddgj/js/jquery-3.2.1.min.js"></script>
</head>

<body>


			<div class="featured-wrapper">
				<div id="featured-content">
				<c:forEach items="${pictures}" var="picture">
					<div class="featured-post">
						<a href="http://sc.chinaz.com/" title="怎样给扁平化风格选择合适的字体（附字体案例）">
						<img src="http://192.168.0.201:8888/51douding/${picture }" alt="怎样给扁平化风格选择合适的字体（附字体案例）" class="featured-thumbnail " /></a>


					</div>
					</c:forEach>

					<!-- .featured-post -->
					<!--<span id="slider-prev" class="slider-nav">←</span>-->
					<!--<span id="slider-next" class="slider-nav">→</span>-->
				</div>


				<div id="slider-nav">
					<ul id="slide-thumbs">
					<c:forEach items="${pictures}" var="picture">
						<li>
						<a href="http://sc.chinaz.com/?flat-design-fonts" title="怎样给扁平化风格选择合适的字体（附字体案例）">
						<img src="http://192.168.0.201:8888/51douding/${picture }" alt="怎样给扁平化风格选择合适的字体（附字体案例）" class="slider-nav-thumbnail " /></a>
						</li>
						<li>
					
                  </c:forEach>
					</ul>
				</div>
			</div>
			<script type="text/javascript" src="<%=path %>/ddgj/js/jquery.masonry.min.js"></script>
			<script type="text/javascript" src="<%=path %>/ddgj/js/jquery.cycle.min.js"></script>
			<script type="text/javascript">
				/* <![CDATA[ */
				var slider_settings = {"timeout":"4000"};
				/* ]]> */
			</script>
			<script type="text/javascript" src="<%=path %>/ddgj/js/footer-scripts-light.js"></script>

</body>

</html>


<!--<div class="xlk">-->
<!--<div class="xlk-l">-->
<!--<p class="msn1">专利编号</p><br>-->
<!--<input class="msnk1" type="text" title="search" placeholder="">-->
<!--</div>-->
<!--<div class="xlk-r>-->
<!--<p class="msn1">专利类别</p>-->
<!--<select name="select1" class="msnk">-->
<!--<option value="option1" selected="selected">下拉1</option>-->
<!--<option value="option2" >下拉2</option>-->
<!--<option value="option3">下拉3</option>-->
<!--</select>-->
<!--</div>-->
<!--</div>-->