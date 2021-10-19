<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
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

	<!-- Preloader -->
	<div id="biof-loading">
		<div class="biof-loading-center">
			<div class="biof-loading-center-absolute">
				<div class="dot dot-one"></div>
				<div class="dot dot-two"></div>
				<div class="dot dot-three"></div>
			</div>
		</div>
	</div>

	<jsp:include page="header.jsp"></jsp:include>

	<!--Hero Section-->
	<div class="hero-section hero-background">
		<h1 class="page-title">Organic Fruits</h1>
	</div>

	<!--Navigation section-->
	<div class="container">
		<nav class="biolife-nav">
			<ul>
				<li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
				<li class="nav-item"><span class="current-page">Authentication</span></li>
			</ul>
		</nav>
	</div>

	<div class="page-contain login-page">

		<!-- Main content -->
		<div id="main-content" class="main-content">
			<div class="container">

				<div class="row">

					<!--Form Sign In-->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="signin-container">
							<form action="#" name="frm-login" method="post">
								<p class="form-row">
									<label for="fid-name">Username:<span
										class="requite">*</span></label> <input type="text" id="fid-name"
										name="name" value="" class="txt-input">
								</p>
								<p class="form-row">
									<label for="fid-pass">Password:<span class="requite">*</span></label>
									<input type="password" id="fid-pass" name="password" value=""
										class="txt-input">
								</p>
								<p class="form-row">
									<label for="fid-pass">Confirmation Password:<span class="requite">*</span></label>
									<input type="password" id="fid-pass" name="configPassword" value=""
										class="txt-input">
								</p>
								<p class="form-row">
									<label for="fid-pass">Full Name:<span class="requite">*</span></label>
									<input type="text" id="fid-pass" name="name" value=""
										class="txt-input">
								</p>
								<p class="form-row">
									<label for="fid-pass">Age:<span class="requite">*</span></label>
									<input type="text" id="fid-pass" name="age" value=""
										class="txt-input">
								</p>
								<p class="form-row">
									<label for="fid-pass">Birth Day:<span class="requite">*</span></label>
									<input type="date" id="fid-pass" name="birthday" value=""
										class="txt-input">
								</p>
								<p class="form-row">
									<input type="radio" class="custom-control-input" id="male" name="male">
      								<label class="custom-control-label" for="customRadio1">Male</label>
								</p>
								<p class="form-row">
      								<input type="radio" class="custom-control-input" id="female" name="female">
      								<label class="custom-control-label" for="customRadio2">Female</label>
								</p>
								<p class="form-row wrap-btn">
									<button class="btn btn-submit btn-bold" type="submit">Submit</button>
									<a href="${checkRegister}" class="link-to-help">Sign In</a>
								</p>
							</form>
						</div>
					</div>

					<!--Go to Register form-->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="register-in-container">
							<div class="intro">
								<h4 class="box-title">New Customer?</h4>
								<p class="sub-title">Create an account with us and you’ll be
									able to:</p>
								<ul class="lis">
									<li>Check out faster</li>
									<li>Save multiple shipping anddesses</li>
									<li>Access your order history</li>
									<li>Track new orders</li>
									<li>Save items to your Wishlist</li>
								</ul>
								<a href="#" class="btn btn-bold">Create an account</a>
							</div>
						</div>
					</div>

				</div>

			</div>

		</div>

	</div>

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