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
	href='<c:url  value="/resources/client/css/bootstrap.min.css"/>'>
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
		<nav class="biolife-nav">
			<ul>
				<li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
				<li class="nav-item"><span class="current-page">About us</span></li>
			</ul>
		</nav>
	</div>

	<div class="page-contain about-us">

		<!-- Main content -->
		<div id="main-content" class="main-content">

			<div class="welcome-us-block">
				<div class="container">
					<h4 class="title">Welcome to Book Shop store!</h4>
					<div class="text-wraper">
						<p class="text-info">Book shop is a home bookstore system. Specializes in providing classical to modern books with a variety of genres such as contemporary literature, ancient literature, modern literature, books dedicated to scientific research, textbooks ... and there are many other genres pphuf suitable for all ages.</p>
						<p class="qt-text">"Enjoying reading means knowing how to trade in the inevitable dull hours in life for interesting hours.

– Môngtexkiơ –"</p>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- FOOTER -->
	<footer id="footer" class="footer layout-03">
		<div class="footer-content background-footer-03">
			<div class="container">
				<div class="row">
					<div
						class="col-lg-4 col-md-4 col-sm-6 md-margin-top-5px sm-margin-top-50px xs-margin-top-40px"></div>
					<div
						class="col-lg-8 col-md-8 col-sm-10 md-margin-top-5px sm-margin-top-50px xs-margin-top-40px">
						<section class="footer-item">
							<h3 class="section-title">Useful Links</h3>
							<div class="row">
								<div class="col-lg-6 col-sm-6 col-xs-6">
									<div class="wrap-custom-menu vertical-menu-2">
										<ul class="menu">
											<li><a href="#">About Us</a></li>
											<li><a href="#">About Our Shop</a></li>
											<li><a href="#">Secure Shopping</a></li>
											<li><a href="#">Delivery infomation</a></li>
											<li><a href="#">Privacy Policy</a></li>
											<li><a href="#">Our Sitemap</a></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-6 col-sm-6 col-xs-6">
									<div class="wrap-custom-menu vertical-menu-2">
										<ul class="menu">
											<li><a href="#">Who We Are</a></li>
											<li><a href="#">Our Services</a></li>
											<li><a href="#">Projects</a></li>
											<li><a href="#">Contacts Us</a></li>
											<li><a href="#">Innovation</a></li>
											<li><a href="#">Testimonials</a></li>
										</ul>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</footer>

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
			<div class="glb-item currency">
				<b class="title">Currency</b>
				<ul class="list">
					<li class="list-item"><a href="#">€ EUR (Euro)</a></li>
					<li class="list-item"><a href="#">$ USD (Dollar)</a></li>
					<li class="list-item"><a href="#">£ GBP (Pound)</a></li>
					<li class="list-item"><a href="#">¥ JPY (Yen)</a></li>
				</ul>
			</div>
			<div class="glb-item languages">
				<b class="title">Language</b>
				<ul class="list inline">
					<li class="list-item"><a href="#"><img
							src="assets/images/languages/us.jpg" alt="flag" width="24"
							height="18"></a></li>
					<li class="list-item"><a href="#"><img
							src="assets/images/languages/fr.jpg" alt="flag" width="24"
							height="18"></a></li>
					<li class="list-item"><a href="#"><img
							src="assets/images/languages/ger.jpg" alt="flag" width="24"
							height="18"></a></li>
					<li class="list-item"><a href="#"><img
							src="assets/images/languages/jap.jpg" alt="flag" width="24"
							height="18"></a></li>
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