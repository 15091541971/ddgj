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
    <link rel="stylesheet" href="<%=path %>/ddgj/css/sirendingzhi.css">
    <link rel="stylesheet" href="<%=path %>/ddgj/css/fenye.css">
    <script src="<%=path %>/ddgj/js/jquery-3.2.1.min.js"></script>
    <title>私人订制</title>
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
                    <dt><a href="<%=path %>/ddgj/peopleown/peopleJbxx.html">个人中心</a></dt>
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
    </div>
</div>
<div class="lg">
    <div class="log">
        <div class="logo">
            <a href="../dingzhi/fabudingzhi.jsp">我要订制</a>
        </div>
        <div class="logo">
            <img src="../images/logo.png">
            <form action="" method="post">
                <input type="text" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;创意作品">
                <button>搜索</button>
            </form>
        </div>

    </div>

    <div class="menu">
        <ul>
            <li><a href="../index.html">首页</a></li>
            <li class="xuanfu"><a href="../dingzhi/sirendingzhi.jsp">私人订制</a></li>
            <li><a href="../china-zhizao/zgzz.jsp">中国制造</a></li>
            <li><a href="../caigou/caigou.jsp">采购</a></li>
            <li><a href="../xuanshangfabu/xuanshang.jsp">悬赏</a></li>
            <li><a href="../chuangyi/chuangyi.jsp">创意</a></li>
            <li><a href="../zhuanli/zhuanli.jsp">专利</a></li>
            <li><a href="#">所有产品</a></li>
            <li><a href="#">众筹</a></li>
        </ul>
    </div>
</div>
<div class="zgzz-content">
    <div class="yjfl">
        <div class="yjfl-l">一级分类:</div>
        <div id="yjfl-r" class="yjfl-r">
            <a href="#">农副食品加工业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">化学纤维制造业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <input id="gd" type="button" value="更多>">
            <!--<span id="sq">收起></span>-->
        </div>
    </div>
    <div class="ejfl">
        <div class="ejfl-l">二级分类:</div>
        <div class="ejfl-r">
            <a href="#">农副食品加工业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">化学纤维制造业</a>
            <a href="#">农副食品加工业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">化学纤维制造业</a>
            <a href="#">农副食品加工业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">化学纤维制造业</a>
        </div>
    </div>
    <div class="sjfl">
        <div class="sjfl-l">三级分类:</div>
        <div class="sjfl-r">
            <a href="#">农副食品加工业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
            <a href="#">食品制造业</a>
            <a href="#">纺织业</a>
            <a href="#">医药制造业</a>
        </div>
    </div>
</div>
<div class="zzlb">
    <div class="lb">
       
        <c:forEach items="${customs}" var="custom" varStatus="status" >
          <c:choose>
          
          <c:when test="${(status.index+1)%4==1 }">
          <ul>
            <li>
            	<a href="dingzhixiangqing.jsp">
	                <div class="lb-img">
	                    <img src="http://192.168.0.201:8888/51douding/${custom.picture}">
	                </div>
	                <div class="lb-name">
	                    <div>
	                        <img src="<%=path %>/ddgj/images/WechatIMG3.jpeg">
	                         <span>${custom.title }</span>
	                    </div>
	                    <p>公司行业:${custom.type }</p>
	                    <div>
	                        <img src="<%=path %>/ddgj/images/中国智造详情_21.jpg">
	                       <span>${custom.province }${custom.city }${custom.area }</span>
	                    </div>
	                </div>
            	</a>
            </li>
        
          </c:when>
          <c:when test="${(status.index+1)%4==2 }">
         
            <li>
            	<a href="dingzhixiangqing.jsp">
	                <div class="lb-img">
	                   <img src="http://192.168.0.201:8888/51douding/${custom.picture}">
	                </div>
	                <div class="lb-name">
	                    <div>
	                        <img src="<%=path %>/ddgj/images/WechatIMG3.jpeg">
	                         <span>${custom.title }</span>
	                    </div>
	                    <p>公司行业:${custom.type }</p>
	                    <div>
	                        <img src="<%=path %>/ddgj/images/中国智造详情_21.jpg">
	                        <span>${custom.province }${custom.city }${custom.area }</span>
	                    </div>
	                </div>
            	</a>
            </li>
        
          </c:when>
          <c:when test="${(status.index+1)%4==3 }">
         
            <li>
            	<a href="dingzhixiangqing.jsp">
	                <div class="lb-img">
	                     <img src="http://192.168.0.201:8888/51douding/${custom.picture}">
	                </div>
	                <div class="lb-name">
	                    <div>
	                        <img src="<%=path %>/ddgj/images/WechatIMG3.jpeg">
	                         <span>${custom.title }</span>
	                    </div>
	                    <p>公司行业:${custom.type }</p>
	                    <div>
	                        <img src="<%=path %>/ddgj/images/中国智造详情_21.jpg">
	                        <span>${custom.province }${custom.city }${custom.area }</span>
	                    </div>
	                </div>
            	</a>
            </li>
        
          </c:when>
          <c:when test="${(status.index+1)%4==0 }">
          <li>
            	<a href="dingzhixiangqing.jsp">
	                <div class="lb-img">
	                    <img src="http://192.168.0.201:8888/51douding/${custom.picture}">
	                </div>
	                <div class="lb-name">
	                    <div>
	                        <img src="<%=path %>/ddgj/images/WechatIMG3.jpeg">
	                         <span>${custom.title }</span>
	                    </div>
	                    <p>公司行业:${custom.type }</p>
	                    <div>
	                        <img src="<%=path %>/ddgj/images/中国智造详情_21.jpg">
	                        <span>${custom.province }${custom.city }${custom.area }</span>
	                    </div>
	                </div>
            	</a>
            </li>
            </ul>
          </c:when>
          <c:when test="${status.last }">
          
          <li>
            	<a href="dingzhixiangqing.jsp">
	                <div class="lb-img">
	                     <img src="http://192.168.0.201:8888/51douding/${custom.picture}">
	                </div>
	                <div class="lb-name">
	                    <div>
	                        <img src="<%=path %>/ddgj/images/WechatIMG3.jpeg">
	                         <span>${custom.title }</span>
	                    </div>
	                    <p>公司行业:${custom.type }</p>
	                    <div>
	                        <img src="<%=path %>/ddgj/images/中国智造详情_21.jpg">
	                        <span>${custom.area }</span>
	                    </div>
	                </div>
            	</a>
            </li>
            </ul>
          </c:when>
          </c:choose>
          
            </c:forEach>
    </div>
    <div class="ym">
        <p>1-18共300+中国制造</p>

        <div class="container xlarge">
            <div class="pagination">
                <ul>
                    <li><a href="#"></a></li>
                    <li class="active"><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>

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
<script type="text/javascript">
    $(document).ready(function(){
        var i=0;
        $("#gd").click(function(){
                i++;
                if(i%2!=0){
                    $("#gd").val("收起>");
                    $('#yjfl-r').css('height', 'auto');

                }else{
                    $("#gd").val("更多>");
                    $('#yjfl-r').css('height', '80px');}
            }
        )
    })
</script>
</html>