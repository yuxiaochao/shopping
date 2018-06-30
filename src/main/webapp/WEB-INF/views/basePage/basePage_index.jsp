<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"><!--<![endif]-->
<head>
	<!-- Basic Page Needs -->
	<meta charset="UTF-8">
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
	<title>网上商城</title>

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Boostrap style -->
	<link rel="stylesheet" type="text/css" href="/stylesheets/bootstrap.min.css">

	<!-- Theme style -->
	<link rel="stylesheet" type="text/css" href="/stylesheets/style.css">

	<!-- Reponsive -->
	<link rel="stylesheet" type="text/css" href="/stylesheets/responsive.css">

	<script src="/javascript/sweet-alert.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/stylesheets/sweet-alert.css">
	<style>
		#login{cursor:pointer}
		#register{cursor:pointer}
		.column-1{cursor:pointer}
		#prevPage{cursor:pointer}
		#nextPage{cursor:pointer}
		.btn-add-cart{cursor:pointer}
		a{cursor:pointer}
	</style>
</head>
<body class="header_sticky">
	<div class="boxed">

		<div class="overlay"></div>

		<!-- Preloader -->
		<div class="preloader">
			<div class="clear-loading loading-effect-2">
				<span></span>
			</div>
		</div><!-- /.preloader -->
		<div class="popup-newsletter">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<input type="hidden" id="username" value="<%=session.getAttribute("username") %>">
						<input type="hidden" id="userId" value="<%=session.getAttribute("userId") %>">
					</div>
					<div class="col-sm-8">
						<div class="popup">
							<span id="closeNews"></span>
							<div class="popup-text">
								<h2>为您推荐 <br />低价！超值！</h2>
								<p class="subscribe">达尔优 进化者D3吃鸡耳机头戴式电竞游戏电脑台式7.1声道usb耳麦</p>
								<div class="form-popup">
									<form action="#" class="subscribe-form" method="get" accept-charset="utf-8">
										<div class="subscribe-content">
											<input type="text" name="email" class="subscribe-email" placeholder="你的邮箱">
											<button type="submit"><img src="/images/icons/right-2.png" alt=""></button>
										</div>
									</form>
									<div class="checkbox">
										<input type="checkbox" id="popup-not-show" name="category">
										<label for="popup-not-show">不在提示最新折扣</label>
									</div>
								</div>
							</div>
							<div class="popup-image">
								<img src="/images/banner_boxes/popup.png" alt="">
							</div>
						</div>
					</div>
					<div class="col-sm-2">
						
					</div>
				</div>
			</div>
		</div>

		<section id="header" class="header">
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<ul class="flat-support">
								<li>
									<a href="#" title="">企业历史</a>
								</li>
							</ul>
						</div>
						<div class="col-md-4">
							<ul class="flat-infomation">
								<li class="phone">
									联系我们: <a href="#" title="">(+86) 132 8887 2861</a>
								</li>
							</ul>
						</div>
						
						<!-- <div class="col-md-2">
							<ul class="flat-unstyled">
								<li>
									
								</li>	
							</ul>
						</div> -->
						<div class="col-md-2">
							<ul class="flat-unstyled">
								<c:if test="${sessionScope.username==null }">
									<li><a id="loginAndRegist"
										style="cursor: pointer; color: #f28b00; text-decoration: none; outline: 0;"
										title="登录|注册">登录|注册</a></li>
								</c:if>
								<c:if test="${sessionScope.username!=null}">
									<li><a
										style="cursor: pointer; color: #f28b00; text-decoration: none; outline: 0;"
										title="">欢迎${sessionScope.username}登录</a> </li>
										<li>
										<a id="logout"
										style="cursor: pointer; color: #f28b00; text-decoration: none; outline: 0;"
										title="">注销</a>
										</li>
								</c:if>

							</ul>
						</div>

					</div>
				</div>
			</div><!-- /.header-top -->
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div id="logo" class="logo">
								<a href="#" title="">
									<img src="/images/logos/logo.png" alt="">
								</a>
							</div><!-- /#logo -->
						</div><!-- /.col-md-3 -->
						<div class="col-md-6">
							<!-- <div class="top-search">
								<form action="#" method="get" class="form-search" accept-charset="utf-8">
									<div class="cat-wrap">
										<select name="category">
											<option hidden value="">分类</option>
										</select>
										<span><i class="fa fa-angle-down" aria-hidden="true"></i></span>
										<div class="all-categories">
											<div class="cat-list-search">
												<div class="title">
													手机
												</div>
												<ul>
													<li>苹果</li>
													<li>华为</li>
													<li>魅族</li>
													<li>小米</li>
													<li>vivo</li>
												</ul>
											</div>/.cat-list-search
											<div class="cat-list-search">
												<div class="title">
													电脑
												</div>
												<ul>
													<li>惠普</li>
													<li>华硕</li>
													<li>联想</li>
												</ul>
											</div>/.cat-list-search
											
										</div>/.all-categories
									</div>/.cat-wrap
									<div class="box-search">
										<input type="text" name="search" placeholder="你在找什么？">
										<span class="btn-search">
											<button type="submit" class="waves-effect"><img src="/images/icons/search.png" alt=""></button>
										</span>
										<div class="search-suggestions">
											<div class="box-suggestions">
												<div class="title">
													热门推荐
												</div>
												<ul>
													<li>
														<div class="image">
															<img src="/images/product/other/s05.jpg" alt="">
														</div>
														<div class="info-product">
															<div class="name">
																<a href="#" title="">Razer RZ02-01071500-R3M1</a>
															</div>
															<div class="price">
																<span class="sale">
																	$50.00
																</span>
																<span class="regular">
																	$2,999.00
																</span>
															</div>
														</div>
													</li>
													<li>
														<div class="image">
															<img src="/images/product/other/s06.jpg" alt="">
														</div>
														<div class="info-product">
															<div class="name">
																<a href="#" title="">Notebook Black Spire V Nitro VN7-591G</a>
															</div>
															<div class="price">
																<span class="sale">
																	$24.00
																</span>
															</div>
														</div>
													</li>
													<li>
														<div class="image">
															<img src="/images/product/other/14.jpg" alt="">
														</div>
														<div class="info-product">
															<div class="name">
																<a href="#" title="">Apple iPad Mini G2356</a>
															</div>
															<div class="price">
																<span class="sale">
																	$90.00
																</span>
															</div>
														</div>
													</li>
													<li>
														<div class="image">
															<img src="/images/product/other/02.jpg" alt="">
														</div>
														<div class="info-product">
															<div class="name">
																<a href="#" title="">Razer RZ02-01071500-R3M1</a>
															</div>
															<div class="price">
																<span class="sale">
																	$50.00
																</span>
															</div>
														</div>
													</li>
													<li>
														<div class="image">
															<img src="/images/product/other/l01.jpg" alt="">
														</div>
														<div class="info-product">
															<div class="name">
																<a href="#" title="">Apple iPad Mini G2356</a>
															</div>
															<div class="price">
																<span class="sale">
																	$24.00
																</span>
																<span class="regular">
																	$2,999.00
																</span>
															</div>
														</div>
													</li>
													<li>
														<div class="image">
															<img src="/images/product/other/s08.jpg" alt="">
														</div>
														<div class="info-product">
															<div class="name">
																<a href="#" title="">Beats Snarkitecture Headphones</a>
															</div>
															<div class="price">
																<span class="sale">
																	$90.00
																</span>
																<span class="regular">
																	$2,999.00
																</span>
															</div>
														</div>
													</li>
												</ul>
											</div>/.box-suggestions
											<div class="box-cat">
												<div class="cat-list-search">
													<div class="title">
														类别
													</div>
													<ul>
														<li>
															<a href="#">Networking & Internet Devices</a>
														</li>
														<li>
															<a href="#">Laptops, Desktops & Monitors</a>
														</li>
														<li>
															<a href="#">Hard Drives & Memory Cards</a>
														</li>
														<li>
															<a href="#">Printers & Ink</a>
														</li>
														<li>
															<a href="#">Networking & Internet Devices</a>
														</li>
														<li>
															<a href="#">Computer Accessories</a>
														</li>
														<li>
															<a href="#">Software</a>
														</li>
													</ul>
												</div>/.cat-list-search
											</div>/.box-cat
										</div>/.search-suggestions
									</div>/.box-search
								</form>/.form-search
							</div> --><!-- /.top-search -->
						</div><!-- /.col-md-6 -->
						<div class="col-md-3">
							<div class="box-cart">
								<!-- <div class="inner-box">
									<ul class="menu-compare-wishlist">
										<li class="compare">
											<a href="#" title="">
												<img src="/images/icons/compare.png" alt="">
											</a>
										</li>
										<li class="wishlist">
											<a href="wishlist.html" title="">
												<img src="/images/icons/wishlist.png" alt="">
											</a>
										</li>
									</ul>/.menu-compare-wishlist
								</div> --><!-- /.inner-box -->
								<div class="inner-box">
									<a href="javascript:(0)" title="购物车" class="view-cart">
										<div class="icon-cart">
											<img src="/images/icons/cart.png" alt="">
											<span>${cartSpecies.species}</span>
										</div>
										<div class="price" style="position: absolute;top: 11px;left: 68px;">
											$${cartTotal.total}
										</div>
									</a>
									<div class="dropdown-box">
									<p align="left">购物车内部分商品</p>
										<ul>
										<c:forEach items="${cartInfo}" begin="0" end="2" step="1" var="ci">
											<li><!-- <span class="cart_delete">x</span> -->
												<div class="img-product">
													<img src="${ci.prod005}" alt="">
												</div>
												<div class="info-product" pk="${ci.cart001}">
													<div class="name">
														${ci.prod002}
													</div>
													<div class="price">
														<span>${ci.cart004} x</span>
														<span>￥${ci.prod003}</span>
													</div>
												</div>
												<div class="clearfix"></div>
												
											</li>
										</c:forEach>
										</ul>
										<div class="total">
											<span>小计:</span>
											<span class="price">$${cartTotal.total}</span>
										</div>
										<div class="btn-cart">
											<a class="view-cart" title="查看购物车">查看购物车</a>
											<a href="payment/index.html" class="check-out" title="">付款</a>
										</div>
									</div>
								</div><!-- /.inner-box -->
							</div><!-- /.box-cart -->
						</div><!-- /.col-md-3 -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</div><!-- /.header-middle -->
			<div class="header-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-2">
							<div id="mega-menu">
								<div class="btn-mega"><span></span>ALL CATEGORIES</div>
								<ul class="menu">
									<li>
										<a href="#" title="" class="dropdown">
											<span class="menu-img">
												<img src="/images/icons/menu/01.png" alt="">
											</span>
											<span class="menu-title">
												Laptops & Mac
											</span>
										</a>
										<div class="drop-menu">
											<div class="one-third">
												<div class="cat-title">
													Laptop And Mac
												</div>
												<ul>
													<li>
														<a href="#" title="">Networking & Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Laptops, Desktops & Monitors</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Computer Accessories</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<div class="cat-title">
													Audio & Video
												</div>
												<ul>
													<li>
														<a href="#" title="">Headphones & Speakers</a>
													</li>
													<li>
														<a href="#" title="">Home Entertainment Systems</a>
													</li>
													<li>
														<a href="#" title="">MP3 & Media Players</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<ul class="banner">
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Headphones
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-01.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																TV & Audio
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-02.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Computers
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-03.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
												</ul>	
											</div>
										</div>
									</li>
									<li>
										<a href="#" title="" class="dropdown">
											<span class="menu-img">
												<img src="/images/icons/menu/02.png" alt="">
											</span>
											<span class="menu-title">
												Mobile & Tablet
											</span>
										</a>
										<div class="drop-menu">
											<div class="one-third">
												<div class="cat-title">
													Laptop And Computer
												</div>
												<ul>
													<li>
														<a href="#" title="">Networking & Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Laptops, Desktops & Monitors</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Printers & Ink</a>
													</li>
													<li>
														<a href="#" title="">Networking & Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Computer Accessories</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<div class="cat-title">
													Audio & Video
												</div>
												<ul>
													<li>
														<a href="#" title="">Headphones & Speakers</a>
													</li>
													<li>
														<a href="#" title="">Home Entertainment Systems</a>
													</li>
													<li>
														<a href="#" title="">MP3 & Media Players</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<ul class="banner">
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Headphones
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-01.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																TV & Audio
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-02.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Computers
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-03.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
												</ul>	
											</div>
										</div>
									</li>
									<li>
										<a href="#" title="" class="dropdown">
											<span class="menu-img">
												<img src="/images/icons/menu/03.png" alt="">
											</span>
											<span class="menu-title">
												Home Devices
											</span>
										</a>
										<div class="drop-menu">
											<div class="one-third">
												<div class="cat-title">
													Home Devices
												</div>
												<ul>
													<li>
														<a href="#" title="">Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Desktops & Monitors</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Networking</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<div class="cat-title">
													Audio
												</div>
												<ul>
													<li>
														<a href="#" title="">Home Entertainment Systems</a>
													</li>
													<li>
														<a href="#" title="">MP3 & Media Players</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<ul class="banner">
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Headphones
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-01.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																TV & Audio
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-02.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Computers
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-03.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
												</ul>	
											</div>
										</div>
									</li>
									<li>
										<a href="#" title="">
											<span class="menu-img">
												<img src="/images/icons/menu/04.png" alt="">
											</span>
											<span class="menu-title">
												Software
											</span>
										</a>
									</li>
									<li>
										<a href="#" title="">
											<span class="menu-img">
												<img src="/images/icons/menu/05.png" alt="">
											</span>
											<span class="menu-title">
												TV & Audio
											</span>
										</a>
									</li>
									<li>
										<a href="#" title="">
											<span class="menu-img">
												<img src="/images/icons/menu/06.png" alt="">
											</span>
											<span class="menu-title">
												Sports & Fitness
											</span>
										</a>
									</li>
									<li>
										<a href="#" title="" class="dropdown">
											<span class="menu-img">
												<img src="/images/icons/menu/07.png" alt="">
											</span>
											<span class="menu-title">
												Games & Toys
											</span>
										</a>
										<div class="drop-menu">
											<div class="one-third">
												<div class="cat-title">
													Games & Toys
												</div>
												<ul>
													<li>
														<a href="#" title="">Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Desktops & Monitors</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Networking</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<div class="cat-title">
													Audio
												</div>
												<ul>
													<li>
														<a href="#" title="">Home Entertainment Systems</a>
													</li>
													<li>
														<a href="#" title="">MP3 & Media Players</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<ul class="banner">
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Headphones
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-01.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																TV & Audio
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-02.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Computers
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-03.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
												</ul>	
											</div>
										</div>
									</li>
									<li>
										<a href="#" title="">
											<span class="menu-img">
												<img src="/images/icons/menu/08.png" alt="">
											</span>
											<span class="menu-title">
												Video Cameras
											</span>
										</a>
									</li>
									<li>
										<a href="#" title="" class="dropdown">
											<span class="menu-img">
												<img src="/images/icons/menu/09.png" alt="">
											</span>
											<span class="menu-title">
												Accessories
											</span>
										</a>
										<div class="drop-menu">
											<div class="one-third">
												<div class="cat-title">
													Accessories
												</div>
												<ul>
													<li>
														<a href="#" title="">Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Desktops & Monitors</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Networking</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<div class="cat-title">
													Audio
												</div>
												<ul>
													<li>
														<a href="#" title="">Home Entertainment Systems</a>
													</li>
													<li>
														<a href="#" title="">MP3 & Media Players</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<ul class="banner">
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Headphones
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-01.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																TV & Audio
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-02.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Computers
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-03.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
												</ul>	
											</div>
										</div>
									</li>
									<li>
										<a href="#" title="" class="dropdown">
											<span class="menu-img">
												<img src="/images/icons/menu/10.png" alt="">
											</span>
											<span class="menu-title">
												Security
											</span>
										</a>
										<div class="drop-menu">
											<div class="one-third">
												<div class="cat-title">
													Security
												</div>
												<ul>
													<li>
														<a href="#" title="">Internet Devices</a>
													</li>
													<li>
														<a href="#" title="">Desktops & Monitors</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Networking</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<div class="cat-title">
													Audio
												</div>
												<ul>
													<li>
														<a href="#" title="">Home Entertainment Systems</a>
													</li>
													<li>
														<a href="#" title="">MP3 & Media Players</a>
													</li>
													<li>
														<a href="#" title="">Software</a>
													</li>
													<li>
														<a href="#" title="">Hard Drives & Memory Cards</a>
													</li>
													<li>
														<a href="#" title="">Networking</a>
													</li>
												</ul>
												<div class="show">
													<a href="#" title="">Shop All</a>
												</div>
											</div>
											<div class="one-third">
												<ul class="banner">
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Headphones
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-01.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																TV & Audio
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-02.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
													<li>
														<div class="banner-text">
															<div class="banner-title">
																Computers
															</div>
															<div class="more-link">
																<a href="#" title="">Shop Now <img src="/images/icons/right-2.png" alt=""></a>
															</div>
														</div>
														<div class="banner-img">
															<img src="/images/banner_boxes/menu-03.png" alt="">
														</div>
														<div class="clearfix"></div>
													</li>
												</ul>	
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div><!-- /.col-md-3 -->
						<div class="col-md-9 col-10">
							<div class="nav-wrap">
								<div id="mainnav" class="mainnav">
									<ul class="menu">
										<li class="column-1">
											<a href="/" title="">首页</a>
											
										</li><!-- /.column-1 -->
										<li class="column-1">
											<a title="">购物</a>
											<ul class="submenu">
												<li>
													<a title="" id="productList"><i class="fa fa-angle-right" aria-hidden="true"></i>全部商品</a>
												</li>
												
											</ul><!-- /.submenu -->
										</li><!-- /.column-1 -->
										
										<li class="has-mega-menu">
											<a href="#" title="">备用</a>
											<div class="submenu">
												<div class="row">
													<div class="col-lg-3 col-md-12">
														<h3 class="cat-title">Accessories</h3>
														<ul class="submenu-child">
															<li>
																<a href="#" title="">Electronics</a>
															</li>
															<li>
																<a href="#" title="">Furniture</a>
															</li>
															<li>
																<a href="#" title="">Accessories</a>
															</li>
															<li>
																<a href="#" title="">Divided</a>
															</li>
															<li>
																<a href="#" title="">Everyday Fashion</a>
															</li>
															<li>
																<a href="#" title="">Modern Classic</a>
															</li>
															<li>
																<a href="#" title="">Party</a>
															</li>
														</ul>
														<div class="show">
															<a href="#" title="">Shop All</a>
														</div>
													</div><!-- /.col-lg-3 col-md-12 -->
													
												</div><!-- /.row -->
												<div class="row">
													<div class="col-md-6">
														<div class="banner-box">
															<div class="inner-box">
																<a href="#" title="">
																	<img src="/images/banner_boxes/submenu-01.png" alt="">
																</a>
															</div>
														</div>
													</div>
													
												</div><!-- /.row -->
											</div><!-- /.submenu -->
										</li><!-- /.has-mega-menu -->
										
									</ul><!-- /.menu -->
								</div><!-- /.mainnav -->
							</div><!-- /.nav-wrap -->
							<div class="today-deal">
							<c:if test="${sessionScope.backUserId==null}">
								<a href="/backLogin/index.html" title="">后台管理</a>
							</c:if>
							<c:if test="${sessionScope.backUserId!=null}">
								<a href="/backStage/index.html" title="">后台管理</a>
							</c:if>
							</div><!-- /.today-deal -->
							<div class="btn-menu">
	                            <span></span>
	                        </div><!-- //mobile menu button -->
						</div><!-- /.col-md-9 -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</div><!-- /.header-bottom -->
		</section><!-- /#header -->
	<div id="basePage_fillPage" >
	</div>
	<div id="basePage_footPage" >
		<%@ include file="basePage_foot.jsp"%>
	</div>
	</div><!-- /.boxed -->
	<!-- Javascript -->
	<script type="text/javascript" src="/javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/javascript/tether.min.js"></script>
	<script type="text/javascript" src="/javascript/bootstrap.min.js"></script>
	<script type="text/javascript" src="/javascript/waypoints.min.js"></script>
	<!-- <script type="text/javascript" src="/javascript/jquery.circlechart.js"></script> -->
	<script type="text/javascript" src="/javascript/easing.js"></script>
	<script type="text/javascript" src="/javascript/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="/javascript/owl.carousel.js"></script>
	<script type="text/javascript" src="/javascript/smoothscroll.js"></script>
	<!-- <script type="text/javascript" src="/javascript/jquery-ui.js"></script> -->
	<script type="text/javascript" src="/javascript/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyBtRmXKclfDp20TvfQnpgXSDPjut14x5wk&region=GB"></script>
	<script type="text/javascript" src="/javascript/gmap3.min.js"></script>
	<script type="text/javascript" src="/javascript/waves.min.js"></script> 
	<script type="text/javascript" src="/javascript/jquery.countdown.js"></script>
	<script type="text/javascript" src="/javascript/main.js"></script>
	<!-- 自定义js -->
	<script type="text/javascript" src="/javascript/basePageJs/basePage_index.js"></script>
		

</body>	
</html>
