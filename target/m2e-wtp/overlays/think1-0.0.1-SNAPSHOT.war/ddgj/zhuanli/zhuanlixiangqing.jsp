<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<% String path=request.getContextPath(); %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="text/css" href="<%=path %>/ddgj/images/logo.ico" />
    <link rel="stylesheet" href="<%=path %>/ddgj/css/base.css">
    <link rel="stylesheet" href="<%=path %>/ddgj/css/zhuanlixiangqing.css">
    <script src="<%=path %>/ddgj/js/jquery-3.2.1.min.js"></script>
    <title>豆丁工匠</title>
</head>
<body>
<!--顶部-->
<div class="head">
    <div class="dc">
        <ul class="nav-left">
            <li>
                <a href="#">登录</a>
                <a href="#" class="noborder">注册</a>
            </li>
        </ul>
        <ul class="nav-right">
            <li>
                <dl>
                    <dt><a href="#">个人中心</a></dt>
                    <dd></dd>
                </dl>

            </li>
            <li>
                <dl>
                    <dt><a href="#">社区</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#">收藏夹</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#">消息</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#">联系客服</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt class="noborder"><a href="#">网站导航</a></dt>
                    <dd></dd>
                </dl>
            </li>
        </ul>
        <ul class="nav-c">
            <li>
                <img src="">
                <a href="">豆丁工匠首页</a>
            </li>
        </ul>
    </div>
</div>
<div class="lg">
    <img src="<%=path %>/ddgj/images/logo.png">
    <span>&nbsp&nbsp豆丁工匠·中国制造</span>
</div>
<div class="zzlb">
    <div class="zzlg-c">
        <div class="zzlg-name">${patent.patent_title}</div>
        <div class="lb">
            <div class="lunbo">
                <iframe scrolling="no" frameborder="0" style="margin: 0;padding: 0; width: 722px;height: 600px;" src="<%=path %>/patent/findpicture.do?id=${patent.patent_id}"></iframe>
            </div>
            <div class="gsjj">
                <div class="nr">
                    <span>行业:</span>
                    <span>机械制造-离散型机械构造</span>
                </div>
                <div class="nr">
                    <span>企业官方网站:</span>
                    <span>www.tzyaliji.com</span>
                </div>
                <div class="nr">
                    <span>信用等级:</span>
                    <span>☆☆☆☆☆</span>
                </div>
                <div class="img-lg">
                    <img src="<%=path %>/ddgj/images/WechatIMG2.jpeg">
                </div>
                <div class="nr">
                    <span>账号:</span>
                    <span>www.tzyaliji.com</span>
                </div>
                <div class="nr">
                    <span>联系方式:</span>
                    <span>www.tzyaliji.com</span>
                </div>
                <div class="nr">
                    <img src="<%=path %>/ddgj/images/中国智造详情_03.gif">
                    <span>&nbsp&nbsp陕西省西安市未央区</span>
                </div>
                <div class="nr">
                    <div>
                        <img src="<%=path %>/ddgj/images/中国智造详情_07.gif">
                        <span>&nbsp&nbsp收藏</span>
                    </div>
                    <div>
                        <img src="<%=path %>/ddgj/images/中国智造详情_09.gif">
                        <span>&nbsp&nbsp分享</span>
                    </div>
                </div>
                <div class="nr-l">
                    <img src="<%=path %>/ddgj/images/悬赏详情_03.jpg">
                    <span>浏览1032次</span>
                </div>
                <div class="nr-l">
                    <span>联系商家:</span>
                    <img src="<%=path %>/ddgj/images/中国智造详情_14.gif">
                    <img src="<%=path %>/ddgj/images/中国智造详情_16.gif">
                </div>
            </div>
        </div>

        <div class="jianjie">
            <span>&nbsp;&nbsp;技术描述</span>
            <span></span>
            <p> ${patent.patent_detail}</p>
           
        </div>
        <div class="gscp">
            <span>&nbsp;&nbsp;该发布人的其他发布信息</span>
            <span class="hongxian"></span>
            <div class="lb">
                <ul class="ulo">
                    <li>
                        <div class="lb-img">
                               <img src="<%=path %>/ddgj/images/WechatIMG1.jpeg">
                        </div>
                        <div class="lb-name">
                            <div>
                                <img src="<%=path %>/ddgj/images/WechatIMG3.jpeg">
                                <span>公司名只能13个字</span>
                            </div>
                            <p>公司行业:电机制造 - 发电机组制造12346</p>
                            <div>
                                <img src="<%=path %>/ddgj/images/中国智造详情_21.jpg">
                                <span>陕西省西安市未央区</span>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="ult">                    
                    <li>
                        <dl>
                            <dt>
                            <div class="container-part2-1">
                                <h1><a href="#">化妆品模具零件啊发发发发发请问企鹅无群翁</a></h1>
                                <p><b>编号：</b><span>ZL1234567891234654</span></p>
                                <p><b>发明创造型</b></p>
                                <p><b>可授权,可转让</b></p>
                            </div>
                            </dt>
                            <dd><a href="#"><img src="<%=path %>/ddgj/images/WechatIMG11.jpeg"></a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!--底部-->
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