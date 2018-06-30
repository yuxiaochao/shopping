<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<ul class="breadcrumb">
	<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
		class="icon-angle-right"></i></li>
	<li><i class="icon-edit"></i> <a href="#">Forms</a></li>
</ul>


<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon white edit"></i><span class="break"></span>
				用户信息
			</h2>
			<div class="box-icon">
				<a href="#" class="btn-setting"><i
					class="halflings-icon white wrench"></i></a> <a href="#"
					class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
				<a href="#" class="btn-close"><i
					class="halflings-icon white remove"></i></a>
			</div>
		</div>
		<div class="box-content">
			<form class="form-horizontal">
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="user002">用户名</label>
						<div class="controls">
							<input class="input-xlarge focused" id="user002" type="text" >
						</div>
					</div>
					<!-- <div class="control-group">
						<label class="control-label" for="cari004">密码</label>
						<div class="controls">
							<input class="input-xlarge focused" id="user003a" type="text" >
						</div>
					</div> -->
					<div class="control-group">
						<label class="control-label" for="cari004">密码</label>
						<input type="button" value="加密新密码" id="newpassword" style="margin-left: 20px;">
						<div class="controls">
							<input class="input-xlarge focused" id="user003" type="text" >
						</div>
					</div>
					<div class="form-actions">
						<button type="button" class="btn btn-primary" id="insertSave">保存</button>
						<button class="btn">取消</button>
					</div>
				</fieldset>
			</form>

		</div>
	</div>
	<!--/span-->

</div>
<!--/row-->

<script src="/backStage/js/custom.js"></script>
<script src="/js/backStage/backUserManagement/backUserManagement_edit.js"></script>