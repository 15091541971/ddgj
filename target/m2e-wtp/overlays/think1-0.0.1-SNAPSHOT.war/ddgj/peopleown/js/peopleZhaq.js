$(function(){
	function showH(c1,c2,c3,c4,c5){
		$(c1).click(function(){
			$(c2).css("display","none");
			$(c1).css("display","none");
			$(c3).css("display","block");
			$(c4).css("display","block");
			$(c5).css("display","block");
		})
		$(c5).click(function(){
			$(c2).css("display","block");
			$(c1).css("display","block");
			$(c3).css("display","none");
			$(c4).css("display","none");
			$(c5).css("display","none");
			$(c3).val("")
		})
	}
	$(".zhaq-top-con-ok").click(function(){
		var num = $(".zhaq-top-con-num").val();
		var reg = /^1[34578]\d{9}$/;
		if(!isNaN(num)&& num!="" &&reg.test(num)){			
			$(".zhaq-top-con-text").css("display","block");
			$(".zhaq-top-con-tex").css("display","block");
			$(".zhaq-top-con-num").css("display","none");
			$(".zhaq-top-con-ok").css("display","none");
			$(".zhaq-top-con-qx").css("display","none");
			$(".zhaq-top-con-text").text($(".zhaq-top-con-num").val());
			$(".zhaq-top-con-num").val("")
		}
	})
	$(".zhaq-top-con-ok1").click(function(){
		var num = $(".zhaq-top-con-num1").val();
		var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
		if(num!=""&&reg.test(num)){			
			$(".zhaq-top-con-text1").css("display","block");
			$(".zhaq-top-con-tex1").css("display","block");
			$(".zhaq-top-con-num1").css("display","none");
			$(".zhaq-top-con-ok1").css("display","none");
			$(".zhaq-top-con-qx1").css("display","none");
			$(".zhaq-top-con-text1").text($(".zhaq-top-con-num1").val());
			$(".zhaq-top-con-num1").val("")
		}
	})
	showH(".zhaq-top-con-tex",".zhaq-top-con-text",".zhaq-top-con-num",".zhaq-top-con-ok",".zhaq-top-con-qx")
	showH(".zhaq-top-con-tex1",".zhaq-top-con-text1",".zhaq-top-con-num1",".zhaq-top-con-ok1",".zhaq-top-con-qx1")
	
	$(".pass1").blur(function(){
		//console.log($(".pass1").val());
		var pass1 = $(".pass1").val();
		var reg = /^[a-zA-Z]\w{5,17}$/;
		if(pass1!=""&&reg.test(pass1)){
			$(".pass1text").html("<font color='green'>密码可设置</font>")		
			
		}else{
			$(".pass1text").html("<font color='red'>密码不可设置</font>")			
		}
		$(".pass2").blur(function(){
//			console.log($(".pass1").val());
//			console.log($(".pass2").val());
			if($(".pass1").val() == $(".pass2").val()){
				$(".pass2text").html("<font color='green'>两次密码一致</font>")				
			}else{
				$(".pass2text").html("<font color='red'>两次密码不一致</font>")				
			}
		})
	})
})