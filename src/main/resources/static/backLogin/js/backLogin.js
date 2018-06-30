/**
 * 登录
 * 
 * @returns
 */
$("#backLoginBtn").click(function() {
	var username = $("#backUsername").val();
	var password = $("#backPassword").val();
	if(username==""||username==undefined){
		sweetAlert("系统提示", "用户名不能为空", "error");
		return;
	}
	if(password==""||password==undefined){
		sweetAlert("系统提示", "密码不能为空", "error");
		return;
	}
	var parameterMap = {
		"username" : username,
		"password" : password
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/backLogin/login.html",
		data : {
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "登录成功", "success");
				setTimeout(function () { 
				    window.location="/backStage/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "登录失败！请检查用户名或密码的正确性。。", "error");
			}
		}
	});
});
/**
 * 显示注册
 * @returns
 */
$("#showRegist").click(function() {
	$("#backLoginBtn").hide();
	$("#showRegist").hide();
	$("#backRegistBtn").show();
	$("#registCode").show();
	$("#returnLogin").show();
	
});
/**
 * 显示登录
 * @returns
 */
$("#returnLogin").click(function() {
	$("#backLoginBtn").show();
	$("#showRegist").show();
	$("#backRegistBtn").hide();
	$("#registCode").hide();
	$("#returnLogin").hide();
});

/**
 * 注册
 * 
 * @returns
 */
$("#backRegistBtn").click(function() {
	var username = $("#backUsername").val();
	var password = $("#backPassword").val();
	var registCode = $("#registCode").val();
	if(username==""||username==undefined||username=="用户名"){
		sweetAlert("系统提示", "用户名不能为空", "error");
		return;
	}
	if(password==""||password==undefined){
		sweetAlert("系统提示", "密码不能为空", "error");
		return;
	}
	if(registCode==""||registCode==undefined||registCode=="注册码"){
		sweetAlert("系统提示", "注册码不能为空", "error");
		return;
	}
	var parameterMap = {
		"username" : username,
		"password" : password,
		"registCode" : registCode
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/backLogin/regist.html",
		data : {
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "注册成功", "success");
				setTimeout(function () { 
					window.location="/backLogin/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", data.msg, "error");
			}
		}
	});
});

