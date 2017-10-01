<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人信息</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/buq.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery-3.0.0.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/region.js" ></script>
		 <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css"  media="all">
		<script type="text/javascript">
		
		   //预览图片
	        function getFileUrl(sourceId) {  
                var url;  
                if (navigator.userAgent.indexOf("MSIE")>=1) { // IE  
                    url = document.getElementById(sourceId).value;  
                } else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox  
                    url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));  
                } else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome  
                    url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));  
                }  
                return url;  
            }  
            function preImg(sourceId, targetId) {  
                var url = getFileUrl(sourceId);   
                var imgPre = document.getElementById(targetId);   
                imgPre.src = url;   
            } 
		   
		
		</script>
	</head>
	<body>
		<div class="bqgr">
			<div class="head">
				<div class="head-up">
					<div class="gr_content">
						<div class="hup-l">
							<a href="#">${sessionScope.userInfo.userPhone}</a><div class="shu"></div>
							<a href="#">退出登录</a>
						</div>
						
						<div class="hup-r">
						<a href="#">个人中心</a><div class="shu"></div>
						<a href="#">社区</a><div class="shu"></div>
						<a href="#">收藏夹</a><div class="shu"></div>
						<a href="#">消息</a><div class="shu"></div>
						<a href="#">联系客服</a><div class="shu"></div>
						<a href="#">网站导航</a>
					</div>
					</div>
				</div>
				<div class="head-down">
					<div class="gr_content">
						<div class="dd-1">
							<div class="logo"><img src="img/logo_03.png"/ style="width: 50px; height: 60px;"></div>
							<div class="shu1"></div>
							<div class="fab"><img src="img/fabu_03.png"/ style="width: 700px; height: 60px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="gr_main">
				<div class="gr_content">
					<div class="conin">
						<form action="<%=request.getContextPath() %>/enterpriseInfo.do" method="post" id="enterpriseInfo" >
							<div class="coin-mid">
								<div class="comid">
									<div class="title-0"><span>企业信息</span></div>
									<div class="tit-f-0"><span style="color: #FB5685;">请您先完善企业信息</span></div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 公司名称:</div>
										<div class="infor-r-0"><input type="text" name="enterpriseName" id="enterpriseName"  placeholder="请输入公司名称" /></div>
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 公司地址:</div>
										<div class="infor-r-0"><input type="text" name="registerAddress" id="registerAddress" placeholder="公司地址"/></div>
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 统一社会信用代码:</div>
										<div class="infor-r-0"><input type="text" name="unifiedSocialCreditCode" id="unifiedSocialCreditCode"  placeholder="请输入统一社会信用代码" /></div>
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 法人姓名:</div>
										<div class="infor-r-0"><input type="text" name="legalPersonName" id="legalPersonName" placeholder="请输入 法人姓名" /></div>
									</div>
									
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 企业官网:</div>
										<div class="infor-r-0"><input type="text" name="enterpriseWeb" id="enterpriseWeb"  placeholder="请输入企业官网网址" /></div>
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 经营范围:</div>
										<div class="infor-r-0"><input type="text" name="sphereOfBusiness" id="sphereOfBusiness" placeholder="请输入经营范围" /></div>
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 选择区域:</div>
										<div class="infor-r-0">
										
										<div class="fabu2_shuRight">
										  <select id="cmbProvince" name="cmbProvince">
                                          </select>
		                                  <select id="cmbCity" name="cmbCity">
		                                 </select>
		                                  <select id="cmbArea" name="cmbArea"></select>
										</div>
										</div>
									</div>
									
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 发证机关:</div>
										<div class="infor-r-0"><input type="text" name="licenceIssuingAuthority" id="licenceIssuingAuthority" value="123" /></div>
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 注册资本:</div>
										<div class="infor-r-0"><input type="text" name="registeredCapital" id="registeredCapital" value="123" /></div>
									</div>
									 <div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 公司注册时间:</div>
										<div class="infor-r-0"><input class="layui-input" placeholder="选择日期" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" name="registeredTime" id="registeredTime"></div>
									</div> 
									<!-- <div class="layui-inline"> -->
                                   <!--  <input class="layui-input" placeholder="自定义日期格式" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"> -->
                                     <!-- </div>   -->       
									</div>
									<div class="infor-0">
										<div class="infor-l-0"><span style="color: #FB5685;">*</span> 公司描述:</div>
										<div class="infor-r-0"><textarea form="enterpriseInfo" rows="6" cols="50" maxlength="200" name="companyProfile"></textarea> </div>
									</div>
								</div>
								
								<div class="tijo">		
								     <input type="hidden" name="formToken" value="${formToken}">
								     <input type="hidden" name="region.xian_id" id="region" class="num">
									<input type="submit" class="butt" value="提交">
								</div>
						  </form>
						</div>
						<img src="" id="legalPersonPicture_img1">
						<img alt="" src="" id="legalPersonPicture_img2">
						<img alt="" src="" id="License_Picture_img" >
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="gr_content">
					<div class="foot-up">
						<div class="upone">
							<div class="oa"><a href="">豆丁指南:</a></div>
							<div class="oa"><a href="">注册</a></div>
							<div class="oa"><a href="">发布</a></div>
							<div class="oa"><a href="">联系我们</a></div>
							<div class="oa"><a href="">简介</a></div>
						</div>
						<div class="upone">
							<div class="oa"><a href="">特色产品:</a></div>
							<div class="oa"><a href="">特色创意产品</a></div>
			
						</div>
						<div class="upone">
							<div class="oa"><a href="">服务支持:</a></div>
							<div class="oa"><a href="">推广</a></div>
							<div class="oa"><a href="">招商</a></div>
						</div>
						<div class="upone">
							<div class="oa"><a href="">帮助中心:</a></div>
							<div class="oa"><a href="">简介</a></div>
							<div class="oa"><a href="">问题</a></div>
						</div>
					</div>
					<div class="foot-down">
						<span>©西安豆丁工匠网络科技有限公司</span>
					</div>
				</div>
			</div>
		</div>
	</body>
	
