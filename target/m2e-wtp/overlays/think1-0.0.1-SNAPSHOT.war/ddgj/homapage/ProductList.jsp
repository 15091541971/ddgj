<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/ProductList.css">
<link rel="stylesheet" href="css/fenye.css">
<link rel="stylesheet"
	href="<%=path%>/layui-v1.0.9_rls/layui/css/layui.css" media="all">
<script src="js/jquery-3.2.1.min.js"></script>
<title>产品列表</title>
</head>
<body>
	<div class="list">
		<ul class="l-name">
			<li class="qqq">创意</li>
			<li>服务</li>
			<li>产品</li>
		</ul>
		<div class="lbnr">
			<div id="nr" class="nr">
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>美工ing阿是否还ofhi哦啊发哦是否hi哦</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>安抚哈哈发了卡仕达卡了放咖喱</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>安抚哈哈发了卡仕达卡了放咖喱</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>安抚哈哈发了卡仕达卡了放咖喱</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>安抚哈哈发了卡仕达卡了放咖喱</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div id="idea"></div>

			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 50px;">
				<!-- <legend>将一段已知数组分页展示</legend> -->
			</fieldset>
			</div>
			<div class="nr">
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>美工ing阿是否还ofhi哦啊发哦是否hi哦</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div class="mh">
					<div class="imgs">
						<img src="images/11496452133_.pic_hd.jpg">
					</div>
					<div class="nt">
						<p>安抚哈哈发了卡仕达卡了放咖喱</p>
						<p>2017-04-04</p>
					</div>
					<div class="tj">
						<button class="wytg" type="button">添加</button>
						<button class="wytgb" type="button">删除</button>
					</div>
				</div>
				<div id="serve"></div>

			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 50px;">
				<!-- <legend>将一段已知数组分页展示</legend> -->
			</fieldset>

			</div>
		</div>
		<div class="nr">
			<div class="mh">
				<div class="imgs">
					<img src="images/11496452133_.pic_hd.jpg">
				</div>
				<div class="nt">
					<p>美工ing阿是否还ofhi哦啊发哦是否hi哦</p>
					<p>2017-04-04</p>
				</div>
				<div class="tj">
					<button class="wytg" type="button">添加</button>
					<button class="wytgb" type="button">删除</button>
				</div>
			</div>

			<div id="supply"></div>

			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 50px;">
				<legend>将一段已知数组分页展示</legend>
			</fieldset>
		</div>
	</div>

	<!-- <div id="demo7"></div>
 
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>将一段已知数组分页展示</legend>
</fieldset> -->



</body>
<script>
	$('.l-name li').click(function() {
		$(this).addClass('qqq').siblings().removeClass('qqq');
		$(".nr").hide().eq($(".l-name li").index(this)).show();
	});
</script>
<script type="text/javascript"
	src="<%=path%>/layui-v1.0.9_rls/layui/layui.js"></script>
<script>
	layui.use([ 'laypage', 'layer' ], function() {
		var laypage = layui.laypage, layer = layui.layer;

		laypage({
			cont : 'idea',
			pages : 100,
			skip : true,
			last : 100,
			jump : function(obj, first) {
				//得到了当前页，用于向服务端请求对应数据
				var curr = obj.curr;
				
			}
		});
		laypage({
			cont : 'serve',
			pages : 100,
			skip : true,
			last : 100,
			jump : function(obj, first) {
				//得到了当前页，用于向服务端请求对应数据
				var curr = obj.curr;

			}
		});
		laypage({
			cont : 'supply',
			pages : 100,
			skip : true,
			last : 100,
			jump : function(obj, first) {
				//得到了当前页，用于向服务端请求对应数据
				var curr = obj.curr;
				getResult("http://127.0.0.1:8080/patent/findById.do")

			}
		});
		//将一段数组分页展示

		var nums = 5; //每页出现的数据量

		//模拟渲染
		 var render = function(data, curr) {
			var arr = [], thisData = data.concat().splice(curr * nums - nums,
					nums);
			layui.each(thisData, function(index, item) {
				arr.push('<li>' + item + '</li>');
			});
			
			return arr.join('');
		}; 

	});
	function getResult(url){
		
		$.ajax({
			url:url,
			type:"post",
			dataType:"json",
			success:function(l){
				var json=JSON.stringify(l);
				alert(json)
			},
			error:function(l){
				alert(l)
			}
		})
		
	}
	
</script>

</html>