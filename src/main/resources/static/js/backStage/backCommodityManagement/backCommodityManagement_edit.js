/**
 * 点击更新保存按钮
 * 
 * @returns
 */
$("#updateSave").click(function() {
	var pk = $(this).attr("pk");
	var prod002 = $("#prod002").val();
	var prod003 = $("#prod003").val();
	var prod004 = $("#prod004").val();
	var prod006 = $("#prod006").val();
	var prod009 = $("#prod009").val();
	var prod010 = $("#prod010 :selected").attr("pk");
	var prod011 = $("#prod011").val();
	var prod012 = $("#prod012 :selected").attr("value");
    $.ajaxFileUpload({  
        url:"/webfile/fileUpload.html", //你处理上传文件的服务端
        secureuri:false,//是否启用安全机制  
        fileElementId:'myfiles',//file的id
        dataType: 'application/json',//返回的类型  
        data: {
            imgType:"productImg"
        },
        success: function (data) {//调用成功时怎么处理 
        	var data = $.parseJSON(data.replace(/<.*?>/ig,""));
        	if(data.status=="FAIL"){
				sweetAlert("系统提示", data.msg, "error");
				return;
			}else if(data.status=="SUCCESS"){
				debugger
				var parameterMap = {
					"prod002" : prod002,
					"prod003" : prod003,
					"prod004" : prod004,
					"prod006" : prod006,
					"prod009" : prod009,
					"prod010" : prod010,
					"prod011" : prod011,
					"prod012" : prod012
				}
				if(data.spare!=null&&data.spare!=""&&data.spare!=undefined){
					var prod005 = "http://127.0.0.1:8081/WebFiles/productImg/"+data.spare;
					parameterMap.prod005=prod005;
				}
				var parameter = JSON.stringify(parameterMap);
				$.ajax({
					url : "/backCommodityManagement/toUpdate.html",
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
	var prod002 = $("#prod002").val();
	var prod003 = $("#prod003").val();
	var prod004 = $("#prod004").val();
	var prod006 = $("#prod006").val();
	var prod009 = $("#prod009").val();
	var prod010 = $("#prod010 :selected").attr("pk");
	var prod011 = $("#prod011").val();
	var prod012 = $("#prod012 :selected").attr("value");
    $.ajaxFileUpload({  
        url:"/webfile/fileUpload.html", //你处理上传文件的服务端
        secureuri:false,//是否启用安全机制  
        fileElementId:'myfiles',//file的id
        dataType: 'application/json',//返回的类型  
        data: {
            imgType:"productImg"
        },
        success: function (data) {//调用成功时怎么处理 
        	var data = $.parseJSON(data.replace(/<.*?>/ig,""));
        	debugger
        	if(data.status=="FAIL"){
				sweetAlert("系统提示", data.msg, "error");
				return;
			}else if(data.status=="SUCCESS"){
				var prod005 = "http://127.0.0.1:8081/WebFiles/productImg/"+data.spare;
				var parameterMap = {
						"prod002" : prod002,
						"prod003" : prod003,
						"prod004" : prod004,
						"prod005" : prod005,
						"prod006" : prod006,
						"prod009" : prod009,
						"prod010" : prod010,
						"prod011" : prod011,
						"prod012" : prod012
					}
					var parameter = JSON.stringify(parameterMap);
					$.ajax({
						url : "/backCommodityManagement/toInsert.html",
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
			}
        }  
    });
});

