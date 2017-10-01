<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% String path=request.getContextPath(); %>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="text/css" href="<%=path %>/ddgj/images/logo.ico" />
    <link rel="stylesheet" href="<%=path %>/ddgj/css/base.css">
    <link rel="stylesheet" href="<%=path %>/ddgj/css/sirendingzhi.css">
    <link rel="stylesheet" href="<%=path %>/ddgj/css/fenye.css">
    <link rel="stylesheet" href="<%=path %>/layui/css/layui.css"  media="all">
    <script src="<%=path %>/ddgj/js/jquery-3.2.1.min.js"></script>
    <script src="<%=path %>/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path %>/ddgj/js/loadData.js"></script>
    <title>创意列表</title>
    <style type="text/css">
    .picture img{
    width: 190px;
    height: 234px;
    margin-top: 3px;
    }
    .title{
    font-size: 15px;
	line-height: 30px;
    height: 60px;
    width: 190px;
    overflow: hidden;
    }
    .idea{
    border: 1px red;
    }
    </style>
    <script type="text/javascript">
   function getContent(title,img){
	   
	   var da="<ul><li><a href='dingzhixiangqing.jsp' class='idea'>"+
   	"<div class='picture'><img src='http://127.0.0.1:8888/51douding/"+img+"'>"+
   	"</div> "+
   	"<div class='title'>"+
   	"<span >标题："+title+"</span></div>"+
   	"</div></a></li></ul>";
   	return da;
   }
   
    function load(URL){
    	
    	
    	$.ajax({
    		url:URL,
    		dataType:'json',
    	     processData: false, 
    	     type:'post',
    		success:function(data){
    			$.each(data.data,function(index,element){
    				var picture=element.picture;
    				var pic=picture.split(",");
    				var img=pic[0];
    				var a=getContent(element.title,img);
    				
    				$(".lb").html(a)
    					console.log(index+"  "+element.detail);			   
 			   })
    			
    		},
    		error:function(data){
    			$.each(data,function(index,element){
    				   console.log(index+"  "+element);
    			   })
    			
    		}
    	})
    	
    }
   
   
    /* window.onload=load("http://127.0.0.1:8080/ideado/selectIdea.do");  */
    </script>
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
            <li class="xuanfu"><a name="serve" >私人订制</a></li>
            <li><a id="china-zhizao" >中国制造</a></li>
            <li><a id="caigou" >采购</a></li>
            <li><a id="xuanshang" >悬赏</a></li>
            <li><a id="chuangyi" >创意</a></li>
            <li><a id="zhuanli" >专利</a></li>
            <li><a id="supply" >所有产品</a></li>
            <li><a id="reward" >众筹</a></li>
        </ul>
    </div>
</div>

<div class="zzlb">
    <div class="lb">
       
       
          
           <%--  <li>
            	<a href="dingzhixiangqing.jsp">
	                <div  style="width: 100px;height: 150px">
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
            </li>       --%>
        
    </div>
    
    
    
    <div class="ym">


        <div class="container xlarge" style="width: 600px;">
            <div class="pagination">
               <div id="demo7"></div>
 
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
 <!--  <legend>将一段已知数组分页展示</legend> -->
</fieldset>
<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
 
  
  laypage({
    cont: 'demo7'
    ,pages: 3
    ,skip: true
    ,jump: function(obj){
    	
    		/* alert(obj.pages+obj.curr) */
    	
    	
    }
  });
  
  

  
});
</script>
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