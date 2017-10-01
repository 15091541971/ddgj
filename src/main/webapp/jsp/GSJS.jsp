<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>公司介绍</title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<link rel="stylesheet" href="../css/styleDP.css" />
		<script type="text/javascript" src="../js/jquery-1.4.4.min.js" ></script>
		<script type="text/javascript" src="../js/ALL.js" ></script>
	</head>
	<body>
		<div class="headHT">
			
			<div class="headHT_nav">
				<div class="contentHT">
					<div class="navHT_left">
						<img src="../img/logorrr.png"/>
					</div>
					<a href="../Emanage.jsp">
						<div class="HTnav_unit1">
							首页
						</div>
					</a>
					<a href="ZHGL-jbxx.jsp">
						<div class="HTnav_unit">
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
						<div class="oneup">
							<a href="../Emanage.jsp">商家信息</a>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">交易管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="JYFW.jsp">交易服务管理</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="TKTH.jsp">退款退货管理</a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">产品管理</a>
							
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="FBGY.jsp">发布供应产品</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="XSZ.jsp">查询已发布</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="WSJ.jsp">未上架的产品</a>
							</div>
						</div>
					</div>
					<div class="infone">
						<div class="oneup">
							<a href="">店铺管理</a>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="WDDP.jsp">我的店铺资料</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GSJS.jsp">公司介绍</a>
								<div class="rightimg"><img src="../img/rightward.png" /></div>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GSDP.jsp">公司店铺管理</a>
							</div>
						</div>
						<div class="onedown">
							<div class="odin">
								<a href="GLXC.jsp">管理相册</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mainRight_ht">
				<form class="dp_jianjie">
					<div class="dp_content">
						<div class="dpjj_up">
							<div class="ddjj_unit">
								<div class="ddjj_left">
									基本资料
								</div>
								<div class="ddjj_right">
									收起
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司名称：
								</div>
								<div class="ddjj_mid">
									西安快租商贸有限公司<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司英文名称：
								</div>
								<div class="ddjj_mid">
									<input type="text" class="dp_inp1" /><br />
									请填写贵公司的英文全称（少于256个英文字母）
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									工商注册号：
								</div>
								<div class="ddjj_mid">
									1234567891234567889<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									企业类型：
								</div>
								<div class="ddjj_mid">
									有限责任公司<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									员工人数：
								</div>
								<div class="ddjj_mid">
									<select name="" class="dp_inp2">
										<option value="">20-50人</option>
									</select>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									经营模式：
								</div>
								<div class="ddjj_mid">
									<div class="ddjj_choose">
										<input type="radio" name="jjtype" id="type1" checked="checked" value="" /><label for="type1">生产厂商</label>
										<input type="radio" name="jjtype" id="type2" value="" /><label for="type2">经营批发</label>
										<input type="radio" name="jjtype" id="type3" value="" /><label for="type3">招商代理</label>
										<input type="radio" name="jjtype" id="type4" value="" /><label for="type4">其他</label>
									</div>
									<div class="ddjj_miao">
										修改经营模式可能引起一些信息的丢失，请慎重填写
									</div>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									是否提供对外<br />加工/定制：
								</div>
								<div class="ddjj_mid">
									<input type="radio" name="ifJG" id="yesJG" checked="checked" value="" /><label for="yesJG">是，提供</label>&nbsp;&nbsp;&nbsp;
									<input type="radio" name="ifJG" id="noJG" value="" /><label for="noJG">否，不提供</label>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									主营行业：
								</div>
								<div class="ddjj_mid">
									<div class="dp_inp2">
										<div class="dparea_unit dparea_uni">
											机器<span>x</span>
										</div>
									</div>
									<input type="text" class="dpinp">
									<input type="button" name="" id="" value="选择/修改" class="dpjj_change" />
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									主营产品：
								</div>
								<div class="ddjj_mid">
									<input  type="text" class="ddcp_text" />
									<input  type="text" class="ddcp_text" />
									<input  type="text" class="ddcp_text" />
									<input  type="text" class="ddcp_text" />
									<div class="ddjj_clear">
										x清空该行
									</div>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									品牌名称：
								</div>
								<div class="ddjj_mid">
									<input type="text" class="dp_inp1" />
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									主要销售区域：
								</div>
								<div class="ddjj_mid">
									<div class="dp_inp2">
										<div class="dparea_unit">
											全国<span>x</span>
										</div>
									</div>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									经营地址：
								</div>
								<div class="ddjj_mid">
									<div class="ddjj_addre">
										<select name="" class="ddcp_text">
											<option value=""></option>
										</select>
										<select name="" class="ddcp_text">
											<option value=""></option>
										</select>
										<select name="" class="ddcp_text">
											<option value=""></option>
										</select>
									</div>
									<div class="ddjj_addre">
										<input type="text"  class="dp_inp3" />
									</div>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司简介：
								</div>
								<div class="ddjj_mid">
									<textarea name="" rows="" cols="" class="dp_textarea"></textarea>
									<div class="ddjj_jianjie">
										请用中文详细说明贵公司的成立历史、主营产品、品牌、服务等优势；如果内容过于简单或仅填写单纯的产品介绍（50-1800个字），将有可能无法通过审核。公司图片最佳宽高：250*190。
									</div>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司图片：
								</div>
								<div class="ddjj_mid">
									<input type="file" class="dptp_file" id="fileElem">
									<input type="button" name="" id="" value="上传公司图片" style="margin-bottom: 15px;" onclick="fileElem.click()" /><br />
									<img src="" class="fileImg" width="100" height="100">
								</div>
							</div>
						</div>
						<div class="dpjj_line"></div>
						<div class="dpjj_down">
							<div class="ddjj_unit">
								<div class="ddjj_left">
									更多信息
								</div>
								<div class="ddjj_right1">
									收起
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司成立年份：
								</div>
								<div class="ddjj_mid">
									2001<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司网址：
								</div>
								<div class="ddjj_mid">
									<input type="text" class="dp_inp1" value="http://029.kuaizu.cn.china.cn" />
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									注册资本：
								</div>
								<div class="ddjj_mid">
									2001<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									公司注册地：
								</div>
								<div class="ddjj_mid">
									2001<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									法定代表人：
								</div>
								<div class="ddjj_mid">
									2001<span>[已认证]</span>
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									开户银行：
								</div>
								<div class="ddjj_mid">
									<input type="text" class="dp_inp1" />
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									账号：
								</div>
								<div class="ddjj_mid">
									<input type="text" class="dp_inp1" />
								</div>
							</div>
							<div class="ddjj_unit">
								<div class="ddjj_left">
									联系方式：
								</div>
								<div class="ddjj_mid">
									<input type="text" class="dp_inp1" />
								</div>
							</div>
						</div>
						
						<div class="dpjj_save">
							<input type="submit" class="dpjj_sub" value="保存并发布" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>
