<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="flat-breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumbs">
					<li class="trail-item"><a href="javascript:(0)" title="">首页</a> <span><img
							src="/images/icons/arrow-right.png" alt=""></span></li>
					<li class="trail-item"><a href="javascript:(0)" title="">购物车</a> <span><img
							src="/images/icons/arrow-right.png" alt=""></span></li>
					<li class="trail-end"><a href="javascript:(0)" title="">查看购物车</a></li>
				</ul>
				<!-- /.breacrumbs -->
			</div>
			<!-- /.col-md-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</section>
<!-- /.flat-breadcrumb -->

<section class="flat-shop-cart">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="flat-row-title style1">
					<h3>购物车</h3>
				</div>
				<div class="table-cart">
					<table>
						<thead>
							<tr>
								<th>商品</th>
								<th>数量</th>
								<th>价格</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${cartInfo}" var="ll">
							<tr>
								<td>
									<div class="img-product">
										<img src="${ll.prod005}" alt="">
									</div>
									<div class="name-product">
										${ll.prod002}
									</div>
									<div class="price">￥${ll.prod003}</div>
									<div class="clearfix"></div>
									
								</td>
								<td>
									<div class="quanlity">
										<span class="btn-down" pk="${ll.cart001}"></span> <input type="text"
											name="number" value="${ll.cart004} "min="1" max="100"
											placeholder="Quanlity"> <span class="btn-up" pk="${ll.cart001}"></span>
									</div>
								</td>
								<td>
									<div class="total">￥${ll.cart004*ll.prod003}</div>
								</td>
								<td><a href="javascript:(0)" title="" class="deleteCart" pk="${ll.cart001}"> <img
										src="/images/icons/delete.png" alt="">
								</a></td>
							</tr>
							</c:forEach>
							
						</tbody>
					</table>
					<div class="form-coupon">
						<form action="#" method="get" accept-charset="utf-8">
							<div class="coupon-input">
								<input type="text" name="coupon code" placeholder="Coupon Code">
								<button type="submit">应用优惠券</button>
							</div>
						</form>
					</div>
					<!-- /.form-coupon -->
				</div>
				<!-- /.table-cart -->
			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-4">
				<div class="cart-totals">
					<h3>购物车总计</h3>
					<form action="#" method="get" accept-charset="utf-8">
						<table>
							<tbody>
								<tr>
									<td>小计</td>
									<td class="subtotal">￥${cartTotal.total}</td>
								</tr>
								<tr>
									<td>运费</td>
									<td class="btn-radio">
										<div class="radio-info">
											<input type="radio" id="flat-rate" checked
												name="radio-flat-rate"> <label for="flat-rate">
											顺丰速递: <span>$3.00</span>
											</label>
										</div>
										<div class="radio-info">
											<input type="radio" id="free-shipping" name="radio-flat-rate">
											<label for="free-shipping">免费送货</label>
										</div>
										<!-- <div class="btn-shipping">
											<a href="#" title="">计算运费</a>
										</div> -->
									</td>
									<!-- /.btn-radio -->
								</tr>
								<tr>
									<td>总计</td>
									<td class="price-total">￥${cartTotal.total}</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-cart-totals">
							<!-- <a href="#" class="update" title="">更新购物车</a> --> <a href="/payment/index.html"
								class="checkout" title="">进行结算</a>
						</div>
						<!-- /.btn-cart-totals -->
					</form>
					<!-- /form -->
				</div>
				<!-- /.cart-totals -->
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</section>
<!-- /.flat-shop-cart -->

<section class="flat-row flat-iconbox style1 background">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-3">
				<div class="iconbox style1 v1">
					<div class="box-header">
						<div class="image">
							<img src="/images/icons/car.png" alt="">
						</div>
						<div class="box-title">
							<h3>全球航运</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /.box-header -->
				</div>
				<!-- /.iconbox -->
			</div>
			<!-- /.col-md-6 col-lg-3 -->
			<div class="col-md-6 col-lg-3">
				<div class="iconbox style1 v1">
					<div class="box-header">
						<div class="image">
							<img src="/images/icons/order.png" alt="">
						</div>
						<div class="box-title">
							<h3>在线订购服务</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /.box-header -->
				</div>
				<!-- /.iconbox -->
			</div>
			<!-- /.col-md-6 col-lg-3 -->
			<div class="col-md-6 col-lg-3">
				<div class="iconbox style1 v1">
					<div class="box-header">
						<div class="image">
							<img src="/images/icons/payment.png" alt="">
						</div>
						<div class="box-title">
							<h3>支持在线付款</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /.box-header -->
				</div>
				<!-- /.iconbox -->
			</div>
			<!-- /.col-md-6 col-lg-3 -->
			<div class="col-md-6 col-lg-3">
				<div class="iconbox style1 v1">
					<div class="box-header">
						<div class="image">
							<img src="/images/icons/return.png" alt="">
						</div>
						<div class="box-title">
							<h3>30天无理由退货</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /.box-header -->
				</div>
				<!-- /.iconbox -->
			</div>
			<!-- /.col-md-6 col-lg-3 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</section>

<script type="text/javascript" src="/javascript/main.js"></script>
<script type="text/javascript" src="/javascript/shopCartJs/shopCartJs_index.js"></script>
