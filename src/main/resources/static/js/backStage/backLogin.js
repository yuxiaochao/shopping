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
 * 注册
 * 
 * @returns
 */
$("#registBtn").click(function() {
	var username = $("#username").val();
	var password = $("#password").val();
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
		url : "/basePage/regist.html",
		data : {
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			
			if(data.status=="SUCCESS"){
				swal("系统提示", "注册成功", "success");
				setTimeout(function () { 
					window.location="/backStage/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "注册失败！用户名已被注册", "error");
			}
		}
	});
});

