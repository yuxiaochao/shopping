<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 竖版视图 start -->
<div class="row sort-box">
	<c:forEach items="${prodEntitylist}" var="ll">
		<div class="col-lg-4 col-sm-6">
			<div class="product-box">
				<div class="imagebox">
					<div class="box-image owl-carousel-1" >
						<a onclick="showProductInfo('${ll.prod001}')" href="javascript:(0)" title=""> <img
							src="${ll.prod005}" alt="" style="width: 226px;height: 179.76px">
						</a> <a onclick="showProductInfo('${ll.prod001}')" href="javascript:(0)" title="" > <img
							src="/images/product/other/02.png" alt="" style="width: 226px;height: 179.76px">
						</a>
					</div>
					<!-- /.box-image -->
					<div class="box-content" pk="${ll.prod001}" onclick="showProductInfo('${ll.prod001}')">
						<div class="cat-name">
							<a href="javascript:(0)" title="${ll.cate002}">${ll.cate002}</a>
						</div>
						<div class="product-name">
							<a href="javascript:(0)" title="${ll.prod002}">${ll.prod002}</a>
						</div>
						<div class="price">
							<span class="sale">￥${ll.prod003}</span><span class="regular">￥${ll.prod004}</span>
						</div>
					</div>
					<!-- /.box-content -->
					<div class="box-bottom">
						<div class="btn-add-cart" onclick="addCart(this)">
							<a title="" class="addCart"> <img
								src="/images/icons/add-cart.png" alt="">添加到购物车
							</a>
						</div>
						<div class="compare-wishlist">
							<a href="javascript:(0)" class="compare" title=""> <img
								src="/images/icons/compare.png" alt="">比较
							</a> <a href="javascript:(0)" class="wishlist" title=""> <img
								src="/images/icons/wishlist.png" alt="">收藏
							</a>
						</div>
					</div>
					<!-- /.box-bottom -->
				</div>
				<!-- /.imagebox -->
			</div>
		</div>
	</c:forEach>
</div>
<!-- 竖版视图 end -->
<!-- 横版视图 start -->
<div class="sort-box">
	<c:forEach items="${prodEntitylist}" var="ll">
		<div class="product-box style3">

			<div class="imagebox style1 v3">
				<div class="box-image">
					<a href="#" title=""> <!-- <img
						src="/images/product/other/s02.jpg" alt=""> -->
						<img
						src="${ll.prod005}" alt="">
					</a>
				</div>
				<!-- /.box-image -->
				<div class="box-content" pk="${ll.prod001}">
					<div class="cat-name">
						<a href="#" title="">${ll.prod010}</a>
					</div>
					<div class="product-name">
						<a href="#" title="${ll.prod002}">${ll.prod002}<br />Tablet
						</a>
					</div>
					<div class="status">库存: ${ll.prod011}</div>
					<div class="info">
						<p>${ll.prod006}</p>
					</div>
				</div>
				<!-- /.box-content -->
				<div class="box-price">
					<div class="price">
						<span class="regular">￥${ll.prod004}</span> <span class="sale">￥${ll.prod003}</span>
					</div>
					<div class="btn-add-cart">
						<a title="添加到购物车" onclick="addCart(this)"> <img
							src="/images/icons/add-cart.png" alt="添加到购物车">添加到购物车
						</a>
					</div>
					<div class="compare-wishlist">
						<a href="#" class="compare" title=""> <img
							src="/images/icons/compare.png" alt="比较">比较
						</a> <a href="#" class="wishlist" title=""> <img
							src="/images/icons/wishlist.png" alt="收藏">收藏
						</a>
					</div>
				</div>
				<!-- /.box-price -->
			</div>

			<!-- /.imagebox -->
		</div>
	</c:forEach>
	<div style="height: 9px;"></div>
</div>
<!-- 横版视图 end -->
<script type="text/javascript" src="/javascript/main.js"></script>