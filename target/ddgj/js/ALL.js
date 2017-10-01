/*ZHGL-jbxx*/
$(function(){
	$(".qr-20").click(function(){
		
	})
	
	$("#qr2").click(function(){
			$("#wb2").css("display","block");
			var que = $("#qr2").text();
			var ok = $(".cnnr-3").text();
			//console.log(ok);
			//console.log(que);
			$("#qr-2").css("display","block");
			$("#qr2").css("display","none");
			$(".qr-20").click(function(){
				if($("#wb2").val() ==""){
					$("#wb2").css("display","none");
					$("#qr-2").css("display","none");
					$("#qr2").css("display","block");
					$(".cnnr-3").text(ok);
				}else{	
			        var reg=/^1\d{10}$/;//\w开头，\w的意思是匹配一个或多个字母和数字
					if(reg.test($("#wb2").val())){
						$(".wb2pd").html("<font color='green'>√</font>");
						$("#wb2").css("display","none");
						$("#qr-2").css("display","none");
						$("#qr2").css("display","block");
						$(".cnnr-3").text( $("#wb2").val());					
					}else{
						$(".wb2pd").html("<font color='red'>X</font>");
					}
				}
			})
			$(".qr-21").click(function(){
				$("#wb2").css("display","none");
				$("#qr-2").css("display","none");
				$("#qr2").css("display","block");
				$(".cnnr-3").text( ok );	
				$(".wb2pd").html("");
			})
		})
	
		$("#qr3").click(function(){
			$("#wb3").css("display","block");
			var que = $("#qr3").text();
			var ok = $(".cnnr-4").text();
			console.log(ok);	
			//console.log(que);
			$("#qr-3").css("display","block");
			$("#qr3").css("display","none");
			$(".qr-30").click(function(){
				if($("#wb3").val() ==""){
					$("#wb3").css("display","none");
					$("#qr-3").css("display","none");
					$("#qr3").css("display","block");
					$(".cnnr-3").text(ok);
				}else{	
			        var reg=/^\w+@\w+(\.com|on|net)+$/;//\w开头，\w的意思是匹配一个或多个字母和数字
					if(reg.test($("#wb3").val())){
						$(".wb3pd").html("<font color='green'>√</font>");
						$("#wb3").css("display","none");
						$("#qr-3").css("display","none");
						$("#qr3").css("display","block");
						$(".cnnr-4").text( $("#wb3").val());					
					}else{
						$(".wb3pd").html("<font color='red'>X</font>");
					}
				}
			})
			$(".qr-31").click(function(){
				$("#wb3").css("display","none");
				$("#qr-3").css("display","none");
				$("#qr3").css("display","block");
				$(".cnnr-4").text( ok );	
				$(".wb3pd").html("")
			})
		})
	function dj(c1,c2,c3,c4,c5,c6,c7){
		$(c1).click(function(){
			$(c2).css("display","block");
			var que = $(c3).text();
			var ok = $(c4).text();
			//console.log(ok);
			//console.log(que);
			$(c5).css("display","block");
			$(c1).css("display","none");
			$(c7).click(function(){
				if($(c2).val() ==""){
					$(c2).css("display","none");
					$(c5).css("display","none");
					$(c3).css("display","block");
					$(c4).text(ok);
				}else{				
					$(c2).css("display","none");
					$(c5).css("display","none");
					$(c1).css("display","block");
					$(c4).text( $(c2).val());					
				}
			})
			$(c6).click(function(){
				$(c2).css("display","none");
				$(c5).css("display","none");
				$(c1).css("display","block");
				$(c4).text( ok );			
			})
		})
	}
	dj("#qr","#wb","#qr",".cnnr-1","#qr-0",".qr-01",".qr-00")
	dj("#qr1","#wb1","#qr1",".cnnr-2","#qr-1",".qr-11",".qr-10")
//	dj("#qr2","#wb2","#qr2",".cnnr-3","#qr-2",".qr-21",".qr-20")
//	dj("#qr3","#wb3","#qr3",".cnnr-4","#qr-3",".qr-31",".qr-30")
	
	
		$(".jbin3").blur(function(){
				console.log(123)
				var reg1=/^0\d{2,3}$/;
				var reg2=/^\d{5,9}|0\d{2,3}$/;
				var reg3=/^\d{5,9}$/;
		//		console.log($(".jbinput1").val())
		//		console.log($(".jbinput2").val())
		//		console.log($(".jbinput3").val())
				if($(".jbin1").val()== ""||$(".jbin2").val()== ""||$(".jbin3").val()== ""){
					$(".coon-ngd").html("请输入固定电话")
				}else if(reg1.test($(".jbin1").val())||reg2.test($(".jbin2").val())||reg3.test($(".jbin3").val())){
					$(".coon-ngd").html("")
				
				}
		})
	
		$(".jbi3").blur(function(){
			console.log(123)
			var reg1=/^0\d{2,3}$/;
			var reg2=/^\d{5,9}|0\d{2,3}$/;
			var reg3=/^\d{5,9}$/;
	//		console.log($(".jbinput1").val())
	//		console.log($(".jbinput2").val())
	//		console.log($(".jbinput3").val())
			if($(".jbi1").val()== ""||$(".jbi2").val()== ""||$(".jbi3").val()== ""){
				$(".coon-ngd1").html("请输入传真号")
			}else if(reg1.test($(".jbi1").val())||reg2.test($(".jbi2").val())||reg3.test($(".jbi3").val())){
				$(".coon-ngd1").html("")
			
			}
	})
	

	
	
	
})
/*GLXC*/
$(function(){
	$(".dpxc_upload").click(function(){
		$(".zzc").css("display","block");
		$(".zzck").css("display","block");
		$(".zzcn").css("display","block");
	})
	
	$(".zzcn-qx").click(function(){
		$(".zzc").css("display","none");
		$(".zzck").css("display","none");
		$(".zzcn").css("display","none");
	})
	
	$(".zzcn-ok").click(function(){
		var name = $(".picture1").val();
		console.log(name)
		if($(".picture1").val()==""){
			alert("相册名称未输入创建失败");
		}else{
			alert("创建相册成功");
			/*create anther picture*/
			var dpxc_listc = document.getElementById("dpxc_listc");
			var oLi = document.createElement("li");
			dpxc_listc.appendChild(oLi);			
			oLi.innerHTML = "<li><div class='dpxc_unit'><div class='dpxc_unitimg'><!--相册封面图片--><!--<img src=''/>--></div><div class='dpxc_unitSum'>"+name+"（20）</div><div class='dpxc_unitTime'>2016-12-12</div></div></li>"
//		var dpxcListc = $(".dpxc_listc");
//		dpxcListc.html("<li><div class='dpxc_unit'><div class='dpxc_unitimg'><!--相册封面图片--><!--<img src=''/>--></div><div class='dpxc_unitSum'>"+name+"（20）</div><div class='dpxc_unitTime'>2016-12-12</div></div></li>")
		$(".picture1").val("");
		
		}
	})  	
})
/*ZHGL-zhaq*/
$(function(){
	$(".chang").click(function(){
		$(".chang").css("display","none");
		$(".phone").css("display","none");
		$(".phonE").css("display","block");
		$(".cnn-y").css("display","block");
	})
	
	$(".ok").click(function(){
		var phonE = $(".phonE").val();
		var phone = $(".phone").text();
		//console.log(phone)
		if(phonE == ""){
			$(".phone").text(phone)
		}else{
			$(".phone").text(phonE)
		}
		$(".chang").css("display","block");
		$(".phone").css("display","block");
		$(".phonE").css("display","none");
		$(".cnn-y").css("display","none");
	})
	
	$(".qx").click(function(){
		var phone = $(".phone").text();
		$(".chang").css("display","block");
		$(".phone").css("display","block");
		$(".phonE").css("display","none");
		$(".cnn-y").css("display","none");
		$(".phone").text(phone)
	})
	
	$(".Elime").click(function(){
		$(".emilE").css("display","block");
		$(".Elime").css("display","none");
		$(".cnn-y1").css("display","block")
	})
	$(".ok1").click(function(){
		var emilE = $(".emilE").val();
		var emile = $(".emile").text();
		if(emilE == ""){
			$(".emile").text(emile)
		}else{
			$(".emile").text(emilE)
		}
		$(".emilE").css("display","none");
		$(".Elime").css("display","block");
		$(".cnn-y1").css("display","none")
	})
	$(".qx1").click(function(){
		var emile = $(".emile").text();
		$(".emilE").css("display","none");
		$(".Elime").css("display","block");
		$(".cnn-y1").css("display","none");
		$(".emile").text(emile)
	})
	
})
/*ZHGL-grxx*/
$(function(){
	$(".xg").click(function(){
		$(".xg1").css("display","block")
	})
	$(".save").click(function(){
		//console.log($(".birthday1").val())
		$(".xg1").css("display","none");
		//console.log(123)
		$(".birthday").html($(".birthday1").val());
		$(".xuxing").html($(".xuxing1").val());
		$(".jiguan").html($(".jiguan1").val());
		$(".xuli").html($(".xuli1").val());
		$(".zjxy").html($(".zjxy1").val());
		$(".xqah").html($(".xqah1").val());
		$(".zwjs").html($(".zwjs1").val())
	})
})
/*index*/
$(function(){
	$(".index_title>span").mouseover(function(){
		$(".index_title>span").removeClass("index_title_nav").eq($(this).index()).addClass("index_title_nav");
		$(".index_goodsHeight").css("display","none").eq($(this).index()).css("display","block");
		console.log($(this).index())
	
	});
	$(".index_goodsLoad").click(function(){
		var ul = $(".index_goodsHeight1");
		ul.html('<li>'
					+'<div class="index_goodsTime">'
					+	'<span>01.16</span><span>08:04</span>'
					+'</div>'
					+'<div class="index_goodsName">'
					+	'求购库存尾单宠物衣服'
					+'</div>'
					+'<div class="index_goodsNum">'
					+	'100套'
					+'</div>'
					+'<div class="index_goodsEnd">'
					+	'5天'
					+'</div>'
					+'<div class="index_goodsAdd">'
					+	'<span>山东</span><span>泰安</span>'
					+'</div>'
				+'</li>');
		$(".index_goodsHeight1").css("display","block");
		$(".index_goodsLoad").css("display","none");
		$(".index_goodsHide").css("display","block")
	})
	$(".index_goodsHide").click(function(){
		$(".index_goodsHeight1").css("display","none");
		$(".index_goodsLoad").css("display","block");
		$(".index_goodsHide").css("display","none")
	})
})
/*ZHGL-zhaq*/
$(function(){

	$(".ps").blur(pass);
		function pass(){
			var tet=$(this).val();
	        var reg=/^\w+/;//\w开头，\w的意思是匹配一个或多个字母和数字
			if(tet.length<8 ||reg.test(tet)==false || tet.length>16 ){
				$(".newmima")[0].innerHTML="<font color='red'>密码8-16位</font>";
			}else{
				$(".newmima")[0].innerHTML="<font color='green'>密码OK</font>";
			}
			//--------------------------验证两次密码是否一致-----------------------------
			$(".ps1").blur(function(){
				if($(".ps1").val()!=""){
					if($(".ps")[0].value == $(".ps1")[0].value){
						$(".maqr")[0].innerHTML="<font color='green'>√</font>";
					}else{
						$(".maqr")[0].innerHTML="<font color='red'>两次密码不一致</font>";
					}
				}else{
					$(".maqr")[0].innerHTML="<font color='red'>密码不能为空</font>";
				}
			})		
	}
	
})
/*GSJS*/
$(function(){
	var off=true;
	$(".dpjj_change").click(function(){
		if(off){
			$(".dpinp").css("display","block");
			$(".dpjj_change").val("确定");
			off=false;
		}else{
			$(".dpinp").css("display","none");
			$(".dpjj_change").val("选择/修改");
			if($(".dpinp").val() == ""){
				$(".dparea_uni").html("机器<span>X</span>")
			}else{
				var dpinp = $(".dpinp").val();
				console.log(dpinp)			
				str=dpinp; //这是一字符串 
				var strs= new Array(); //定义一数组 
				strs=str.split(";"); //字符分割 
				for (i=0;i<strs.length ;i++ ) 
				{ 
				 	$(".dparea_uni").html(strs[i]+"<span>X</span>")
				/*document.write(strs[i]+"<br/>"); //分割后的字符输出 */
				} 
				$(".dpinp").val("");	
			}
			off=true;
		}
	})

})
