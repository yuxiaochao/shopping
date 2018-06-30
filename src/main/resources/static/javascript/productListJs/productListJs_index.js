/**
 * 初始化加载第一页
 * @returns
 */
$(function() {
	var parameterMap={
		"pageNum" : parseInt(1)
	}
	$(".prev").hide();
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/productList/showPage.html",
		data : 
		{
			"parameter" : parameter
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#productShowPage").empty().append(htmlObj);
			if($("#pages").val()==1){
				$("#nextPage").hide();
			}
		}
	});
});

/**
 * 分页js
 */
$(".waves-effect").click(function() {
	var pageNum = parseInt($(this).attr("title"));
	var pages = $("#pages").val();//获取当前点击页的页码
debugger
	if(pageNum=="1"){//当点击的页码为1时隐藏上一页按钮
		$(".prev").hide();
		$(".next").show();
	}else if(pageNum==pages){//当点击到最后一页时则隐藏下一页
		$(".prev").show();
		$(".next").hide();	
	}else{//否则都显示
		$(".prev").show();
		$(".next").show();
	}
	$(this).parent().siblings(".active").attr("class","");
	$(this).parent().attr("class","active");
	var parameterMap={
		"pageNum" : pageNum
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/productList/showPage.html",
		data : 
		{
			"parameter" : parameter
		},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#productShowPage").empty().append(htmlObj);
		}
	});
});

/**
 * 点击上一页按钮
 * @returns
 */
$("#prevPage").click(function() {
	var label = $(this).parent().siblings(".active").children();
	var pageNum = parseInt(label.attr("title"))-1;
	var prevLabel = $(this).parent().siblings(".active").prev();
	
	$(this).parent().siblings(".active").attr("class","");
	if(pageNum==1){
		prevLabel.attr("class","active");
		$(".prev").hide();
	}else{
		prevLabel.attr("class","active");
	}
	var parameterMap={
		"pageNum" : pageNum
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/productList/showPage.html",
		data : 
		{
			"parameter" : parameter
		},
		type : "post",
		success : function(html) {
			$(".next").show();
			var htmlObj = $(html);
			$("#productShowPage").empty().append(htmlObj);
		}
	});
});

/**
 * 点击下一页按钮
 * @returns
 */
$("#nextPage").click(function() {
	
	var label = $(this).parent().siblings(".active").children();//获取当前已被点击的标签
	var pageNum = parseInt(label.attr("title"))+1;//获取当前被选中标签的页码
	var nextLabel = $(this).parent().siblings(".active").next();
	$(this).parent().siblings(".active").attr("class","");//删除被选中标签的样式
	var pages = parseInt($("#pages").val());
	if(pageNum==pages){
		nextLabel.attr("class","active");
		$(".next").hide();
	}else{
		nextLabel.attr("class","active");//设置被选中标签的上个页码样式
	}
	
	var parameterMap={
		"pageNum" : pageNum
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/productList/showPage.html",
		data : 
		{
			"parameter" : parameter
		},
		type : "post",
		success : function(html) {
			$(".prev").show();
			var htmlObj = $(html);
			$("#productShowPage").empty().append(htmlObj);
		}
	});
});
/**
 * 添加购物车
 * @param obj
 * @returns
 */
function addCart(obj) {
	var pk = $(obj).parent().prev().attr("pk");
	var userId = $("#userId").val();
	if(userId=="null"||userId==null||userId==undefined||userId==""){
		swal("系统提示", "您还未登录！请登录后再添加购物车");
		return;
	}
	var parameterMap={
		"userId":userId
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/productList/addCart.html",
		data : 
		{
			"parameter" : parameter,
			"ids":pk
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				swal("系统提示", "成功加入购物车", "success");
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "加入购物车失败请稍后重试！", "error");
			}
		}
	});
}

function showProductInfo(obj) {
	$.ajax({
		url : "/productInfo/index.html",
		data : {"ids" : obj},
		type : "post",
		success : function(html) {
			var htmlObj = $(html);
			$("#basePage_fillPage").empty().append(htmlObj);
		}
	});
}



