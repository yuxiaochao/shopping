/**
 * 点击删除按钮
 * 
 * @returns
 */
$(".deleteCarInfo").click(function() {
	
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backGenerateCode/delete.html",
		data : {
			ids : pk
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			swal("系统提示", "成功删除一条注册码", "success");
			$("#content").empty().append(htmlObj);
		}
	});
});

/**
 * 点击添加按钮
 * 
 * @returns
 */
$(".insertCarInfo").click(function() {
	
	$.ajax({
		url : "/backGenerateCode/insert.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			swal("系统提示", "成功生成一条注册码", "success");
			$("#content").empty().append(htmlObj);
		}
	});
});

function expired(obj) {
	
	var aa = obj.text();
	alert(aa);
}