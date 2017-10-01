$(function(){
	function showHiddle(c1,c2,c3,c4,c5,c6){
		var show = $(c6).text();		
		console.log(show)
		$(c1).click(function(){
			$(c2).css("display","block");
			$(c1).css("display","none");
			$(c3).css("display","block");
		})
		$(c4).click(function(){
			var hiddle = $(c2).val();
			console.log(hiddle)
			$(c2).css("display","none");
			$(c1).css("display","block");
			$(c3).css("display","none");
			$(c6).text(hiddle)
		})
		$(c5).click(function(){
			$(c2).css("display","none");
			$(c1).css("display","block");
			$(c3).css("display","none");
		})
	}
	showHiddle(".chang",".hiddle",".change",".ok",".qx",".show")
	showHiddle(".chang1",".hiddle1",".change1",".ok1",".qx1",".show1")
	
	$(".chang2").click(function(){
		$(".hiddle2").css("display","block");
		$(".chang2").css("display","none");
		$(".change2").css("display","block");
	})
	$(".ok2").click(function(){
		var hiddle = $(".hiddle2").val();
		var reg = /^1[34578]\d{9}$/;
		if(!isNaN(hiddle)&& hiddle !=""&&reg.test(hiddle)){				
			$(".hiddle2").css("display","none");
			$(".chang2").css("display","block");
			$(".change2").css("display","none");
			$(".show2").text(hiddle)
		}
	})
	$(".qx2").click(function(){
		$(".hiddle2").css("display","none");
		$(".chang2").css("display","block");
		$(".change2").css("display","none");
	})
	
	$(".chang3").click(function(){
		$(".hiddle3").css("display","block");
		$(".chang3").css("display","none");
		$(".change3").css("display","block");
		$(".show3").css("display","none");
	})
	$(".ok3").click(function(){
		var hiddle = $(".hiddle3").val();
		var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
		if(hiddle !=""&&reg.test(hiddle)){				
			$(".hiddle3").css("display","none");
			$(".chang3").css("display","block");
			$(".change3").css("display","none");
			$(".show3").css("display","block");
			$(".show3").text(hiddle)
		}
	})
	$(".qx3").click(function(){
		$(".hiddle3").css("display","none");
		$(".chang3").css("display","block");
		$(".change3").css("display","none");
		$(".show3").css("display","block");
	})
})
