/**
 * 点击商品删除按钮
 * 
 * @returns
 */
$(".deleteCarInfo").click(function() {
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backCommodityManagement/delete.html",
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
 * 点击商品修改按钮
 * 
 * @returns
 */
$(".updateCarInfo").click(function() {
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/backCommodityManagement/update.html",
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
 * 点击车辆添加按钮
 * 
 * @returns
 */
$(".insertCarInfo").click(function() {
	$.ajax({
		url : "/backCommodityManagement/insert.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});