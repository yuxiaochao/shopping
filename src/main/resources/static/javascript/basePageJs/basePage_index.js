/**
 * 首页js
 */
$(function() {
	$.ajax({
		url : "/basePage/showIndex.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#basePage_fillPage").html(htmlObj);
		}
	});
	showConsole("页面初始化成功");
});
function showConsole(obj) {
	console.log(obj);
}

/**
 * 注册登陆页面
 * @returns
 */
$("#loginAndRegist").click(function() {
	$.ajax({
		url : "/loginAndRegist/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#basePage_fillPage").empty().append(htmlObj);
		}
	});
});

/**
 * 全部商品页面
 * @returns
 */
$("#productList").click(function() {
	$.ajax({
		url : "/productList/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#basePage_fillPage").empty().append(htmlObj);
		}
	});
});
/**
 * 点击X号删除购物车内的商品
 * @returns
 */
$(".cart_delete").click(function() {
	var pk = $(this).attr("pk");
	$.ajax({
		url : "/productList/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#basePage_fillPage").empty().append(htmlObj);
		}
	});
});

/**
 * 查看购物车
 * @returns
 */
$(".view-cart").click(function() {
	var username = $("#username").val();
	if(username==null||username=="null"||username==undefined){
		swal("提示！", "请登录后查看购物车！");
		return false;
	}
	$.ajax({
		url : "/shopCart/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#basePage_fillPage").empty().append(htmlObj);
		}
	});
});
/**
 * 注销
 * @returns
 */
$("#logout").click(function() {
	$.ajax({
		url : "/basePage/logout.html",
		data : {},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "注销成功", "success");
				setTimeout(function(){
					window.location.reload();
				},1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "注销失败！请稍后重试。", "error");
			}
		}
	});
});


