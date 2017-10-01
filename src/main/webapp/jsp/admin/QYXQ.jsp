<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'QYXQ.jsp' starting page</title>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <script type="text/javascript" src="<%=path%>/js/jquery-1.4.4.min.js" ></script>
    <script t src="<%=path%>/layui/layui.js"></script> 
  </head>
  <script>
layui.use(['form','layer'], function(){
  var form = layui.form();
  var layer = layui.layer;
 
  //各种基于事件的操作，下面会有进一步介绍
 form.on('radio(radio)',function(data){
    if(data.value==6){
      $("textarea").removeClass("hide");
      $("textarea").attr("lay-verify","required");
    }else{
      $("textarea").addClass("hide");
      $("textarea").removeAttr("lay-verify");
      $("textarea").removeAttr("required");
      
    }
 });
 var idPicStr = $(".legalPersonPicture").html().split(",");
 var idPicDiv = $(".idPicDiv");
 for(var x=0;x<idPicStr.length;x++){
   idPicDiv.append("<img src='http://192.168.0.166:8088/51douding/"+idPicStr[x]+"'\/>")
 }
 var businessPic = $(".businessLicensePicture").html();
 $(".bussinessPicDiv").append("<img src='http://192.168.0.166:8088/51douding/"+businessPic+"'\/>")
 
});
</script>
<style>
 .hide{
   display: none;
 }
</style>
  <body>
  <div>
      <h2>审核页面</h2>
      <br>
      <div>
         <span>企业名称:${enterpriseMsg.data.enterpriseName}</span><br>
         <span>注册地址:${enterpriseMsg.data.registerAddress}</span><br>
         <span>统一社会信用代码:${enterpriseMsg.data.unifiedSocialCreditCode}</span><br>
         <span>企业官网:${enterpriseMsg.data.enterpriseWeb}</span><br>
         <span>经营范围:${enterpriseMsg.data.sphereOfBusiness}</span><br>
         <span>注册资本:${enterpriseMsg.data.registeredCapital}</span><br>
         <span>发证机关:${enterpriseMsg.data.licenceIssuingAuthority}</span><br>
         <span>注册时间:${enterpriseMsg.data.registeredTime}</span><br>
      </div>
     </div>  
      <div class="idPicDiv">
        <span>法人身份证照片：</span>
        <a class="hide legalPersonPicture">${enterpriseMsg.data.legalPersonPicture}</a>
          <div>
            <img/>
          </div>
          <div>
            <img/>
          </div>
      </div>
      <div class="bussinessPicDiv">
        <span>营业执照照片</span>
        <a class="hide businessLicensePicture">${enterpriseMsg.data.businessLicensePicture}</a>
        <div>
          <img/>
        </div>
      </div>
     <form class="layui-form" action="<%=path%>/checkedEnterprise.do" method="post">
      <input  class="yes" type="radio" name="user.status" value="2" lay-filter="radio" title="审核通过">
      <input class="no" type="radio" name="user.status" value="6" lay-filter="radio" title="审核未通过" checked="checked"><br>
      <textarea name="user.node"  required placeholder="请输入" class="layui-textarea "></textarea>
         <input type="hidden"  name="user.userId" value="${enterpriseMsg.data.fromId}">
         <button class="layui-btn" lay-submit lay-filter="form">立即提交</button>
     </form>
<div>
   

</div>
  </body>
</html>
