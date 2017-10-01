<%=request.getContextPath() %>ddgj/<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <link rel="stylesheet" href="<%=path %>/ddgj/css/zhuanli.css">
    <link rel="stylesheet" href="<%=path %>/ddgj/css/fenye.css">
    <script src="../js/jquery-3.2.1.min.js"></script>
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
    </div>
</div>
<div class="lg">
    <div style="width: 806px;margin: 0 auto;">
        <div class="logo">
            <a href="../zhuanli/fabuzhunli.html">发布专利</a>
            <a href="../zhuanli/shenqingzhuanli.html">申请专利</a>
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
            <li><a href="#">首页</a></li>
            <li><a href="../dingzhi/sirendingzhi.html">私人订制</a></li>
            <li><a href="../china-zhizao/zgzz.html">中国制造</a></li>
            <li><a href="../caigou/caigou.html">采购</a></li>
            <li><a href="../xuanshangfabu/xuanshang.html">悬赏</a></li>
            <li><a href="../chuangyi/chuangyi.html">创意</a></li>
            <li class="xuanfu"><a href="../zhuanli/zhuanli.html">专利</a></li>
            <li><a href="#">所有产品</a></li>
            <li><a href="#">众筹</a></li>
        </ul>
    </div>
</div>
<div class="zgzz-content">
    <div class="yjfl">
        <div class="yjfl-l">一级分类:</div>
        <div id="yjfl-r" class="yjfl-r">
        <c:forEach items="${types}" var="type">
         <a href="#" id="${type.type_id }">${type.type_name }</a>
        
        </c:forEach>
          
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
  
</div>
<div class="zzlb">
    <div class="lb">
        <ul class="ult">
        <c:forEach items="${patents}" var="patent">
            <li>
                <dl>
                    <dt>
                    <div class="container-part2-1">
                        <h1><a href="<%=path %>/patent/findById.do?id=${patent.patent_id}">${patent.patent_title}</a></h1>
                        <p><b>编号：</b><span>${patent.patent_number }</span></p> 
                        <p><b>发明创造型</b></p>
                        <p><b>可授权,可转让</b></p>
                    </div>
                    </dt>
                  
                    <dd><a href="<%=path %>/patent/findById.do?id=${patent.patent_id}"><img src="http://192.168.0.201:8888/51douding/${patent.patent_picture }"></a></dd>
                </dl>
            </li>
            </c:forEach>
            
        </ul>


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