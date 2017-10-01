<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<!--<link rel="stylesheet" href="css/base.css" />-->
		<link rel="stylesheet" href="../css/grzx1.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/ALL.js" ></script>
	</head>
	<body>
		<div class="headHT">
			<div class="headHT_top">
				<div class="contentHT">
					<div class="headHT_left">
						西安&nbsp;【<a href="../Emanage.jsp">切换</a>】
					</div>
					<div class="headHT_left">
						hi，欢迎来到豆丁工匠！
					</div>
					<div class="headHT_left">
						请<span><a href="../Emanage.jsp">登录</a></span>或<span><a href="../Emanage.jsp">免费注册</a></span>
					</div>
					<div class="headHT_right">
						<a href="../Emanage.jsp">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="../Emanage.jsp">分类</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="../img/ku.png"/><a href="../Emanage.jsp">租物车</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="../img/shouchang.png"/><a href="../Emanage.jsp">收藏</a>
					</div>
				</div>
			</div>
			<div class="headHT_nav">
				<div class="contentHT">
					<div class="navHT_left">
						<img src="../img/logorrr.png"/>
					</div>
					<a href="../Emanage.jsp">
						<div class="HTnav_unit">
							首页
						</div>
					</a>
					<a href="ZHGL-jbxx.jsp">
						<div class="HTnav_unit1">
							账号管理
						</div>
					</a>
					<!--<a href="fuWu.jsp">
						<div class="HTnav_unit">
							服务
						</div>
					</a>-->
					<div class="HTnav_right">
						<div class="HTsearch">
							<div class="HTsearch_left">
								商品<img src="../img/pull.png" />
							</div>
							<div class="HTsearch_mid">
								<img src="../img/serch.png"/>
								<input type="text" value="请搜索你的需求" onfocus="if (value =='请搜索你的需求'){value=''}" onblur="if (value ==''){value='请搜索你的需求'}" />
							</div>
						</div>
						<a href="../Emanage.jsp">
							<div class="HTsearch_right">
								搜索
							</div>
						</a>
					</div>
				</div>   
			</div>
		</div>
		<div class="mainHT">
			<div class="navLeft_ht">
				<div class="info">
					<div class="infone">
						<div class="oneup" style="font-size: 20px; margin-left: -10px;">
							<a href="">账号管理</a>   
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-jbxx.jsp">账号信息</a>   
							<div class="rightimg"><img src="../img/rightward.png" /></div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-zhaq.jsp">账号安全</a>   
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="ZHGL-jyzl.jsp">交易资料管理</a>   
						</div>
					</div>
				</div>
			</div>
			<div class="mainRight_ht">
				<div class="ztn-r">
						<div class="n-nr">
							<div class="new-infor" >
								<div class="nifo" ">
									<a href="ZHGL-jbxx.jsp">基本信息</a>
								</div>
								<div class="obvifo" style="border-bottom: 2px solid #4CA4FB;">
									<a href="#">个人信息</a>
								</div>
							</div>
						</div>
						<form>
							<div class="toux">								
								<div class="sctx">
									<img class="tbk" src="">
									<span style="font-size: 15px;color:#2b2b2b;">您当前的头像</span>
								</div>
								<div class="txwz">
									<span style="margin-bottom: 10px;color: #888888;font-size: 12px;">如果您目前还没有头像，<a href="javascript:;" class="file">选择文件 <input type="file" name="" id=""></a></span></br>
									<span style="color: #888888;font-size: 14px;">上传图片要求:</span></br>
									<span style="font-size: 12px; color: #888888;">请使用真实头像；</br>
										 展示风格支持JPG,PNG,GIF,JPEG风格；</br>
										 支持2M以内的图片。
									</span>
								</div>
							</div>
							<div class="jbkuang"></div>
							<div class="con-n">
								<div class="cnn-l">
									<span>您的个人信息如下，</span>
								</div>
								<div class="cnn-r">
									<span>可点此</span>
									<a href="#" class="xg">修改</a>
								</div>
							</div>
							<div class="xian1"></div>
							<div class="jb-content">
								<div class="con-n">
									<div class="cnn-l">
										<span>生日：</span>
									</div>
									<div class="cnn-r">
										<span class="birthday">未填写</span>
										<input class="xg1 birthday1" type="text">
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>血型：</span>
									</div>
									<div class="cnn-r">
										<span class="xuxing">未填写</span>
										<input class="xg1 xuxing1" type="text">
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span >籍贯：</span>
									</div>
									<div class="cnn-r">
										<span class="jiguan">未填写</span>
										<input class="xg1 jiguan1" type="text">
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>学历：</span>
									</div>
									<div class="cnn-r">
										<span class="xuli">未填写</span>
										<input class="xg1 xuli1" type="text">
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>宗教信仰：</span>
									</div>
									<div class="cnn-r">
										<span class="zjxy">未填写</span>
										<input class="xg1 zjxy1" type="text">
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>兴趣爱好：</span>
									</div>
									<div class="cnn-r">
										<span class="xqah">未填写</span>
										<input class="xg1 xqah1" type="text">
									</div>
								</div>
								<div class="con-n">
									<div class="cnn-l">
										<span>自我介绍：</span>
									</div>
									<div class="cnn-r">
										<span class="zwjs">未填写</span>
										<textarea class="xg1 zwjs1" style="width:300px;height:100px;"></textarea>
									</div>
								</div>
							</div>
							<div class="lendto">
							<input type="submit" class="save" value="保存" />
							</div>
						</form>
					</div>
			</div>
		</div>
	</body>
</html>
