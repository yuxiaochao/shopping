<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>后台</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style"
	href="/backStage/css/bootstrap.min.css" rel="stylesheet">
<link href="/backStage/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link id="base-style" href="/backStage/css/style.css"
	rel="stylesheet">
<link id="base-style-responsive"
	href="/backStage/css/style-responsive.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="/backStage/img/favicon.ico">
	<script src="/javascript/sweet-alert.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/stylesheets/sweet-alert.css">
<style type="text/css">
	.addButton12{
		float: right;
		/* position: absolute;
	    margin-left: 1132px;
	    width: 100px; 
	    top: 8px;
	    left: 5px; */
	}
	.addButton6{
		float: right;
		/* position: absolute;
	    margin-left: 547px;
	    width: 100px; 
	    top: 8px;
	    left: 5px; */                                                           
	}
	
</style>
</head>

<body>
	<!-- start: Header -->
	<div class="navbar">
	<!-- 隐藏域 -->
	<input type="hidden" id="backUserId" value="<%=session.getAttribute("backUsername") %>">
	<input type="hidden" id="backUserId" value="<%=session.getAttribute("backUserId") %>">
	<!-- 隐藏域 -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="index.html"><span>后台管理系统</span></a>

				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone"><a
							class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-bell"></i> <span class="badge red"> 7 </span>
						</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title"><span>You have 11
										notifications</span> <a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li><a href="#"> <span class="icon blue"><i
											class="icon-user"></i></span> <span class="message">New user
											registration</span> <span class="time">1 min</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">7 min</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">8 min</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">16 min</span>
								</a></li>
								<li><a href="#"> <span class="icon blue"><i
											class="icon-user"></i></span> <span class="message">New user
											registration</span> <span class="time">36 min</span>
								</a></li>
								<li><a href="#"> <span class="icon yellow"><i
											class="icon-shopping-cart"></i></span> <span class="message">2
											items sold</span> <span class="time">1 hour</span>
								</a></li>
								<li class="warning"><a href="#"> <span class="icon red"><i
											class="icon-user"></i></span> <span class="message">User
											deleted account</span> <span class="time">2 hour</span>
								</a></li>
								<li class="warning"><a href="#"> <span class="icon red"><i
											class="icon-shopping-cart"></i></span> <span class="message">New
											comment</span> <span class="time">6 hour</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">yesterday</span>
								</a></li>
								<li><a href="#"> <span class="icon blue"><i
											class="icon-user"></i></span> <span class="message">New user
											registration</span> <span class="time">yesterday</span>
								</a></li>
								<li class="dropdown-menu-sub-footer"><a>View all
										notifications</a></li>
							</ul></li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone"><a
							class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-calendar"></i> <span class="badge red"> 5
							</span>
						</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title"><span>You have 17
										tasks in progress</span> <a href="#refresh"><i
										class="icon-repeat"></i></a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">iOS Development</span> <span class="percent"></span>
									</span>
										<div class="taskProgress progressSlim red">80</div>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">Android Development</span> <span
											class="percent"></span>
									</span>
										<div class="taskProgress progressSlim green">47</div>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">ARM Development</span> <span class="percent"></span>
									</span>
										<div class="taskProgress progressSlim yellow">32</div>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">ARM Development</span> <span class="percent"></span>
									</span>
										<div class="taskProgress progressSlim greenLight">63</div>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">ARM Development</span> <span class="percent"></span>
									</span>
										<div class="taskProgress progressSlim orange">80</div>
								</a></li>
								<li><a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>
							</ul></li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone"><a
							class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-envelope"></i> <span class="badge red"> 4
							</span>
						</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title"><span>You have 9
										messages</span> <a href="#refresh"><i class="icon-repeat"></i></a></li>
								<li><a href="#"> <span class="avatar"><img
											src="/backStage/img/avatar.jpg" alt="Avatar"></span> <span
										class="header"> <span class="from"> Dennis Ji </span> <span
											class="time"> 6 min </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="/backStage/img/avatar.jpg" alt="Avatar"></span> <span
										class="header"> <span class="from"> Dennis Ji </span> <span
											class="time"> 56 min </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="/backStage/img/avatar.jpg" alt="Avatar"></span> <span
										class="header"> <span class="from"> Dennis Ji </span> <span
											class="time"> 3 hours </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="/backStage/img/avatar.jpg" alt="Avatar"></span> <span
										class="header"> <span class="from"> Dennis Ji </span> <span
											class="time"> yesterday </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="/backStage/img/avatar.jpg" alt="Avatar"></span> <span
										class="header"> <span class="from"> Dennis Ji </span> <span
											class="time"> Jul 25, 2012 </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a class="dropdown-menu-sub-footer">View all
										messages</a></li>
							</ul></li>

						<!-- start: User Dropdown -->
						<li class="dropdown"><a class="btn dropdown-toggle"
							data-toggle="dropdown" href="#"> <i
								class="halflings-icon white user"></i> ${sessionScope.backUsername} <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title"><span>账号设置</span></li>
								<li><a href="javascript:void(0)"><i class="halflings-icon user"></i>
										账户信息</a></li>
								<li><a href="javascript:void(0)" id="backLogout"><i class="halflings-icon off"></i>
										退出登录</a></li>
							</ul></li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->

			</div>
		</div>
	</div>
	<!-- start: Header -->
	<div class="copyrights">
		Collect from <a href="http://www.34nn.cn/">数据字典管理</a>
	</div>

	<div class="container-fluid-full">
		<div class="row-fluid">

			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						
						<!-- <li id="bar-chart"><a href="javascript:(0)"><i class="icon-bar-chart"></i><span
								class="hidden-tablet"> 仪表盘</span></a></li>
						<li id="envelope"><a href="javascript:(0)"><i class="icon-envelope"></i><span
								class="hidden-tablet"> 消息</span></a></li>
						<li id="tasks"><a href="javascript:(0)"><i class="icon-tasks"></i><span
								class="hidden-tablet"> 任务</span></a></li>
						<li id="ui"><a href="javascript:(0)"><i class="icon-eye-open"></i><span
								class="hidden-tablet"> UI模板</span></a></li>
						<li id="widgets"><a href="javascript:(0)"><i class="icon-dashboard"></i><span
								class="hidden-tablet"> 小工具</span></a></li>
						<li id="form"><a href="javascript:(0)"><i class="icon-edit"></i><span
								class="hidden-tablet"> 表单</span></a></li>
						<li id="chart"><a href="javascript:(0)"><i class="icon-list-alt"></i><span
								class="hidden-tablet"> 图表</span></a></li>
						<li id="typography"><a href="javascript:(0)"><i class="icon-font"></i><span
								class="hidden-tablet"> 字体设计</span></a></li>
						<li id="gallery"><a href="javascript:(0)"><i class="icon-picture"></i><span
								class="hidden-tablet"> 相册</span></a></li>
						<li id="table"><a href="javascript:(0)"><i class="icon-align-justify"></i><span
								class="hidden-tablet"> 表格</span></a></li>
						<li id="dateCalendar"><a href="javascript:(0)"><i class="icon-calendar"></i><span
								class="hidden-tablet"> 日历</span></a></li>
						<li id="file-manager"><a href="javascript:(0)"><i
								class="icon-folder-open"></i><span class="hidden-tablet">
									文件管理器</span></a></li>
						<li id="icon"><a href="javascript:(0)"><i class="icon-star"></i><span
								class="hidden-tablet"> 图标模板</span></a></li> -->
						<li id="CommodityManagement"><a href="javascript:(0)"><i class="icon-align-justify"></i><span
								class="hidden-tablet">商品管理</span></a></li>
						<c:if test="${sessionScope.backUsername=='admin'}">
						<li id="UserManagement"><a href="javascript:(0)"><i class="icon-lock"></i><span
								class="hidden-tablet">用户管理</span></a></li>
						<li id="GenerateCode"><a href="javascript:(0)"><i class="icon-lock"></i><span
								class="hidden-tablet">注册码管理</span></a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->

			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<!-- start: Content -->
			<div id="content" class="span10"></div>
			<!--/.fluid-container-->

			<!-- end: Content -->
		</div>
		<!--/#content.span10-->
	</div>
	<!--/fluid-row-->

	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a> <a href="#"
				class="btn btn-primary">Save changes</a>
		</div>
	</div>

	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="#">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>

	<div class="clearfix"></div>

	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2018 <a
				href="downloads/janux-free-responsive-admin-dashboard-template/"
				alt="Bootstrap_Metro_Dashboard">响应式仪表板</a></span>

		</p>

	</footer>

	<!-- start: JavaScript-->

	<script src="/backStage/js/jquery-1.8.3.min.js"></script>
	<script src="/backStage/js/jquery-migrate-1.0.0.min.js"></script>

	<script src="/backStage/js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="/backStage/js/jquery.ui.touch-punch.js"></script>

	<script src="/backStage/js/modernizr.js"></script>

	<script src="/backStage/js/bootstrap.min.js"></script>

	<script src="/backStage/js/jquery.cookie.js"></script>

	<script src='/backStage/js/fullcalendar.min.js'></script>

	<script src='/backStage/js/jquery.dataTables.min.js'></script>

	<script src="/backStage/js/excanvas.js"></script>
	<script src="/backStage/js/jquery.flot.js"></script>
	<script src="/backStage/js/jquery.flot.pie.js"></script>
	<script src="/backStage/js/jquery.flot.stack.js"></script>
	<script src="/backStage/js/jquery.flot.resize.min.js"></script>

	<script src="/backStage/js/jquery.chosen.min.js"></script>

	<script src="/backStage/js/jquery.uniform.min.js"></script>

	<script src="/backStage/js/jquery.cleditor.min.js"></script>

	<script src="/backStage/js/jquery.noty.js"></script>

	<script src="/backStage/js/jquery.elfinder.min.js"></script>

	<script src="/backStage/js/jquery.raty.min.js"></script>

	<script src="/backStage/js/jquery.iphone.toggle.js"></script>

	<script src="/backStage/js/jquery.uploadify-3.1.min.js"></script>

	<script src="/backStage/js/jquery.gritter.min.js"></script>

	<script src="/backStage/js/jquery.imagesloaded.js"></script>

	<script src="/backStage/js/jquery.masonry.min.js"></script>

	<script src="/backStage/js/jquery.knob.modified.js"></script>

	<script src="/backStage/js/jquery.sparkline.min.js"></script>

	<script src="/backStage/js/counter.js"></script>

	<script src="/backStage/js/retina.js"></script>
	<script src="/backStage/js/jquery-md5.js"></script>
	<script src="/backStage/js/ajaxfileupload.js"></script> 
	<script src="/backStage/js/custom.js"></script>
	<script src="/js/backStage/index.js"></script>
	<script src="/js/backStage/backCommodityManagement/backCommodityManagement.js"></script>
	<script src="/js/backStage/backCommodityManagement/backCommodityManagement_edit.js"></script>
	<!-- end: JavaScript-->

</body>
</html>
