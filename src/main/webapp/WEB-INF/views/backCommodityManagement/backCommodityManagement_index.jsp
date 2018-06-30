<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<ul class="breadcrumb">
	<li><i class="icon-home"></i> <a href="index.html">首页</a> <i
		class="icon-angle-right"></i></li>
	<li><a href="javascript:void(0)">商品管理</a></li>
</ul>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon white user"></i><span class="break"></span>商品信息
			</h2>
			<div class="box-icon">
				<a href="javascript:void(0)" class="btn-setting"><i
					class="halflings-icon white wrench"></i></a> <a href="javascript:void(0)"
					class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
				<a href="javascript:void(0)" class="btn-close"><i
					class="halflings-icon white remove"></i></a>
				
			</div>
		</div>
		<div class="box-content">
			<div class="addButton12">
				<a class="btn btn-success insertCarInfo" href="javascript:void(0)">
					<i class="halflings-icon white plus-sign"></i>
				</a>
			</div>
			
			<table
				class="table table-striped table-bordered bootstrap-datatable datatable">
				
				<thead>
					<tr>
						<th>商品名</th>
						<th>商品图片</th>
						<th>现价</th>
						<th>原价</th>
						<th>上架时间</th>
						<th>分类</th>
						<th>库存</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${findAll}" var="ll">
					
						<tr>
							<td>${ll.prod002}</td>
							<td><img src="${ll.prod005}" style="height: 44.94px;width: 56.5px;"></td>
							<td class="center">${ll.prod003}</td>
							<td class="center">${ll.prod004}</td>
							<%-- <td class="center"><span class="label label-success">${ll.prod007}</span>
							</td> --%>
							<td class="center"><fmt:formatDate value="${ll.prod007}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
							<td class="center">${ll.cate002}</td>
							<td class="center">${ll.prod011}</td>
							<c:if test="${ll.prod012==0}">
							<td class="center"><span class="label label-success">${ll.status}</span></td>
							</c:if>
							<c:if test="${ll.prod012==1}">
							<td class="center"><span class="label label-important">${ll.status}</span></td>
							</c:if>
							<td class="center">
								<%-- <a class="btn btn-success" href="javascript:void(0)" pk="${ll.prod001}">
									<i class="halflings-icon white zoom-in"></i>  
								</a> --%>
								<a class="btn btn-info updateCarInfo" href="javascript:void(0)" pk="${ll.prod001}">
									<i class="halflings-icon white edit"></i>  
								</a>
								<a class="btn btn-danger deleteCarInfo" href="javascript:void(0)" pk="${ll.prod001}">
									<i class="halflings-icon white trash"></i> 
								</a>
							</td>
						</tr>
						
					</c:forEach>
							
				</tbody>
			</table>
		</div>
	</div>
	<!--/span-->

</div>
<!--/row-->

<script src="/backStage/js/custom.js"></script>
<script src="/js/backStage/backCommodityManagement/backCommodityManagement.js"></script>
