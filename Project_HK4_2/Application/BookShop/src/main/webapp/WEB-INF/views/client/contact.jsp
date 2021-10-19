<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Biolife - Organic Food</title>
<link
	href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap"
	rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href='<c:url  value="/resources/client/images/favicon.png"/>' />
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/bootstrap.min.css"/>'">
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/animate.min.css"/>'>
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/font-awesome.min.css"/>'>
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/nice-select.css"/>'>
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/slick.min.css"/>'>
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/style.css"/>'>
<link rel="stylesheet"
	href='<c:url  value="/resources/client/css/main-color05.css"/>'>
</head>
<body class="biolife-body">
<jsp:include page="header.jsp"></jsp:include>
	<!--Hero Section-->
	<div class="hero-section hero-background">
		<h1 class="page-title">Book Shop Online</h1>
	</div>

	<!--Navigation section-->
	<div class="container">
		<nav class="biolife-nav nav-86px">
			<ul>
				<li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
				<li class="nav-item"><span class="current-page">Contact</span></li>
			</ul>
		</nav>
	</div>

	<div class="page-contain contact-us">

		<!-- Main content -->
		<div id="main-content" class="main-content">
			<div class="container">

				<div class="row">

					<!--Contact info-->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div
							class="contact-info-container sm-margin-top-27px xs-margin-bottom-60px xs-margin-top-60px">
							<h4 class="box-title">Our Contact</h4>
							<p class="frst-desc">Come to our Book Shop. You will enjoy a whole new world of books,
							 literary works and novels from ancient times to modernity.</p>
							<ul class="addr-info">
								<li>
									<div class="if-item">
										<b class="tie">Addess:</b>
										<p class="dsc">
											No. 1 Ly Tu Trong Street, Ninh Kieu District, Can Tho City
										</p>
									</div>
								</li>
								<li>
									<div class="if-item">
										<b class="tie">Phone:</b>
										<p class="dsc">(+84)9892820</p>
									</div>
								</li>
								<li>
									<div class="if-item">
										<b class="tie">Email:</b>
										<p class="dsc">bookshoponline@gmail.com</p>
									</div>
								</li>
								<li>
									<div class="if-item">
										<b class="tie">Store Open:</b>
										<p class="dsc">7am - 10pm, Mon - Sat</p>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<!--Contact form-->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="contact-form-container sm-margin-top-112px">
							<form action="#" name="frm-contact">
								<p class="form-row">
									<input type="text" name="name" value="" placeholder="Your Name"
										class="txt-input">
								</p>
								<p class="form-row">
									<input type="email" name="email" value=""
										placeholder="Email Address" class="txt-input">
								</p>
								<p class="form-row">
									<input type="tel" name="phone" value=""
										placeholder="Phone Number" class="txt-input">
								</p>
								<p class="form-row">
									<textarea name="mes" id="mes-1" cols="30" rows="9"
										placeholder="Leave Message"></textarea>
								</p>
								<p class="form-row">
									<button class="btn btn-submit" type="submit">send
										message</button>
								</p>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!--Footer For Mobile-->
	<div class="mobile-footer">
		<div class="mobile-footer-inner">
			<div class="mobile-block block-menu-main">
				<a class="menu-bar menu-toggle btn-toggle"
					data-object="open-mobile-menu" href="javascript:void(0)"> <span
					class="fa fa-bars"></span> <span class="text">Menu</span>
				</a>
			</div>
			<div class="mobile-block block-sidebar">
				<a class="menu-bar filter-toggle btn-toggle"
					data-object="open-mobile-filter" href="javascript:void(0)"> <i
					class="fa fa-sliders" aria-hidden="true"></i> <span class="text">Sidebar</span>
				</a>
			</div>
			<div class="mobile-block block-minicart">
				<a class="link-to-cart" href="#"> <span
					class="fa fa-shopping-bag" aria-hidden="true"></span> <span
					class="text">Cart</span>
				</a>
			</div>
			<div class="mobile-block block-global">
				<a class="menu-bar myaccount-toggle btn-toggle"
					data-object="global-panel-opened" href="javascript:void(0)"> <span
					class="fa fa-globe"></span> <span class="text">Global</span>
				</a>
			</div>
		</div>
	</div>

	<div class="mobile-block-global">
		<div class="biolife-mobile-panels">
			<span class="biolife-current-panel-title">Global</span> <a
				class="biolife-close-btn" data-object="global-panel-opened" href="#">&times;</a>
		</div>
		<div class="block-global-contain">
			<div class="glb-item my-account">
				<b class="title">My Account</b>
				<ul class="list">
					<li class="list-item"><a href="#">Login/register</a></li>
					<li class="list-item"><a href="#">Wishlist <span
							class="index">(8)</span></a></li>
					<li class="list-item"><a href="#">Checkout</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Scroll Top Button -->
	<a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

	<script src='<c:url value="/resources/client/js/jquery-3.4.1.min.js"/>'></script>
	<script src='<c:url value="/resources/client/js/bootstrap.min.js"/>'></script>
	<script
		src='<c:url value="/resources/client/js/jquery.countdown.min.js"/>'></script>
	<script
		src='<c:url value="/resources/client/js/jquery.nice-select.min.js"/>'></script>
	<script
		src='<c:url value="/resources/client/js/jquery.nicescroll.min.js"/>'></script>
	<script src='<c:url value="/resources/client/js/slick.min.js"/>'></script>
	<script
		src='<c:url value="/resources/client/js/biolife.framework.js"/>'></script>
	<script src='<c:url value="/resources/client/js/functions.js"/>'></script>
</body>

</html>