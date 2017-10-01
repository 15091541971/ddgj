 function previewImage(file) {
 	var div = document.getElementsByClassName('blan_sign');
 	if(file.files && file.files[0]) {
 		var img = document.getElementById('blan_sign1');
 		var reader = new FileReader();
 		reader.onload = function(evt) {
 			img.src = evt.target.result;
 		}
 		reader.readAsDataURL(file.files[0]);
 	} else //兼容IE
 	{
 		var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
 		file.select();
 		var src = document.selection.createRange().text;
 		var img = document.getElementById('blan_sign1');
 		img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
 	}
 }
 $(function(){
 	$(".click").click(function(){
 		$(".show").css("display","none");
 		$(".show1").css("display","none");
 		$(".show2").css("display","none");
 		$(".show3").css("display","none");
 		$(".show4").css("display","none"); 		
 		$(".show5").css("display","none"); 		
 		$(".show6").css("display","none"); 		
 		$(".hiddle").css("display","block");
 		$(".hiddle1").css("display","block");
 		$(".hiddle2").css("display","block");
 		$(".hiddle3").css("display","block");		
 		$(".hiddle4").css("display","block");		
 		$(".hiddle5").css("display","block");
 		$(".hiddle6").css("display","block")
 		
 	})
 	$(".save").click(function(){
 		$(".show").css("display","block");
 		$(".show1").css("display","block");
 		$(".show2").css("display","block");
 		$(".show3").css("display","block");
 		$(".show4").css("display","block");
 		$(".show5").css("display","block");
 		$(".show6").css("display","block");
 		$(".hiddle").css("display","none");
 		$(".hiddle1").css("display","none");
 		$(".hiddle2").css("display","none");
 		$(".hiddle3").css("display","none");
 		$(".hiddle4").css("display","none");
 		$(".hiddle5").css("display","none");
 		$(".hiddle6").css("display","none"); 		
		$(".show").text($(".hiddle").val());
		$(".show1").text($(".hiddle1").val());
		$(".show2").text($(".hiddle2").val());
		$(".show3").text($(".hiddle3").val());
		$(".show4").text($(".hiddle4").val());
		$(".show5").text($(".hiddle5").val());
		$(".show6").text($(".hiddle6").val());
		$(".hiddle").val("");
		$(".hiddle1").val("");
		$(".hiddle2").val("");
		$(".hiddle3").val("");
		$(".hiddle4").val("");
		$(".hiddle5").val("");
		$(".hiddle6").val("");
 	})
 })
