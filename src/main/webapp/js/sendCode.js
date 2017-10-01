
//获取项目根路径
 function getRootPath() {  
    var pathName = window.location.pathname.substring(1);  
    var webName = pathName == '' ? '' : pathName.substring(0, pathName.indexOf('/'));  
    return window.location.protocol + '//' + window.location.host + '/' + webName + '/';  
} 
//发送验证码时添加cookie
/*var rootPath = getRootPath();*/
 var rootPath = "http://127.0.0.201:8080" 
function addCookie(name,value,expiresHours){ 
    var cookieString=name+"="+escape(value); 
    //判断是否设置过期时间,0代表关闭浏览器时失效
    if(expiresHours>0){ 
        var date=new Date(); 
        date.setTime(date.getTime()+expiresHours*1000); 
        cookieString=cookieString+";expires=" + date.toUTCString(); 
    } 
        document.cookie=cookieString; 
} 
//修改cookie的值
function editCookie(name,value,expiresHours){ 
    var cookieString=name+"="+escape(value); 
    if(expiresHours>0){ 
      var date=new Date(); 
      date.setTime(date.getTime()+expiresHours*1000); //单位是毫秒
      cookieString=cookieString+";expires=" + date.toGMTString(); 
    } 
      document.cookie=cookieString; 
} 
//根据名字获取cookie的值
function getCookieValue(name){ 
      var strCookie=document.cookie; 
      var arrCookie=strCookie.split("; "); 
      for(var i=0;i<arrCookie.length;i++){ 
        var arr=arrCookie[i].split("="); 
        if(arr[0]==name){
          return unescape(arr[1]);
          break;
        }else{
             return ""; 
             break;
         } 
      } 
       
}

function sendImgCode(){
	var codeLength = 4;
	$("input[name='code']").keyup(function(){
	var imgCode = $("input[name='code']").val();
	if(imgCode.length==codeLength){
		$.ajax({
			async : false,
	        cache : false,
	        type : 'POST',
	        url: rootPath+"/validationCode.do",
	        data:{code:imgCode},
			success:function(r){
				var isSuccess = r.status;
				if(isSuccess==200){
					sendCode($("#second"));//发送验证码
					$(".codeMsg").text("验证成功")
				}else{
					$(".codeMsg").text("验证码错误！")
					$("#imgCode").attr("src",rootPath+"/imgcode.do?timestamp="+(new Date()).valueOf());
				}
			},
	        error:function(){
	        	
	        }
		})
	   }else if(imgCode==null||imgCode==""){
		   $(".codeMsg").text("请输入验证码！")
	   }else{
       	$(".codeMsg").text("验证码错误！")
       }
	})
}

  
//点击获取验证码
$(function(){
    $("#second").click(function (){
    	var result = isPhoneNum();
    	if(result){
    	  $("#imgCodeDiv").removeClass("hide")
    	sendImgCode(); 
    	}else{
    		$(".phoneMsg").text("请输入正确的手机号码")
    	}
    });
    v = getCookieValue("secondsremained");//获取cookie值
    if(v>0){
        settime($("#second"));//开始倒计时
    }
})

//发送验证码
function sendCode(obj){
    var userPhone = $("#pnone").val();
    var result = isPhoneNum();
    if(result){
    	 $.ajax({
    	        async : false,
    	        cache : false,
    	        type : 'POST',
    	        url : rootPath+"/sendCode.do",// 请求的action路径
    	        data:{"userPhone":userPhone},
    	        error : function() {// 请求失败处理函数
    	        },
    	        success : function(result){
    	        	alert(result.msg);
    	        	addCookie("secondsremained",60,60);//添加cookie记录,有效时间60s
    	            settime(obj);//开始倒计时
    	        }
    	    });
        
    }
}
//将手机利用ajax提交到后台的发短信接口
function backFunc1(data){
    var d = $.parseJSON(data);
    alert(d)
    if(!d.success){
        alert(d.msg);
    }else{//返回验证码
        alert("模拟验证码:"+d.msg);
        $("#code").val(d.msg);
    }
}
//开始倒计时
var countdown;
function settime(obj) { 
    countdown=getCookieValue("secondsremained");
    if (countdown == 0) { 
        obj.removeAttr("disabled");    
        obj.text("免费获取验证码"); 
        return;
    } else { 
        obj.attr("disabled", true); 
        obj.text("重新发送(" + countdown + ")"); 
        countdown--;
        editCookie("secondsremained",countdown,countdown+1);
    } 
    setTimeout(function() { settime(obj) },100) //每1000毫秒执行一次
} 
//校验手机号是否合法
function isPhoneNum(){
    var phonenum = $("#pnone").val();
    var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
    if(!myreg.test(phonenum)){ 
        $(".phoneMsg").text("请输入正确的手机号码")
        return false; 
    }else{
        return true;
    }
}