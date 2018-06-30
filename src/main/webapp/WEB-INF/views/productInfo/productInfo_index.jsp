<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="flat-breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumbs">
					<li class="trail-item"><a href="#" title="">首页</a> <span><img
							src="/images/icons/arrow-right.png" alt=""></span></li>
					<li class="trail-item"><a href="#" title="">商品</a> <span><img
							src="/images/icons/arrow-right.png" alt=""></span></li>
					<li class="trail-end"><a href="#" title="">商品详情</a></li>
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

<section class="flat-product-detail">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="flexslider">
					<ul class="slides">
						<li data-thumb="${findById.prod005}"><img
							src="${findById.prod005}" alt="image slider" /> <span>NEW</span>
						</li>
						<!-- <li data-thumb="/images/product/flexslider/thumb/1.png"><img
							src="/images/product/flexslider/l01.jpg" alt="image slider" /></li>
						<li data-thumb="/images/product/flexslider/thumb/1.png"><img
							src="/images/product/flexslider/l01.jpg" alt="image slider" /> <span>NEW</span>
						</li>
						<li data-thumb="/images/product/flexslider/thumb/1.png"><img
							src="/images/product/flexslider/l01.jpg" alt="image slider" /></li>
						<li data-thumb="/images/product/flexslider/thumb/1.png"><img
							src="/images/product/flexslider/l01.jpg" alt="image slider" /></li> -->
					</ul>
					<!-- /.slides -->
				</div>
				<!-- /.flexslider -->
			</div>
			<!-- /.col-md-6 -->
			<div class="col-md-6">
				<div class="product-detail">
					<div class="header-detail">
						<h4 class="name">${findById.prod002}</h4>
						<div class="category">${findById.cate002}</div>
						<div class="reviewed">
							<div class="review">
								<div class="queue">
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i>
								</div>
								<div class="text">
									<span>3点评</span> <span class="add-review">添加您的评论</span>
								</div>
							</div>
							<!-- /.review -->
							<div class="status-product">
								库存 <span>${findById.prod011}</span>
							</div>
						</div>
						<!-- /.reviewed -->
					</div>
					<!-- /.header-detail -->
					<div class="content-detail">
						<div class="price">
							<div class="regular">$${findById.prod004}</div>
							<div class="sale">$${findById.prod003}</div>
						</div>
						<div class="info-text">${findById.prod006}
						</div>
						<div class="product-id">
							用品编号: <span class="id">${findById.prod001}</span>
						</div>
					</div>
					<!-- /.content-detail -->
					<div class="footer-detail">
						<!-- <div class="quanlity-box">
							<div class="colors">
								<select name="color">
									<option value="">选择颜色</option>
									<option value="">黑色</option>
									<option value="">红色</option>
									<option value="">白色</option>
								</select>
							</div>
							<div class="quanlity">
								<span class="btn-down"></span> <input type="number"
									name="number" value="" min="1" max="100" placeholder="Quanlity">
								<span class="btn-up"></span>
							</div>
						</div> -->
						<!-- /.quanlity-box -->
						<div class="box-cart style2">
							<div class="btn-add-cart">
								<a href="javascript:(0)" pk="${findById.prod001}" title="" onclick="addCart1(this)"><img src="/images/icons/add-cart.png"
									alt="">添加到购物车</a>
							</div>
							<!-- <div class="compare-wishlist">
								<a href="#" class="compare" title=""><img
									src="/images/icons/compare.png" alt="">比较</a> <a href="#"
									class="wishlist" title=""><img
									src="/images/icons/wishlist.png" alt="">收藏</a>
							</div> -->
						</div>
						<!-- /.box-cart -->
						<!-- <div class="social-single">
							<span>分享</span>
							<ul class="social-list style2">
								<li><a href="#" title=""> <i class="fa fa-facebook"
										aria-hidden="true"></i>
								</a></li>
								<li><a href="#" title=""> <i class="fa fa-twitter"
										aria-hidden="true"></i>
								</a></li>
								<li><a href="#" title=""> <i class="fa fa-instagram"
										aria-hidden="true"></i>
								</a></li>
								<li><a href="#" title=""> <i class="fa fa-pinterest"
										aria-hidden="true"></i>
								</a></li>
								<li><a href="#" title=""> <i class="fa fa-dribbble"
										aria-hidden="true"></i>
								</a></li>
								<li><a href="#" title=""> <i class="fa fa-google"
										aria-hidden="true"></i>
								</a></li>
							</ul>
						</div> -->
						<!-- /.social-single -->
					</div>
					<!-- /.footer-detail -->
				</div>
				<!-- /.product-detail -->
			</div>
			<!-- /.col-md-6 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</section>
