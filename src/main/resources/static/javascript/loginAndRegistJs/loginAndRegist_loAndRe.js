/**
 * 首页js
 */
$(function() {
	showConsole("加载登录注册页面成功");
});
function showConsole(obj) {
	console.log(obj);
}

/**
 * 登录方法
 * @returns
 */
$("#login").click(function() {
	var nameLogin = $("#name-login").val();
	var passwordLogin = $("#password-login").val();
	var parameterMap={//把用户名和密码放到js对象中
		"nameLogin" : nameLogin,	
		"passwordLogin" : passwordLogin
	}
	var parameter = JSON.stringify(parameterMap);//把对象转化成json串
	$.ajax({
		url : "/loginAndRegist/login.html",
		data : 
		{
			"parameter" : parameter
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "登录成功", "success");
				setTimeout(function(){
					window.location.reload();
				},1000);//一秒跳转
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "登录失败！请检查用户名或密码的正确性。。", "error");
			}
		}
	});
});


/**
 * 注册方法
 * @returns
 */
$("#register").click(function() {
	var nameRegister = $("#name-register").val();
	var passwordRegister = $("#password-register").val();
	var phoneRegister = $("#phone-register").val();
	 
	if(nameRegister==""||nameRegister==undefined){
		sweetAlert("系统提示", "用户名不能为空", "error");
		return;
	}
	if(passwordRegister==""||passwordRegister==undefined){
		sweetAlert("系统提示", "密码不能为空", "error");
		return;
	}
	if(phoneRegister==""||phoneRegister==undefined){
		sweetAlert("系统提示", "手机号不能为空", "error");
		return;
	}
	var parameterMap={
		"nameRegister" : nameRegister,	
		"passwordRegister" : passwordRegister,
		"phoneRegister": phoneRegister
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({//从前台传参数到后台
		
		url : "/loginAndRegist/register.html",
		data : 
		{
			"parameter" : parameter
		},
		type : "post",
		success : function(data) {
			 
			if(data.status=="SUCCESS"){
				swal("系统提示", "注册成功", "success");
				setTimeout(function(){
					window.location.reload();
				},1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "注册失败！用户名已被注册", "error");
			}
		}
	});
});

