$(function(){
	$(".middle_nav>ul>li").mouseover(function(){
		console.log($(".middle_nav>ul>li").length)
		$(".middle_nav>ul>li").removeClass("middle_nav-spe").eq($(this).index()).addClass("middle_nav-spe");
	})
})
