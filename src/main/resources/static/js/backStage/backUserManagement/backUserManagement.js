/**
 * 点击前台用户删除按钮
 * 
 * @returns
 */
$(".deleteUserInfo").click(function() {
	
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backUserManagement/delete.html",
		data : {
			ids : pk
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			swal("系统提示", "删除成功", "success");
			setTimeout(function() {
				$("#content").empty().append(htmlObj);
			}, 1000);

		}
	});
});
/**
 * 点击前台用户修改按钮
 * 
 * @returns
 */
$(".updateUserInfo").click(function() {
	
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backUserManagement/update.html",
		data : {
			ids : pk
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 点击前台用户添加按钮
 * 
 * @returns
 */
$(".insertUserInfo").click(function() {
	$.ajax({
		url : "/backUserManagement/insert.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});

/**
 * 点击后台用户删除按钮
 * 
 * @returns
 */
$(".backDeleteUserInfo").click(function() {
	
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backUserManagement/backDelete.html",
		data : {
			ids : pk
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			swal("系统提示", "删除成功", "success");
			setTimeout(function() {
				$("#content").empty().append(htmlObj);
			}, 1000);

		}
	});
});
/**
 * 点击后台用户修改按钮
 * 
 * @returns
 */
$(".backUpdateUserInfo").click(function() {
	
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backUserManagement/backUpdate.html",
		data : {
			ids : pk
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 点击后台用户添加按钮
 * 
 * @returns
 */
$(".backInsertUserInfo").click(function() {
	$.ajax({
		url : "/backUserManagement/backInsert.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
