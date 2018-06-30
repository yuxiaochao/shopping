/**
 * 点击商品数量加一
 * @returns
 */
$(".btn-up").click(function() {
	
	var ids = $(this).attr("pk");
	var number = new Number($(this).prev().val())+1;
	var dom2 = $(this).prev();
	
	var dom1 = $(this).parent().parent().prev().children("div.price").text();
	var price = new Number(dom1.substring(1,dom1.length));
	
	var dom = $(this).parent().parent().next().children("div.total");
	var num = number*price;
	
	var dom3 = $(".subtotal").text();
	var subtotal = new Number(dom3.substring(1,dom3.length));
	var parameterMap={
		"number" : number
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/shopCart/btnUp.html",
		data : 
		{
			"parameter" : parameter,
			"ids" : ids
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				dom2.val(number)
				dom.html("￥"+num);
				$(".subtotal").html("￥"+(subtotal+price));
				$(".price-total").html("￥"+(subtotal+price));
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "库存不足", "error");
			}
		}
	});
});

/**
 * 点击商品数量减一
 * @returns
 */
$(".btn-down").click(function() {
	
	var ids = $(this).attr("pk");
	var number = new Number($(this).next().val())-1;
	debugger
	if(number<1){
		sweetAlert("系统提示", "数量不能小于1", "error");
		return;
	}
	var dom2 = $(this).next();
	var dom1 = $(this).parent().parent().prev().children("div.price").text();//获取单价
	var price = new Number(dom1.substring(1,dom1.length));
	var dom = $(this).parent().parent().next().children("div.total");//获取价格
	var num = number*price;//计算当前商品价格
	
	var dom3 = $(".subtotal").text();//获取小计的值
	var subtotal = new Number(dom3.substring(1,dom3.length));
	
	var dom4 = $(".price-total").text();//获取总价的值
	var priceTotal = new Number(dom4.substring(1,dom4.length));
	
	var parameterMap={
		"number" : number
	}
	var parameter = JSON.stringify(parameterMap);
	$.ajax({
		url : "/shopCart/btnDown.html",
		data : 
		{
			"parameter" : parameter,
			"ids" : ids
		},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				dom2.val(number)
				dom.html("￥"+num);
				$(".subtotal").html("￥"+(subtotal-price));
				$(".price-total").html("￥"+(priceTotal-price));
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "操作失败", "error");
			}
		}
	});
});
/**
 * 免费送货
 * @returns
 */
$("#free-shipping").click(function() {
	var dom3 = $(".subtotal").text();
	$(".price-total").html(dom3);
});
/**
 * 顺丰速运
 * @returns
 */
$("#flat-rate").click(function() {
	var dom3 = $(".subtotal").text();
	var subtotal = new Number(dom3.substring(1,dom3.length));
	$(".price-total").html("￥"+(subtotal+3));
});
/**
 * 删除购物车内的商品
 * @returns
 */
$(".deleteCart").click(function() {
	var ids = $(this).attr("pk");
	var dom = $(this).parent().parent();
	$.ajax({
		url : "/shopCart/deleteCart.html",
		data : {"ids" : ids},
		type : "post",
		success : function(data) {
			if(data.status=="SUCCESS"){
				dom.empty();
				swal("系统提示", "删除成功", "success");
			}else if(data.status=="FAIL"){
				sweetAlert("系统提示", "操作失败", "error");
			}
		}
	});
});
