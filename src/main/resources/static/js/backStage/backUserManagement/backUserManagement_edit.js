/**
 * 点击更新保存按钮
 * 
 * @returns
 */
$("#updateSave").click(function() {
	var pk = $(this).attr("pk");
	var user002 = $("#user002").val();
	var user003 = $("#user003").val();
	var parameterMap = {
		"user002" : user002,
		"user003" : user003
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/backUserManagement/toUpdate.html",
		data : {
			ids : pk,
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "保存成功", "success");
				setTimeout(function () { 
				    window.location="/backStage/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "保存失败！请稍后重试。。", "error");
			}
		}
	});
});

/**
 * 点击新增保存按钮
 * 
 * @returns
 */
$("#insertSave").click(function() {
	var user002 = $("#user002").val();
	var user003 = $("#user003").val();
	var parameterMap = {
		"user002" : user002,
		"user003" : user003
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/backUserManagement/toInsert.html",
		data : {
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "保存成功", "success");
				setTimeout(function () { 
				    window.location="/backStage/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "保存失败！请稍后重试。。", "error");
			}
		}
	});
});

/**
 * 点击更新保存按钮
 * 
 * @returns
 */
$("#backUpdateSave").click(function() {
	var pk = $(this).attr("pk");
	var baus002 = $("#baus002").val();
	var baus003 = $("#baus003").val();
	var parameterMap = {
		"baus002" : baus002,
		"baus003" : baus003
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/backUserManagement/toBackUpdate.html",
		data : {
			ids : pk,
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "保存成功", "success");
				setTimeout(function () { 
				    window.location="/backStage/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "保存失败！请稍后重试。。", "error");
			}
		}
	});
});

/**
 * 点击新增保存按钮
 * 
 * @returns
 */
$("#backInsertSave").click(function() {
	var baus002 = $("#baus002").val();
	var baus003 = $("#baus003").val();
	var parameterMap = {
		"baus002" : baus002,
		"baus003" : baus003
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/backUserManagement/toBackInsert.html",
		data : {
			"parameterMap" : parameterMap
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "保存成功", "success");
				setTimeout(function () { 
				    window.location="/backStage/index.html";
			    }, 1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "保存失败！请稍后重试。。", "error");
			}
		}
	});
});
/**
 * 生成新密码
 */
$("#newpassword").click(function() {
	var user003 = $("#user003").val();
	var md5 = $.md5(user003);
	$("#user003").val(md5);
});


