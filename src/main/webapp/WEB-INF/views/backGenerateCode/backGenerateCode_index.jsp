<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<ul class="breadcrumb">
	<li><i class="icon-home"></i> <a href="index.html">首页</a> <i
		class="icon-angle-right"></i></li>
	<li><a href="javascript:void(0)">注册码管理</a></li>
</ul>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon white user"></i><span class="break"></span>注册码信息
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
						<th>注册码</th>
						<th>生成注册码的用户</th>
						<th>到期时间</th>
						<th>生成日期</th>
						<th>是否过期</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${findAll}" var="ll">
						<tr>
							<td>${ll.reco002}</td>
							<td class="center"><span class="label label-success">${ll.baus002}</span></td>
							<c:if test="${ll.expired=='可用'}">
							<td class="center"><span class="label label-success"><fmt:formatDate value="${ll.reco004}" pattern="yyyy-MM-dd"/></span></td>
							</c:if>
							<c:if test="${ll.expired=='已过期'}">
							<td class="center"><span class="label label-important"><fmt:formatDate value="${ll.reco004}" pattern="yyyy-MM-dd"/></span></td>
							</c:if>
							<td class="center"><fmt:formatDate value="${ll.reco005}" pattern="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<c:if test="${ll.expired=='已过期'}">
							<td class="center"><span class="label label-important" >${ll.expired}</span></td>
							</c:if>
							<c:if test="${ll.expired=='可用'}">
							<td class="center"><span class="label label-success" >${ll.expired}</span></td>
							</c:if>
							<td class="center">
							<a class="btn btn-danger deleteCarInfo" href="javascript:void(0)" pk="${ll.reco001}" > <i
									class="halflings-icon white trash"></i>
							</a></td>
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
<script src="/js/backStage/backGenerateCode/backGenerateCode.js"></script>
