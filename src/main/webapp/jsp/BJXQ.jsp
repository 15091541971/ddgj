<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>发布信息</title>
		<link rel="stylesheet" href="../css/baseHT.css" />
		<link rel="stylesheet" href="../css/styleDP.css" />
		<script type="text/javascript" src="../js/jquery-3.0.0.min.js" ></script>
		<script type="text/javascript" src="../js/region.js" ></script>
		<link rel="stylesheet" href="../layui/css/layui.css">
		<link rel="stylesheet" type="text/css" href="../wangEditor-2.1.23/dist/css/wangEditor.min.css">
		<script type="text/javascript" src="../wangEditor-2.1.23/dist/js/wangEditor.min.js"></script>
		<script  src="../layui/lay/dest/layui.all.js"></script> 
		<script type="text/javascript">
		  $(function(){
		         //layui
			   layui.use(['laypage','layer'],function() {
			   var laypage = layui.laypage, layer = layui.layer;
		     })
		      $.ajax({
		        url:"<%=path%>/ideado/seletAllPerant.do",
		        type:"post",
                dataType:"json",
                async: false,	
                success:function(result){
                 $.each(result.data,function(i,type){      //获取父类别
                   $("#perantType").append(
                   "<option id="+type.type_id+">"+type.type_name+"</option>"
                   );
                 });
                 var parentId = $("#perantType option:selected").attr("id")
                    $.ajax({
                     url:"<%=path%>/ideado/selectTypeByParent.do?type_parent="+parentId,
                     type:"post",
                     dataType:"json",
                     success:function(json){
                      $.each(json.data,function(x,typeName){        //获取子类别
                        $("#sonType").append(
                         "<option id="+typeName.type_id+">"+typeName.type_name+"</option>"
                        )
                      })
                      
                      var sonId = $("#sonType option:selected").attr("id");
                      $("input[name='type']").val(sonId);
                      
                      var sonId = $("#sonType option:selected").attr("id");
                      $("input[name='type']").val(sonId);
                      $("#sonType").change(function(){
                        var sonMsg = $("#sonType option:selected").text();
                       $(".fabu_allChoose_msg_son").text(sonMsg);
                      });
                     }
                   
                   });
                 $("#perantType").change(function(){
                 var inx = $("#perantType option:selected").index();
	             $("#sonType").html("");
                 var test = $("#perantType option:selected");
                 var index = test.index()+1;
                 var spantext = $(".fabu_allChoose_msg_parent").text(test.text()+":");
                   $.ajax({
                     type:"post",
                     dataType:"json",
                     success:function(json){
                      $.each(json.data,function(x,typeName){        //获取子类别
                        $("#sonType").append(
                         "<option id="+typeName.type_id+">"+typeName.type_name+"</option>"
                        )
                      })
                      var sonId = $("#sonType option:selected").attr("id");
                      $("input[name='type']").val(sonId);
                      $("#sonType").change(function(){
                        var sonId = $("#sonType option:selected").attr("id");
                        $("input[name='type']").val(sonId);
                      });
                     }
                   
                   });
                 });
                 
               }
		      });
		       
		  
		  });
		
		</script>
		<style type="text/css">
		  .selectDiv{
		  display: none;
		  }
		</style>
	</head>
	<body>
	<c:if test="${status!=null && status.status==0}">
	  <script type="text/javascript">
	    layer.msg("更新成功！");
	  </script>
	</c:if>
		<div class="headHT">
			<div class="headHT_top">
				<div class="contentHT">
					<div class="headHT_left">
						西安&nbsp;【<a href="Emanage.jsp">切换</a>】
					</div>
					<div class="headHT_left">
						hi，欢迎来到租天下！
					</div>
					<div class="headHT_left">
					   ${userInfo.userPhone}|您好，欢迎登陆！
					   
					</div>
					<div class="headHT_right">
						<a href="Emanage.jsp">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="Emanage.jsp">分类</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="../img/ku.png"/><a href="Emanage.jsp">租物车</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="../img/shouchang.png"/><a href="Emanage.jsp">收藏</a>
					</div>
				</div>
			</div>
			<div class="headHT_nav">
				<div class="contentHT">
					<div class="navHT_left">
						<img src="../img/logorrr.png"/>
					</div>
					<a href="Emanage.jsp">
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
					<!-- 
					<div class="HTnav_right">
						<div class="HTsearch">
							<div class="HTsearch_left">
								商品<img src="../img/pull.png" />
							</div>
							
						</div>
						<a href="../Emanage.jsp">
							<div class="HTsearch_right">
								搜索
							</div>
						</a>
					</div>
					 -->
				</div>
			</div>
		</div>
		<div class="mainHT">
			<div class="fabu_content">
				<div class="fabu_head">
					<div class="fabu_headLeft">
						发布产品信息
					</div>
					<div class="fabu_headRight">
						<a href="FBXX.jsp"><div class="fabu_typeChoose">
							选择类目
						</div></a>
						<div class="fabu_typeRe">
							您选择的类目：<span>一级类目</span>&gt;<span>二级类目</span>&gt;<span>三级类目</span>
						</div>
					</div>
				</div>
			    
				<form class="fabu_main2" action="<%=path%>/demand/updateMyDemand.do" method="post" enctype="multipart/form-data">
					<div class="fabu2_unit">
						<div class="fabu2_title">
							填写基本信息
						</div>
						<div class="fabu2_inm">
							<div class="fabu2_inmUnit">
								<div class="fabu2_inmLeft">
									信息标题：
								</div>
								<div class="fabu2_inmRight">
									<input type="text" value="${editorDemand.data.title}" class="fabu2_titleBlank" name="title"/>
								</div>
							</div>
							<div class="fabu2_inmUnit">
								
								<div class="fabu2_inmRight">
									<div class="fabu2_inmShu">
										
									</div>
									<!--  
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
											类别：
										</div>
										<div class="fabu2_shuRight">
											<input type="text" value="" class="fabu2_pai" />
										</div>
									</div>
									-->
								
									<div class="fabu2_inmShu " id="regionSelected">
										<div class="fabu2_shuLeft">
										选择地区：
										</div>
										 <div id="regionMsg">
										      <span>${editorDemand.data.region.SHENG}</span>&nbsp;&nbsp;<span>${editorDemand.data.region.SHI}</span>&nbsp;&nbsp;<span>${editorDemand.data.region.XIAN}</span>&nbsp;&nbsp;
										      &nbsp;&nbsp;
										   </div>
										   <a  id="controller" href="#">编辑</a>
										<div class="fabu2_shuRight selectRegion selectDiv" >
										  <select id="cmbProvince" name="cmbProvince">
                                          </select>
		                                  <select id="cmbCity" name="cmbCity">
		                                 </select>
		                                  <select id="cmbArea" name="cmbArea"></select></div>
									</div>
									<div class="fabu2_shuLeft">
										类别：
										</div>
									<div id="typeMsg">
										      <span>${editorDemand.number.type_name}</span>
										   </div>
										   <a id="typeContro">编辑</a>
										<div class="fabu2_inmShu selectDiv type">
										<div class="fabu2_shuRight">
											 <select id="perantType">
									   
									</select>
								
									<select id="sonType">
									  
									</select> 
										</div>
									</div>
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
										数量：
										</div>
										<div class="fabu2_shuRight">
											<input  class="fabu2_inmChoose" name="count" value="${editorDemand.data.count}">
										</div>
									</div>
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
										价格：
										</div>
										<div class="fabu2_shuRight">
											<input class="fabu2_inmChoose" value="${editorDemand.data.price}" name="price">
										</div>
									</div>
									<div class="fabu2_inmShu">
										<div class="fabu2_shuLeft">
										联系电话：
										</div>
										<div class="fabu2_shuRight">
											<input  class="fabu2_inmChoose" value="${editorDemand.data.tel}" name="tel">
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					
					
					
					<div class="fabu2_unit">
						<div class="fabu2_title">
							图片和详细说明
						</div>
						<div class="fabu2_inm">
							<div class="fabu2_picUnit">
								<div class="fabu2_picLeft selectDiv">
									上传图片：
									<input type="file" name="picture">
									<input type="file" name="picture">
								</div>
								<a class="picString selectDiv" >${editorDemand.data.pictrue}</a>
								<div class="picDiv">
								   
								
								</div>
								<a class="changePic">更改图片</a>
								<div class="fabu2_picRight">
								
									<div class="fabu_picLine">
										您可以根据不同款式上传多张图片，建议您上传750*750像素以上实拍大图
									</div>
								</div>
							</div>
							<div class="fabu2_picUnit">
								<div class="fabu2_inmLeft">
									详细说明：
								</div>
								<div class="fabu2_picRight">
									<textarea name="detail" rows="" cols="" class="fabu2_text detail" id="myEditor">
									</textarea>
									<script type="text/javascript">
									  $(function(){
									    $(".detail").val("");
									  });
									</script>
									<!-- 
									<div class="fabu2_picsub">
										<input type="button" class="fabu2_sub" value="保存并确定" />
									</div>
									 -->
								</div>
							</div>
						</div>
					</div>
					
					<div class="fabu2_read">
						点此阅读<span>豆丁工匠总则</span>
					</div>
					<div class="fabu2_allsub">
					    <input type="hidden" name="demand_id" value="${editorDemand.data.demand_id}">
					    <input type="hidden" name="region.xian_id" id="region" class="num" value="${editorDemand.data.region.xian_id}">
					    <input type="hidden" name="type" id="type">
						<input type="submit" value="同意条款协议，我要发布" class="fabu2_subSure" />
				
						<!--  
						<div class="fabu2_look">
							预览
						</div>
						-->
					</div>
				
				</form>
				
			</div>
		</div>
		  
	</body>
		<script type="text/javascript">
		//三级联动
	function addressInit(_cmbProvince, _cmbCity, _cmbArea, defaultProvince, defaultCity, defaultArea) {
				var cmbProvince = document.getElementById(_cmbProvince);
				var cmbCity = document.getElementById(_cmbCity);
				var cmbArea = document.getElementById(_cmbArea);
               function Setvalue(){
               var item = cmbArea.options[cmbArea.selectedIndex].text;
               var d= cmbArea.options[cmbArea.selectedIndex].d;
            
               
                  
                    $("#input").val(item)
                    $("#region").val(d)
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
				Setvalue()
			}
            
          addressInit('cmbProvince', 'cmbCity', 'cmbArea');
          
          var editor = new wangEditor('myEditor');
          editor.config.uploadImgUrl ="/demand/saveDetailPic.do";
          editor.config.hideLinkImg = true;
          editor.config.uploadImgFileName = 'myFileName'
          editor.create();
          editor.$txt.html('<p>${editorDemand.data.detail}</p>')
          
          
          var regionId = $("#region").val();
          $("#controller").click(function(){
              var text = $(this).text();
              if(text=="编辑"){
                $("#regionMsg").addClass("selectDiv");
                $(".selectRegion").removeClass("selectDiv");
                $(this).text("");
                $(this).text("取消更改");
              }
              if(text=="取消更改"){
                $("#regionMsg").removeClass("selectDiv");
                $(".selectRegion").addClass("selectDiv");
                $(this).text("");
                $(this).text("编辑");
                $("#region").val(regionId);
                
              }
          }); 
          //图片回显
          var picString = $(".picString").text().split(",");
          var picDiv= $(".picDiv");
          for(var i=0;i<picString.length;i++){
             picDiv.append("<img src='http://192.168.0.166:8088/51douding/"+picString[i]+"'\/>");
           
          }
           var a = $("img[src='http://192.168.0.166:8088/51douding/']").addClass("selectDiv");
           
           
           $(".changePic").click(function(){
             var text = $(this).text();
             if(text=="更改图片"){
               $(".picDiv").addClass("selectDiv");
               $(".fabu2_picLeft").removeClass("selectDiv");
               $(this).text("");
               $(this).text("取消更改");
             }
             if(text=="取消更改"){
               $(".picDiv").removeClass("selectDiv");
               $(".fabu2_picLeft").addClass("selectDiv");
               $(this).text("");
               $(this).text("更改图片");
               $("input[type='file']").val("");      //清空input file 里面的值	
             }
             
           });
             $("#typeContro").click(function(){
               var text = $(this).text();
               if(text=="编辑"){
                 $("#typeMsg").addClass("selectDiv");
                 $(".type").removeClass("selectDiv");
                 $(this).text("");
                 $(this).text("取消更改");
               }
               if(text=="取消更改"){
                 $(".type").addClass("selectDiv");
                 $("#typeMsg").removeClass("selectDiv");
                 $(this).text("");
                 $(this).text("编辑");
                  $("input[name='type']").val("${editorDemand.number.type_id}")
               }
             });
          
        </script>
      
</html>