<!-- /.flat-product-detail -->

<!-- <section class="flat-product-content">
	<ul class="product-detail-bar">
		<li class="active">商品描述</li>
		<li>技术规格</li>
		<li>评测</li>
	</ul>
	/.product-detail-bar
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="description-text">
					<div class="box-text">
						<h4>Nuqqam Et Massa</h4>
						<p>Sed sodales sed orci molestie tristique. Nunc dictum, erat
							id molestie vestibulum, ex leo vestibulum justo, luctus tempor
							erat sem quis diam. Lorem ipsum dolor sit amet.</p>
					</div>
					<div class="box-text wireless">
						<h4>Wireless</h4>
						<p>
							Contrary to popular belief, Lorem Ipsum is not simply random
							text. It has roots in a piece <br />of classical Latin
							literature from 45 BC, making it over 2000 years old.
						</p>
					</div>
					<div class="box-text design">
						<h4>Fresh Design</h4>
						<p>
							It is a long established fact that a reader will be distracted by
							the readable content of <br />a page when looking at its layout.
							The point of using Lorem Ipsum is that it has a <br />more-or-less
							normal distribution of letters, as opposed to using
						</p>
					</div>
					<div class="box-text sound">
						<h4>Fabolous Sound</h4>
						<p>
							There are many variations of passages of Lorem Ipsum available,
							but the <br />majority have suffered alteration in some form, by
							injected humour, or <br />randomised words which don't look even
							slightly believable.
						</p>
					</div>
				</div>
				/.description-text
			</div>
			/.col-md-6
			<div class="col-md-6">
				<div class="description-image">
					<div class="box-image">
						<img src="/images/product/single/01.png" alt="">
					</div>
					<div class="box-text">
						<h4>Nuqqam Et Massa</h4>
						<p>Sed sodales sed orci molestie tristique. Nunc dictum, erat
							id molestie vestibulum, ex leo vestibulum justo, luctus tempor
							erat sem quis diam. Lorem ipsum dolor sit amet.</p>
					</div>
				</div>
				/.description-image
			</div>
			/.col-md-6
			<div class="col-md-12">
				<div class="different-color">
					<div class="title">Different Colors</div>
					<p>
						Sed sodales sed orci<br />molestie
					</p>
				</div>
				/.different-color
			</div>
			/.col-md-12
			<div class="col-md-6">
				<div class="box-left">
					<div class="img-line">
						<img src="/images/product/single/line-1.png" alt="">
					</div>
					<div class="img-product">
						<img src="/images/product/single/06.png" alt="">
					</div>
				</div>
				/.box-left
			</div>
			/.col-md-6
			<div class="col-md-6">
				<div class="box-right">
					<div class="img-line">
						<img src="/images/product/single/line-2.png" alt=""> <img
							src="/images/product/single/04.png" alt="">
					</div>
					<div class="img-product"></div>
					<div class="box-text">
						<h4>Nuqqam Et Massa</h4>
						<p>Sed sodales sed orci molestie tristique. Nunc dictum, erat
							id molestie vestibulum, ex leo vestibulum justo, luctus tempor
							erat sem quis diam. Lorem ipsum dolor sit amet.</p>
					</div>
				</div>
				/.box-right
			</div>
			/.col-md-6
		</div>
		/.row
		<div class="row">
			<div class="col-md-12">
				<div class="tecnical-specs">
					<h4 class="name">Warch 42 mm Smart Watches</h4>
					<table>
						<tbody>
							<tr>
								<td>Height</td>
								<td>38.6mm</td>
							</tr>
							<tr>
								<td>Meterial</td>
								<td>Stainless Stee</td>
							</tr>
							<tr>
								<td>Case</td>
								<td>40g</td>
							</tr>
							<tr>
								<td>Color</td>
								<td>blue, gray, green, light blue, lime, purple, red,
									yellow</td>
							</tr>
							<tr>
								<td>Depth</td>
								<td>10.5mm</td>
							</tr>
							<tr>
								<td>Width</td>
								<td>33.3mm</td>
							</tr>
							<tr>
								<td>Size</td>
								<td>Large, Medium, Small</td>
							</tr>
						</tbody>
					</table>
					/.table
				</div>
				/.tecnical-specs
			</div>
			/.col-md-12
		</div>
		/.row
		<div class="row">
			<div class="col-md-6">
				<div class="rating">
					<div class="title">Based on 3 reviews</div>
					<div class="score">
						<div class="average-score">
							<p class="numb">4.3</p>
							<p class="text">Average score</p>
						</div>
						<div class="queue">
							<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</div>
					</div>
					/.score
					<ul class="queue-box">
						<li class="five-star"><span> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i>
						</span> <span class="numb-star">3</span></li>
						/.five-star
						<li class="four-star"><span> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i>
						</span> <span class="numb-star">4</span></li>
						/.four-star
						<li class="three-star"><span> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i>
						</span> <span class="numb-star">3</span></li>
						/.three-star
						<li class="two-star"><span> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i>
						</span> <span class="numb-star">2</span></li>
						/.two-star
						<li class="one-star"><span> <i class="fa fa-star"
								aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i> <i
								class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
								aria-hidden="true"></i>
						</span> <span class="numb-star">0</span></li>
						/.one-star
					</ul>
					/.queue-box
				</div>
				/.rating
			</div>
			/.col-md-6
			<div class="col-md-6">
				<div class="form-review">
					<div class="title">Add a review</div>
					<div class="your-rating queue">
						<span>Your Rating</span> <i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
							aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
					</div>
					<form action="#" method="get" accept-charset="utf-8">
						<div class="review-form-name">
							<input type="text" name="name-author" value="" placeholder="Name">
						</div>
						<div class="review-form-email">
							<input type="text" name="email-author" value=""
								placeholder="Email">
						</div>
						<div class="review-form-comment">
							<textarea name="review-text" placeholder="Your Name"></textarea>
						</div>
						<div class="btn-submit">
							<button type="submit">Add Review</button>
						</div>
					</form>
				</div>
				/.form-review
			</div>
			/.col-md-6
			<div class="col-md-12">
				<ul class="review-list">
					<li>
						<div class="review-metadata">
							<div class="name">
								Ali Tufan : <span>April 3, 2016</span>
							</div>
							<div class="queue">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i>
							</div>
						</div>
						/.review-metadata
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged.</p>
						</div>
						/.review-content
					</li>
					<li>
						<div class="review-metadata">
							<div class="name">
								Peter Tufan : <span>April 3, 2016</span>
							</div>
							<div class="queue">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i>
							</div>
						</div>
						/.review-metadata
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged.</p>
						</div>
						/.review-content
					</li>
					<li>
						<div class="review-metadata">
							<div class="name">
								Jon Tufan : <span>April 3, 2016</span>
							</div>
							<div class="queue">
								<i class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i> <i
									class="fa fa-star" aria-hidden="true"></i>
							</div>
						</div>
						/.review-metadata
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged.</p>
						</div>
						/.review-content
					</li>
				</ul>
				/.review-list
			</div>
			/.col-md-12
		</div>
		/.row
	</div>
	/.container
</section> -->
<!-- /.flat-product-content -->
<script type="text/javascript" src="/javascript/main.js"></script>
<script type="text/javascript" src="/javascript/productInfoJs/productInfoJs_index.js"></script>