<script src="<%=request.getContextPath() %>/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  var start = {
    min: laydate.now()
    ,max: '2017-06-16 23:59:59'
    ,istoday: false
    ,choose: function(datas){
      end.min = datas; //开始日选好后，重置结束日的最小日期
      end.start = datas //将结束日的初始值设定为开始日
    }
  };
  
  var end = {
    min: laydate.now()
    ,max: '2017-06-16 23:59:59'
    ,istoday: false
    ,choose: function(datas){
      start.max = datas; //结束日选好后，重置开始日的最大日期
    }
  };
  
  document.getElementById('LAY_demorange_s').onclick = function(){
    start.elem = this;
    laydate(start);
  }
  document.getElementById('LAY_demorange_e').onclick = function(){
    end.elem = this
    laydate(end);
  }
  
});
</script>
	
		<script type="text/javascript">
		
	function addressInit(_cmbProvince, _cmbCity, _cmbArea, defaultProvince, defaultCity, defaultArea) {
				var cmbProvince = document.getElementById(_cmbProvince);
				var cmbCity = document.getElementById(_cmbCity);
				var cmbArea = document.getElementById(_cmbArea);
               function Setvalue(){
               var item = cmbArea.options[cmbArea.selectedIndex].text;
               var d= cmbArea.options[cmbArea.selectedIndex].d;
            
               
                  
                    $("#input").val(item);
                    $("#region").val(d);
             }
			 function cmbSelect(cmb, str) {
				    
					for(var i = 0; i < cmb.options.length; i++) {
						if(cmb.options[i].value == str) {
							cmb.selectedIndex = i;
							return;
						}
					}
				} 

				function cmbAddOption(cmb, str, obj) {
					var option = document.createElement("OPTION");
					cmb.options.add(option);
					
					option.innerText = str;
					option.value = str;
					option.obj = obj;
				}
				function cmbAddOption2(cmb, str, obj) {
					var option = document.createElement("OPTION");
					cmb.options.add(option);
					var o=obj;
					option.innerText = str;
					option.value = str;
					option.d = obj;
					
				}
				 var n=0;
               function changeArea() {
              var item = cmbArea.options[cmbArea.selectedIndex].text;
                /* $("#input").val(item)
                $("#region").val(item) */
                Setvalue()
             
				} 
                
				function changeCity() {
				
					 cmbArea.options.length = 0;
					if(cmbCity.selectedIndex == -1) return;
					var item = cmbCity.options[cmbCity.selectedIndex].obj;
					for(var i = 0; i < item.regions.length; i++) {
			
						cmbAddOption2(cmbArea, item.regions[i].name, item.regions[i]._id);
						
					}
					cmbSelect(cmbArea, defaultArea); 
					changeArea();
					 Setvalue();
					cmbArea.onchange = changeArea;
					
				} 

				function changeProvince() {
			
					 cmbCity.options.length = 0;
					cmbCity.onchange = null;
					if(cmbProvince.selectedIndex == -1) return;
					var item = cmbProvince.options[cmbProvince.selectedIndex].obj;
					for(var i = 0; i < item.regions.length; i++) {
					
						cmbAddOption(cmbCity, item.regions[i].name, item.regions[i]);
					}
					cmbSelect(cmbCity, defaultCity);
					changeCity();
					cmbCity.onchange = changeCity;
					Setvalue()
				}

				for(var i = 0; i < region.length; i++) {
					cmbAddOption(cmbProvince, region[i].name, region[i]);
				}
				cmbSelect(cmbProvince, defaultProvince);
				changeProvince();
				cmbProvince.onchange = changeProvince;
				Setvalue();
			}
            
          addressInit('cmbProvince', 'cmbCity', 'cmbArea');
           
</script >
</html>
