//拼接创意列表
function getIdeaContent(title,img){
	   
	   var da="<ul><li><a href='dingzhixiangqing.jsp' class='idea'>"+
   	"<div class='picture'><img src='http://127.0.0.1:8888/51douding/"+img+"'>"+
   	"</div> "+
   	"<div class='title'>"+
   	"<span >标题："+title+"</span></div>"+
   	"</div></a></li></ul>";
   	return da;
   }
    //加载创意数据
    function loadIdeaList(URL){
    	
    	
    	$.ajax({
    		url:URL,
    		dataType:'json',
    	     processData: false, 
    	     type:'post',
    		success:function(data){
    			var A="";
    			$.each(data.data,function(index,element){
    				var picture=element.picture;
    				var pic=picture.split(",");
    				var img=pic[0];
    				var a=getIdeaContent(element.title,img);
    				A=A+a;
    				/*$(".lb").html(a)*/
    					console.log(index+"  "+element.detail);			   
 			   })
    			$(".lb").html(A)
    		},
    		error:function(data){
    			$.each(data,function(index,element){
    				  /* console.log(index+"  "+element);*/
    			   })
    			
    		}
    	})
    	
    }
    //加载服务数据
function loadServeList(URL){
    	
    	
    	$.ajax({
    		url:URL,
    		dataType:'json',
    	     processData: false, 
    	     type:'post',
    		success:function(data){
    			var A="";
    			$.each(data.data,function(index,element){
    				var picture=element.pictrue;
    				var pic=picture.split(",");
    				var img=pic[0];
    				var a=getIdeaContent(element.title,img);
    				A=A+a;
    				/*$(".lb").html(a)*/
    					console.log(index+"  "+element.detail);			   
 			   })
    			$(".lb").html(A)
    		},
    		error:function(data){
    			$.each(data,function(index,element){
    				  /* console.log(index+"  "+element);*/
    			   })
    			
    		}
    	})
    	
    }
//加载产品
function loadSupplyList(URL){
	
	
	$.ajax({
		url:URL,
		dataType:'json',
	     processData: false, 
	     type:'post',
		success:function(data){
			var A="";
			$.each(data.data,function(index,element){
				var picture=element.pictrue;
				var pic=picture.split(",");
				var img=pic[0];
				var a=getIdeaContent(element.title,img);
				
				A=A+a;
					console.log(index+"  "+element.detail);			   
			   })
			$(".lb").html(A)
		},
		error:function(data){
			$.each(data,function(index,element){
				  /* console.log(index+"  "+element);*/
			   })
			
		}
	})
	
}
   var selectServeUrl="http://127.0.0.1:8080/serve/selectServe.do?pageNumber=1&pageMaxSize=100";
   var selectSupplyUrl="http://127.0.0.1:8080/supply/selectSupply.do?pageNumber=1&pageMaxSize=15";
    window.onload=loadSupplyList(selectSupplyUrl); 