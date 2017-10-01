<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta charset="utf-8" />
		<title><%=request.getContextPath() %>豆丁工匠</title>
		<link rel="shortcut icon" type="text/css" href="img/logo.ico" />

		<link rel="stylesheet" href="css/base.css" />
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="css/swiper.min.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="js/index.js" ></script>
		<script type="text/javascript" src="js/swiper.min.js" ></script>
	</head>

	<body>
		<div id="allcontent">			
			<div class="head1">
				<div class="swiper-container">
				    <div class="swiper-wrapper">
				        <div class="swiper-slide"><p class="titleP">让 创 意 成 为 产 品</p><img src="img/banner.jpg"></div>
				        <div class="swiper-slide"><p class="titleP">让 创 意 成 为 产 品</p><img src="img/banner.jpg"></div>
				        <div class="swiper-slide"><p class="titleP">让 创 意 成 为 产 品</p><img src="img/banner.jpg"></div>
				    </div>
					<!-- 如果需要导航按钮 -->
				    <div class="swiper-button-prev"><img src="img/left.png"></div>
				    <div class="swiper-button-next"><img src="img/right.png"></div>
				</div>
				<script>
				
				    var swiper = new Swiper('.swiper-container', {
				        pagination: '.swiper-pagination',
				        nextButton: '.swiper-button-next',
				        prevButton: '.swiper-button-prev',
				        paginationClickable: true,
				        centeredSlides: true,
				        autoplay:3000,
					    loop: true,
				        autoplayDisableOnInteraction: false
				    }); 
					 $(function(){
					 	 var container = $(".swiper-container");
						  container.hover(function(){
						  	$(".swiper-button-next").css("display","block")
						  	$(".swiper-button-prev").css("display","block")
						  },function(){
						  	$(".swiper-button-next").css("display","none")
						  	$(".swiper-button-prev").css("display","none")
						  })
					 })
				</script>
			</div>
			<!-- 头部导航 -->
			<div class="head">
				<div class="top-nav">
					<ul class="nav-left">
					<shiro:guest>  
                      <li>
							<a href="login.jsp">登录</a>
							<a href="sign_person.jsp" class="noborder">注册</a>
						</li>
                    </shiro:guest>
                    <shiro:user>  
                                                      欢迎[<shiro:principal/>]登录，<a href="logout">退出</a>  
                    </shiro:user>   
					<shiro:authenticated>yijign</shiro:authenticated>	
					</ul>
					<ul class="nav-right">
					<shiro:hasRole name="admin">
					<li>
							<dl>
								<dt><a href="admin.jsp">管理员中心</a></dt>
								<dd></dd>
							</dl>

						</li>
					
					</shiro:hasRole>
						<li>
							<dl>
								<dt><a href="<%=request.getContextPath() %>ddgj/peopleown/peopleJbxx.jsp">个人中心</a></dt>
								<dd></dd>
							</dl>

						</li>
						<li>
							<dl>
								<dt>社区</dt>
								<dd></dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>收藏夹</dt>
								<dd></dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>消息</dt>
								<dd></dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt>联系客服</dt>
								<dd></dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt class="noborder">网站导航</dt>
								<dd></dd>
							</dl>
						</li>
					</ul>

				</div>
				<div class="middle-nav">
					<ul>
						<li><img src="img/logo.png"></li>
						<li>
							<span class="select">产品 <img src="<%=request.getContextPath() %>ddgj/img/black_xiala.png"></span>
							<input class="seach" type="text" />
							<input class="seachBtn" type="submit" value="搜 索" />
						</li>
						<li><a href="<%=request.getContextPath() %>/jsp/add.jsp">我要发布</a></li>
					</ul>
				</div>
				<div class="middle_nav">
					<ul>
						<li class="middle_nav-spe"><a href="<%=request.getContextPath() %>ddgj/index.jsp"></a>首页</li>
						<li><a href="dingzhi/sirendingzhi.jsp">私人订制</a></li>
						<li><a href="china-zhizao/zgzz.jsp">中国智造</a></li>
						<li><a href="caigou/caigou.jsp">采购</a></li>
						<li><a href="xuanshangfabu/xuanshang.jsp">悬赏</a></li>
						<li><a href="chuangyi/chuangyi.jsp">创意</a></li>
						<li><a href="zhuanli/zhuanli.jsp">专利</a></li>
						<li><a href="#">所有产品</a></li>
						<li><a href="#">众筹</a></li>
					</ul>
				</div>
				<!--<div class="bottom-nav">
					<a class="bottom-nav-left"><img src="img/left.png"></a>
					<span class="bottom-nav-center">让 创 意 成 为 产 品</span>
					<a class="bottom-nav-right"><img src="img/right.png"></a>
				</div>-->
			</div>
		</div>
		<!-- 内容 一-->
		<div class="container-part1">
			<div class="container-part1-title">
				<span>最新活动</span>
			</div>
			<div class="container-part1-container">
				<div class="container-part1-container-left1">
					<!--<div class="container-part1-container-left2">
						<a href="#"><img src="img/huodong1.png"></a>
					</div>-->
					<div class="swiper-container1">
					    <div class="swiper-wrapper">
					        <div class="swiper-slide">
					        	<a href="#"><img src="img/huodong1.png"></a>
					        </div>
					        <div class="swiper-slide">
					        	<a href="#"><img src="img/huodong1.png"></a>
					        </div>
					        <div class="swiper-slide">
					        	<a href="#"><img src="img/huodong1.png"></a>
					        </div>
					        <div class="swiper-slide">
					        	<a href="#"><img src="img/huodong1.png"></a>
					        </div>
					    </div>
					    <!-- 如果需要分页器 -->
					    <div class="swiper-pagination swiper-pagination1"></div>
					</div>
				</div>
				<div class="container-part1-container-right">
					<a href="#">
						<img src="img/huodong2.png">
					</a>
				</div>
			</div>
			<script>
				
				    var swiper = new Swiper('.swiper-container1', {
				        pagination: '.swiper-pagination',
				        nextButton: '.swiper-button-next',
				        prevButton: '.swiper-button-prev',
				        paginationClickable: true,
				        centeredSlides: true,
				        autoplay:3000,
					    loop: true,
				        autoplayDisableOnInteraction: false
				    }); 
					 $(function(){
					 	 var container = $(".swiper-container");
						  container.hover(function(){
						  	$(".swiper-button-next").css("display","block")
						  	$(".swiper-button-prev").css("display","block")
						  },function(){
						  	$(".swiper-button-next").css("display","none")
						  	$(".swiper-button-prev").css("display","none")
						  })
					 })
				</script>
		</div>
		<div class="container">
			<div class="container-part2">
				<div class="container-part2-title1">
					<span>创意产品</span>
				</div>
				<div class="container-part2-container1">
					<ul>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (1).png">
									</dt>
									<dd>
										<span>悬挂玻璃苔藓花瓶多肉植物</span>
										<span>￥6.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (2).png">
									</dt>
									<dd>
										<span>蘑菇空气净化器台灯</span>
										<span>￥36.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (3).png">
									</dt>
									<dd>
										<span>陶瓷茶壶创意礼品定制</span>
										<span>￥16.60</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (4).png">
									</dt>
									<dd>
										<span>多功能躺椅&床</span>
										<span>￥869.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (5).png">
									</dt>
									<dd>
										<span>悬挂玻璃苔藓花瓶多肉植物</span>
										<span>￥6.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (6).png">
									</dt>
									<dd>
										<span>悬挂玻璃苔藓花瓶多肉植物</span>
										<span>￥6.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (7).png">
									</dt>
									<dd>
										<span>悬挂玻璃苔藓花瓶多肉植物</span>
										<span>￥6.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="chuangyi/chuangyixiangqing.jsp">
								<dl>
									<dt>
										<img src="img/chuangyi (8).png">
									</dt>
									<dd>
										<span>悬挂玻璃苔藓花瓶多肉植物</span>
										<span>￥6.00</span>
									</dd>
								</dl>
							</a>
						</li>
					</ul>
				</div>
				<div class="container-part2-title2">
					<span>新能源产品</span>
				</div>
				<div class="container-part2-container2">
					<ul>
						<li>
							<a href="#">
								<dl>
									<dt><img src="img/组-17.png"></dt>
									<dd>
										<span>新能源电动汽车</span>
										<span>￥630060.00</span>
									</dd>
								</dl>
							</a>
						</li>
						<li>
							<dl>
								<a href="#">
									<dt><img src="img/组-18.png"></dt>
									<dd>
										<span>18650锂电池A品</span>
										<span>￥8.60</span>
									</dd>
								</a>
							</dl>
							<dl>
								<a href="#">
									<dt><img src="img/组-19.png"></dt>
									<dd>
										<span>MPPT太阳能控制器</span>
										<span></span>
									</dd>
								</a>
							</dl>
							<dl>
								<a href="#">
									<dt><img src="img/组-21.png"></dt>
									<dd>
										<span>电动四轮代步车</span>
										<span>￥31600.60</span>
									</dd>
								</a>
							</dl>							
						</li>
						<li>
							<dl>
								<a href="#">
									<dt><img src="img/组-20.png"></dt>
									<dd>
										<span>太阳能发电小系统</span>
										<span>￥15000.60</span>
									</dd>
								</a>
							</dl>
							<dl>
								<a href="#">
									<dt><img src="img/组-22.png"></dt>
									<dd>
										<span>太阳能路灯</span>
										<span>￥1680.60</span>
									</dd>
								</a>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="bt">
            <div class="bt-n">
                <ul>
                    <li>豆丁指南:</li>
                    <li><a href="#">注册</a></li>
                    <li><a href="#">发布</a></li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">简介</a></li>
                </ul>
                <ul>
                    <li>特色产品:</li>
                    <li><a href="#">特色创意产品</a></li>

                </ul>
                <ul>
                    <li>服务支持:</li>
                    <li><a href="#">推广</a></li>
                    <li><a href="#">招商</a></li>
                </ul>
                <ul>
                    <li>帮助中心:</li>
                    <li><a href="#">简介</a></li>
                    <li><a href="#">问题</a></li>
                </ul>
            </div>
            <div class="gs-name">©西安豆丁网络科技有限公司</div>
       </div>
	</body>

</html>