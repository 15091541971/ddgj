function mimashow(t){
	if(t.value!="请输入6-12个字符"){
		return;
	}
	t.style.display="none";
	var pwd = document.getElementById('pawpwd');
	pwd.style.display="block";
	pwd.value="";
	pwd.focus();
}

function mimahide(t){
	if(t.value!=""){
		return; 
	}
	t.style.display="none"; 
	var pwd = document.getElementById('textpwd');
	pwd.style.display="block";
	pwd.value="请输入6-12个字符"; 
}


