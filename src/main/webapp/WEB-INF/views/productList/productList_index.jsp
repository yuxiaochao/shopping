<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
					<li class="trail-end"><a href="#" title="">全部商品</a></li>
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

<main id="shop">
<div class="container">
<input type="hidden" id="pages" value="${pages}">
	<div class="row">
		<!-- <div class="col-lg-3 col-md-4">
			<div class="sidebar ">
				<div class="widget widget-categories">
					<div class="widget-title">
						<h3>
							商品分类<span></span>
						</h3>
					</div>
					<ul class="cat-list style1 widget-content">
						<li><span>手表<i>(03)</i></span>
							<ul class="cat-child">
								<li><a href="#" title="">卡西欧</a></li>
							</ul></li>
						<li><span>手机<i>(19)</i></span>
							<ul class="cat-child">
								<li><a href="#" title="">小米</a></li>
							</ul></li>
						<li class=""><span>电脑<i>(56)</i></span>
							<ul class="cat-child">
								<li><a href="#" title="">戴尔</a></li>
							</ul></li>
					</ul>
					/.cat-list
				</div>
				/.widget-categories
				<div class="widget widget-price">
					<div class="widget-title">
						<h3>
							价格<span></span>
						</h3>
					</div>
					<div class="widget-content">
						<p>价格</p>
						<div class="price search-filter-input">
							<div id="slider-range"
								class="price-slider ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content">
								<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span><span
									tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
							</div>
							<p class="amount">
								<input type="text" id="amount" disabled="">
							</p>
						</div>
					</div>
				</div>
				/.widget widget-price
				<div class="widget widget-brands">
					<div class="widget-title">
						<h3>
							品牌<span></span>
						</h3>
					</div>
					<div class="widget-content">
						<form action="#" method="get" accept-charset="utf-8">
							<input type="text" name="brands" placeholder="Brands Search">
						</form>
						<ul class="box-checkbox scroll">
							<li class="check-box"><input type="checkbox" id="checkbox1"
								name="checkbox1"> <label for="checkbox1">Apple <span>(4)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="checkbox2"
								name="checkbox2"> <label for="checkbox2">Samsung
									<span>(2)</span>
							</label></li>
							<li class="check-box"><input type="checkbox" id="checkbox3"
								name="checkbox3"> <label for="checkbox3">HTC <span>(2)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="checkbox4"
								name="checkbox4"> <label for="checkbox4">LG <span>(2)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="checkbox5"
								name="checkbox5"> <label for="checkbox5">Dell <span>(1)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="checkbox6"
								name="checkbox6"> <label for="checkbox6">Sony <span>(3)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="checkbox7"
								name="checkbox7"> <label for="checkbox7">Bphone
									<span>(4)</span>
							</label></li>
							<li class="check-box"><input type="checkbox" id="checkbox8"
								name="checkbox8"> <label for="checkbox8">Oppo <span>(4)</span></label>
							</li>
						</ul>
					</div>
				</div>
				/.widget widget-brands
				<div class="widget widget-color">
					<div class="widget-title">
						<h3>
							Color<span></span>
						</h3>
						<div style="height: 2px"></div>
					</div>
					<div class="widget-content">
						<form action="#" method="get" accept-charset="utf-8">
							<input type="text" name="color" placeholder="Color Search">
						</form>
						<div style="height: 5px"></div>
						<ul class="box-checkbox scroll">
							<li class="check-box"><input type="checkbox" id="check1"
								name="check1"> <label for="check1">Black <span>(4)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check2"
								name="check2"> <label for="check2">Yellow <span>(2)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check3"
								name="check3"> <label for="check3">White <span>(2)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check4"
								name="check4"> <label for="check4">Blue <span>(2)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check5"
								name="check5"> <label for="check5">Red <span>(1)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check6"
								name="check6"> <label for="check6">Pink <span>(3)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check7"
								name="check7"> <label for="check7">Green <span>(4)</span></label>
							</li>
							<li class="check-box"><input type="checkbox" id="check8"
								name="check8"> <label for="check8">Gold <span>(4)</span></label>
							</li>
						</ul>
					</div>
				</div>
				/.widget widget-color
				<div class="widget widget-products">
					<div class="widget-title">
						<h3>
							Best Seller<span></span>
						</h3>
					</div>
					<ul class="product-list widget-content">
						<li>
							<div class="img-product">
								<a href="#" title=""> <img src="/images/blog/14.jpg" alt="">
								</a>
							</div>
							<div class="info-product">
								<div class="name">
									<a href="#" title="">Razer RZ02-01071 <br />500-R3M1
									</a>
								</div>
								<div class="queue">
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i>
								</div>
								<div class="price">
									<span class="sale">$50.00</span> <span class="regular">$2,999.00</span>
								</div>
							</div>
						</li>
						<li>
							<div class="img-product">
								<a href="#" title=""> <img src="/images/blog/13.jpg" alt="">
								</a>
							</div>
							<div class="info-product">
								<div class="name">
									<a href="#" title="">Notebook Black Spire <br />V Nitro
										VN7-591G
									</a>
								</div>
								<div class="queue">
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i>
								</div>
								<div class="price">
									<span class="sale">$24.00</span> <span class="regular">$2,999.00</span>
								</div>
							</div>
						</li>
						<li>

							<div class="img-product">
								<a href="#" title=""> <img src="/images/blog/12.jpg" alt="">
								</a>
							</div>
							<div class="info-product">
								<div class="name">
									<a href="#" title="">Apple iPad Mini <br />G2356
									</a>
								</div>
								<div class="queue">
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i>
								</div>
								<div class="price">
									<span class="sale">$90.00</span> <span class="regular">$2,999.00</span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				/.widget widget-products
				<div class="widget widget-banner">
					<div class="banner-box">
						<div class="inner-box">
							<a href="#" title=""> <img src="/images/banner_boxes/06.png"
								alt="">
							</a>
						</div>
					</div>
				</div>
				/.widget widget-banner
			</div>
			/.sidebar
		</div> -->
		<!-- /.col-lg-3 col-md-4 -->
		<div class="col-lg-12 col-md-12">
			<div class="main-shop">
				<div class="slider owl-carousel-16">
					<div class="slider-item style9">
						<div class="item-text">
							<div class="header-item">
								<p>You can build the banner for other category</p>
								<h2 class="name">Shop Banner</h2>
							</div>
						</div>
						<div class="item-image">
							<img src="/images/banner_boxes/07.png" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /.slider-item style9 -->
					<div class="slider-item style9">
						<div class="item-text">
							<div class="header-item">
								<p>You can build the banner for other category</p>
								<h2 class="name">Shop Banner</h2>
							</div>
						</div>
						<div class="item-image">
							<img src="/images/banner_boxes/07.png" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /.slider-item style9 -->

				</div>
				<!-- /.slider -->
				<div class="wrap-imagebox">
					<%-- <div class="flat-row-title">
						<h3>全部商品</h3>
						<span> 显示${total}条结果中的1-9条 </span>
						<div class="clearfix"></div>
					</div> --%>
					<div class="sort-product">
						<ul class="icons">
							<li><img src="/images/icons/list-1.png" alt=""></li>
							<li><img src="/images/icons/list-2.png" alt=""></li>
						</ul>
						<div class="sort">
							<!-- <div class="popularity">
								<select name="popularity">
									<option value="">按受欢迎度排序</option>
								</select>
							</div>
							<div class="showed">
								<select name="showed">
									<option value="">Show 15</option>
								</select>
							</div> -->
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="tab-product" id="productShowPage">
					</div>
				</div>
				<!-- /.wrap-imagebox -->
				<div class="blog-pagination">
					<span >显示${total}条结果中的1-9条</span>
					<ul class="flat-pagination style1">
						<li class="prev"><a title="prevPage" id="prevPage"> <img src="/images/icons/left-1.png" alt="">上一页
						</a></li>
						<li class="active"><a class="waves-effect" title="1">01</a></li>
						<c:forEach begin="2" end="${pages}" var="i">
						<c:choose>
						<c:when test="${i<10}">
							<li><a class="waves-effect" title="${i}" >0${i}</a></li>
							<!-- <li class="active"><a href="#" class="waves-effect" title="">03</a></li> -->
						</c:when>
						<c:otherwise>
							<li><a class="waves-effect" title="${i}" >${i}</a></li>
						</c:otherwise>
						</c:choose>
						</c:forEach>
						<li class="next"><a title="nextPage" id="nextPage"> 下一页<img
								src="/images/icons/right-1.png" alt="">
						</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- /.blog-pagination -->
			</div>
			<!-- /.main-shop -->
		</div>
		<!-- /.col-lg-9 col-md-8 -->
	</div>
	<!-- /.row -->
</div>
<!-- /.container --> </main>
<!-- /#shop -->


<!-- /.flat-imagebox style4 -->

<!-- Javascript -->
<script type="text/javascript" src="/javascript/main.js"></script>

<!-- 自定义js -->
<script type="text/javascript" src="/javascript/productListJs/productListJs_index.js"></script>

					
