<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign In</title>
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

	<!-- HEADER -->
	<header id="header" class="header-area style-01 layout-05">
		<div class="header-middle biolife-sticky-object ">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-2 col-md-6 col-xs-6">
						<a href="home-05.html" class="biolife-logo"><img
							src="assets/images/logo-biolife-5.png" alt="biolife logo"
							width="135" height="36"></a>
					</div>
					<div class="col-lg-6 col-md-7 hidden-sm hidden-xs">
						<div class="primary-menu">
							<ul class="menu biolife-menu clone-main-menu clone-primary-menu"
								id="primary-menu" data-menuname="main menu">
								<li class="menu-item"><a href="#">Home</a></li>
								<li class="menu-item"><a href="#" class="menu-name"
									data-title="Product">Product</a></li>
								<li class="menu-item menu-item-has-children has-megamenu">
									<a href="#" class="menu-name" data-title="Blog">Blog</a>
									<div class="wrap-megamenu lg-width-650 md-width-600">
										<div class="mega-content">
											<div class="col-lg-6 col-md-6 col-xs-12">
												<div class="wrap-custom-menu vertical-menu">
													<h4 class="menu-title">Blog Categories</h4>
													<ul class="menu">
														<li><a href="#">Beauty (30)</a></li>
														<li><a href="#">Fashion (50)</a></li>
														<li><a href="#">Food (10)</a></li>
													</ul>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-xs-12">
												<div class="wrap-custom-menu vertical-menu">
													<h4 class="menu-title">Featured Posts</h4>
													<ul class="menu">
														<li><a href="#">Post example<sup>#1</sup></a></li>
														<li><a href="#">Post example<sup>#2</sup></a></li>
														<li><a href="#">Post example<sup>#3</sup></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="menu-item"><a href="contact.html">Contact</a></li>
								<li class="menu-item"><a href="about-us.html">About</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-md-6 col-xs-6">
						<div class="biolife-cart-info">
							<div class="mobile-search">
								<a href="javascript:void(0)" class="open-searchbox"><i
									class="biolife-icon icon-search"></i></a>
								<div class="mobile-search-content">
									<form action="#" class="form-search" name="mobile-seacrh"
										method="get">
										<a href="#" class="btn-close"><span
											class="biolife-icon icon-close-menu"></span></a> <input
											type="text" name="s" class="input-text" value=""
											placeholder="Search here..."> <select name="category">
											<option value="-1" selected>All Categories</option>
											<option value="vegetables">Vegetables</option>
											<option value="fresh_berries">Fresh Berries</option>
											<option value="ocean_foods">Ocean Foods</option>
											<option value="butter_eggs">Butter & Eggs</option>
											<option value="fastfood">Fastfood</option>
											<option value="fresh_meat">Fresh Meat</option>
											<option value="fresh_onion">Fresh Onion</option>
											<option value="papaya_crisps">Papaya & Crisps</option>
											<option value="oatmeal">Oatmeal</option>
										</select>
										<button type="submit" class="btn-submit">go</button>
									</form>
								</div>
							</div>
							<div class="minicart-block">
								<div class="minicart-contain">
									<a href="javascript:void(0)" class="link-to"> <span
										class="icon-qty-combine"> <i
											class="icon-cart-mini biolife-icon"></i> <span class="qty">0</span>
									</span> <span class="title">My Cart -</span> <span class="sub-total">$0.00</span>
									</a>
									<div class="cart-content">
										<div class="cart-inner">
											<ul class="products">
												<li>
													<div class="minicart-item">
														<div class="thumb">
															<a href="#"><img
																src="assets/images/minicart/pr-01.jpg" width="90"
																height="90" alt="National Fresh"></a>
														</div>
														<div class="left-info">
															<div class="product-title">
																<a href="#" class="product-name">National Fresh
																	Fruit</a>
															</div>
															<div class="price">
																<ins>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>85.00</span>
																</ins>
																<del>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>95.00</span>
																</del>
															</div>
															<div class="qty">
																<label for="cart[id123][qty]">Qty:</label> <input
																	type="number" class="input-qty" name="cart[id123][qty]"
																	id="cart[id123][qty]" value="1" disabled>
															</div>
														</div>
														<div class="action">
															<a href="#" class="edit"><i class="fa fa-pencil"
																aria-hidden="true"></i></a> <a href="#" class="remove"><i
																class="fa fa-trash-o" aria-hidden="true"></i></a>
														</div>
													</div>
												</li>
												<li>
													<div class="minicart-item">
														<div class="thumb">
															<a href="#"><img
																src="assets/images/minicart/pr-02.jpg" width="90"
																height="90" alt="National Fresh"></a>
														</div>
														<div class="left-info">
															<div class="product-title">
																<a href="#" class="product-name">National Fresh
																	Fruit</a>
															</div>
															<div class="price">
																<ins>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>85.00</span>
																</ins>
																<del>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>95.00</span>
																</del>
															</div>
															<div class="qty">
																<label for="cart[id124][qty]">Qty:</label> <input
																	type="number" class="input-qty" name="cart[id124][qty]"
																	id="cart[id124][qty]" value="1" disabled>
															</div>
														</div>
														<div class="action">
															<a href="#" class="edit"><i class="fa fa-pencil"
																aria-hidden="true"></i></a> <a href="#" class="remove"><i
																class="fa fa-trash-o" aria-hidden="true"></i></a>
														</div>
													</div>
												</li>
												<li>
													<div class="minicart-item">
														<div class="thumb">
															<a href="#"><img
																src="assets/images/minicart/pr-03.jpg" width="90"
																height="90" alt="National Fresh"></a>
														</div>
														<div class="left-info">
															<div class="product-title">
																<a href="#" class="product-name">National Fresh
																	Fruit</a>
															</div>
															<div class="price">
																<ins>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>85.00</span>
																</ins>
																<del>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>95.00</span>
																</del>
															</div>
															<div class="qty">
																<label for="cart[id125][qty]">Qty:</label> <input
																	type="number" class="input-qty" name="cart[id125][qty]"
																	id="cart[id125][qty]" value="1" disabled>
															</div>
														</div>
														<div class="action">
															<a href="#" class="edit"><i class="fa fa-pencil"
																aria-hidden="true"></i></a> <a href="#" class="remove"><i
																class="fa fa-trash-o" aria-hidden="true"></i></a>
														</div>
													</div>
												</li>
												<li>
													<div class="minicart-item">
														<div class="thumb">
															<a href="#"><img
																src="assets/images/minicart/pr-04.jpg" width="90"
																height="90" alt="National Fresh"></a>
														</div>
														<div class="left-info">
															<div class="product-title">
																<a href="#" class="product-name">National Fresh
																	Fruit</a>
															</div>
															<div class="price">
																<ins>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>85.00</span>
																</ins>
																<del>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>95.00</span>
																</del>
															</div>
															<div class="qty">
																<label for="cart[id126][qty]">Qty:</label> <input
																	type="number" class="input-qty" name="cart[id126][qty]"
																	id="cart[id126][qty]" value="1" disabled>
															</div>
														</div>
														<div class="action">
															<a href="#" class="edit"><i class="fa fa-pencil"
																aria-hidden="true"></i></a> <a href="#" class="remove"><i
																class="fa fa-trash-o" aria-hidden="true"></i></a>
														</div>
													</div>
												</li>
												<li>
													<div class="minicart-item">
														<div class="thumb">
															<a href="#"><img
																src="assets/images/minicart/pr-05.jpg" width="90"
																height="90" alt="National Fresh"></a>
														</div>
														<div class="left-info">
															<div class="product-title">
																<a href="#" class="product-name">National Fresh
																	Fruit</a>
															</div>
															<div class="price">
																<ins>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>85.00</span>
																</ins>
																<del>
																	<span class="price-amount"><span
																		class="currencySymbol">£</span>95.00</span>
																</del>
															</div>
															<div class="qty">
																<label for="cart[id127][qty]">Qty:</label> <input
																	type="number" class="input-qty" name="cart[id127][qty]"
																	id="cart[id127][qty]" value="1" disabled>
															</div>
														</div>
														<div class="action">
															<a href="#" class="edit"><i class="fa fa-pencil"
																aria-hidden="true"></i></a> <a href="#" class="remove"><i
																class="fa fa-trash-o" aria-hidden="true"></i></a>
														</div>
													</div>
												</li>
											</ul>
											<p class="btn-control">
												<a href="#" class="btn view-cart">view cart</a> <a href="#"
													class="btn">checkout</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="mobile-menu-toggle">
								<a class="btn-toggle" data-object="open-mobile-menu"
									href="javascript:void(0)"> <span></span> <span></span> <span></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

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
									<label for="fid-name">Email Address:<span
										class="requite">*</span></label> <input type="text" id="fid-name"
										name="name" value="" class="txt-input">
								</p>
								<p class="form-row">
									<label for="fid-pass">Password:<span class="requite">*</span></label>
									<input type="password" id="fid-pass" name="email" value=""
										class="txt-input">
								</p>
								<p class="form-row wrap-btn">
									<button class="btn btn-submit btn-bold" type="submit">sign
										in</button>
									<a href="#" class="link-to-help">Forgot your password</a>
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