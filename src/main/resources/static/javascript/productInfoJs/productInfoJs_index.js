/**
 * 添加购物车
 * @param obj
 * @returns
 */
function addCart1(Obj) {
	debugger
	var pk = $(Obj).attr("pk");
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




