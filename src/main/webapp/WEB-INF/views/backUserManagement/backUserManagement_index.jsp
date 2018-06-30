<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<ul class="breadcrumb">
	<li><i class="icon-home"></i> <a href="index.html">首页</a> <i
		class="icon-angle-right"></i></li>
	<li><a href="javascript:void(0)">用户管理</a></li>
</ul>

<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon white user"></i><span class="break"></span>前台用户
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
			<div class="addButton6">
				<a class="btn btn-success insertUserInfo" href="javascript:void(0)">
					<i class="halflings-icon white plus-sign"></i>
				</a>
			</div>
			
			<table
				class="table table-striped table-bordered bootstrap-datatable datatable">
				
				<thead>
					<tr>
						<th>用户名</th>
						<th>密码</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${userFindAll}" var="ll">
						<tr>
							<td class="center"><span class="label label-success">${ll.user002}</span>
							</td>
							<td class="center">${ll.user003}</td>
							<td class="center">
							<%-- <a class="btn btn-success" href="javascript:void(0)" pk="${ll.cari001}">
									<i class="halflings-icon white zoom-in"></i>
							</a> --%> <a class="btn btn-info updateUserInfo" href="javascript:void(0)" pk="${ll.user001}"> <i
									class="halflings-icon white edit"></i>
							</a> <a class="btn btn-danger deleteUserInfo" href="javascript:void(0)" pk="${ll.user001}" > <i
									class="halflings-icon white trash"></i>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!--/span-->
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon white user"></i><span class="break"></span>后台用户
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
			<div class="addButton6">
				<a class="btn btn-success backInsertUserInfo" href="javascript:void(0)">
					<i class="halflings-icon white plus-sign"></i>
				</a>
			</div>
			
			<table
				class="table table-striped table-bordered bootstrap-datatable datatable">
				
				<thead>
					<tr>
						<th>用户名</th>
						<th>密码</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${backUserFindAll}" var="ll">
						<tr>
							<td class="center"><span class="label label-success">${ll.baus002}</span>
							</td>
							<td class="center">${ll.baus003}</td>
							<td class="center">
							<%-- <a class="btn btn-success" href="javascript:void(0)" pk="${ll.cari001}">
									<i class="halflings-icon white zoom-in"></i>
							</a> --%> <a class="btn btn-info backUpdateUserInfo" href="javascript:void(0)" pk="${ll.baus001}"> <i
									class="halflings-icon white edit"></i>
							</a> <a class="btn btn-danger backDeleteUserInfo" href="javascript:void(0)" pk="${ll.baus001}" > <i
									class="halflings-icon white trash"></i>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<!--/row-->

<script src="/backStage/js/custom.js"></script>
<script src="/js/backStage/backUserManagement/backUserManagement.js"></script>
