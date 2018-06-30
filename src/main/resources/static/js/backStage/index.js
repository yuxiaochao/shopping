/**
 * 页面初始化js
 * @returns
 */
$(function() {
	$.ajax({
		url : "/backCommodityManagement/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
			$(".dataTables_filter").hide();
		}
	});
});

/**
 * 注销
 * @returns
 */
$("#backLogout").click(function() {
	$.ajax({
		url : "/backStage/logout.html",
		data : {},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "注销成功", "success");
				setTimeout(function(){
					window.location.href="/backLogin/index.html";
				},1000);
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "注销失败！请稍后重试。", "error");
			}
		}
	});
});

/**
 * 进入仪表盘模块
 * @returns
 */
$("#bar-chart").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backStage/dashboard.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入消息模块
 * @returns
 */
$("#envelope").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backEnvelope/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入任务模块
 * @returns
 */
$("#tasks").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backTasks/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});

/**
 * 进入UI模块
 * @returns
 */
$("#ui").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backUI/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入小工具模块
 * @returns
 */
$("#widgets").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backWidgets/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入表单模块
 * @returns
 */
$("#form").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backForm/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入图表模块
 * @returns
 */
$("#chart").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backChart/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入字体设计模块
 * @returns
 */
$("#typography").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backTypography/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入相册模块
 * @returns
 */
$("#gallery").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backGallery/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入表格模块
 * @returns
 */
$("#table").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backTable/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入日历模块
 * @returns
 */
$("#dateCalendar").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backDateCalendar/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入文件管理器模块
 * @returns
 */
$("#file-manager").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backFileManager/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入图标模板模块
 * @returns
 */
$("#icon").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backIcon/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});
/**
 * 进入登录页面模块
 * @returns
 */
$("#backLogin").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backLogin/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
		}
	});
});

/**
 * 进入商品管理模块
 * @returns
 */
$("#CommodityManagement").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backCommodityManagement/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
			$(".dataTables_filter").hide();
		}
	});
});

/**
 * 进入用户管理模块
 * @returns
 */
$("#UserManagement").click(function() {
	
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backUserManagement/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
			$(".dataTables_filter").hide();
		}
	});
});

/**
 * 进入用户管理模块
 * @returns
 */
$("#GenerateCode").click(function() {
	$("body *").find(".active").removeClass("active");
	$(this).attr("class","active");
	$.ajax({
		url : "/backGenerateCode/index.html",
		data : {},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#content").empty().append(htmlObj);
			$(".dataTables_filter").hide();
		}
	});
});
