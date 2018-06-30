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
				添加商品信息
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
						<label class="control-label" for="focusedInput">商品名</label>
						<div class="controls">
							<input class="input-xlarge focused" id="prod002" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">现价</label>
						<div class="controls">
							<input class="input-xlarge focused" id="prod003" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">原价</label>
						<div class="controls">
							<input class="input-xlarge focused" id="prod004" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="myfiles">上传商品图片</label>
						<div class="controls">
							<input class="input-file uniform_on" accept="image/png,image/jpeg,image/gif" name="myfiles" id="myfiles" type="file">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">备注</label>
						<div class="controls">
							<input class="input-xlarge focused" id="prod009" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="prod010">商品分类</label>
						<div class="controls">
							<select id="prod010">
							<c:forEach items="${categoriesFindAll}" var="cf">
								<option pk="${cf.cate001}">${cf.cate002}</option>
							</c:forEach>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">库存</label>
						<div class="controls">
							<input class="input-xlarge focused" id="prod011" type="text">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="prod012">状态</label>
						<div class="controls">
							<select id="prod012">
								<option value="0">上架</option>
								<option value="1">下架</option>
							</select>
						</div>
					</div>
					<div class="control-group hidden-phone">
						<label class="control-label" for="prod006">商品介绍</label>
						<div class="controls">
							<textarea class="cleditor" id="prod006" rows="3" ></textarea>
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
<script src="/js/backStage/backCommodityManagement/backCommodityManagement_edit.js"></script>