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
				<li class="nav-item"><span class="current-page">ShoppingCart</span></li>
			</ul>
		</nav>
	</div>

	<div class="page-contain shopping-cart">

		<!-- Main content -->
		<div id="main-content" class="main-content">
			<div class="container">

				<!--Top banner-->
				<div
					class="top-banner background-top-banner-for-shopping min-height-346px">
					<h3 class="title">Save $50!*</h3>
					<p class="subtitle">Save $50 when you open an account online &
						spen $50 on your first online purchase to day</p>
					<ul class="list">
						<li>
							<div class="price-less">
								<span class="desc">Purchase amount</span> <span class="cost">$0.00</span>
							</div>
						</li>
						<li>
							<div class="price-less">
								<span class="desc">Credit on billing statement</span> <span
									class="cost">$0.00</span>
							</div>
						</li>
						<li>
							<div class="price-less sum">
								<span class="desc">Cost affter statemen credit</span> <span
									class="cost">$0.00</span>
							</div>
						</li>
					</ul>
					<p class="btns">
						<a href="#" class="btn">Open Account</a> <a href="#" class="btn">Learn
							more</a>
					</p>
				</div>

				<!--Cart Table-->
				<div class="shopping-cart-container">
					<div class="row">
						<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
							<h3 class="box-title">Your cart items</h3>
							<form class="shopping-cart-form" action="#" method="post">
								<table class="shop_table cart-form">
									<thead>
										<tr>
											<th class="product-name">Product Name</th>
											<th class="product-price">Price</th>
											<th class="product-quantity">Quantity</th>
											<th class="product-subtotal">Total</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="value" items="${cart}">

											<tr class="cart_item">
												<td class="product-thumbnail" data-title="Product Name">
													<a class="prd-thumb" href="#">
														<figure>
															<img width="113" height="113"
																src="assets/images/shippingcart/pr-02.jpg"
																alt="shipping cart">
														</figure>
												</a> <a class="prd-name" href="#">${value.getName()}</a>
													<div class="action">
														<a href="#" class="edit"><i class="fa fa-pencil"
															aria-hidden="true"></i></a> <a href="#" class="remove"><i
															class="fa fa-trash-o" aria-hidden="true"></i></a>
													</div>
												</td>
												<td class="product-price" data-title="Price">
													<div class="price price-contain">
														<ins>
															<span class="price-amount"><span
																class="currencySymbol"></span>${value.getPrice()}</span>
														</ins>
													</div>
												</td>
												<td class="product-quantity" data-title="Quantity">
													<div class="quantity-box type1">
														<div class="qty-input">
															<input type="text" name="qty12554" value="${value.getNumber()}"
																data-max_value="20" data-min_value="1" data-step="1">
															<a href="#" class="qty-btn btn-up"><i
																class="fa fa-caret-up" aria-hidden="true"></i></a> <a
																href="#" class="qty-btn btn-down"><i
																class="fa fa-caret-down" aria-hidden="true"></i></a>
														</div>
													</div>
												</td>
												<td class="product-subtotal" data-title="Total">
													<div class="price price-contain">
														<ins>
															<span class="price-amount"><span
																class="currencySymbol"></span>${value.getTotal()}</span>
														</ins>
													</div>
												</td>
											</tr>
											<tr class="cart_item wrap-buttons">
												<td class="wrap-btn-control" colspan="4"><a
													class="btn back-to-shop">Back to Shop</a>
													<button class="btn btn-update" type="submit" disabled>update</button>
													<button class="btn btn-clear" type="reset">clear
														all</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</form>
						</div>
						<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
							<div class="shpcart-subtotal-block">
								<div class="subtotal-line">
									<b class="stt-name">Subtotal <span class="sub">(2ittems)</span></b>
									<span class="stt-price">£170.00</span>
								</div>
								<div class="tax-fee">
									<p class="title">Est. Taxes & Fees</p>
									<p class="desc">Based on 56789</p>
								</div>
								<div class="btn-checkout">
									<a href="#" class="btn checkout">Check out</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!--Related Product-->
				<!-- <div class="product-related-box single-layout">
					<div class="biolife-title-box lg-margin-bottom-26px-im">
						<span class="biolife-icon icon-organic"></span> <span
							class="subtitle">All the best item for You</span>
						<h3 class="main-title">Related Products</h3>
					</div>
					<ul
						class="products-list biolife-carousel nav-center-02 nav-none-on-mobile"
						data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":0,"slidesToShow":5, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":10}}]}'>
						<li class="product-item">
							<div class="contain-product layout-default">
								<div class="product-thumb">
									<a href="#" class="link-to-product"> <img
										src="assets/images/products/p-10.jpg" alt="dd" width="270"
										height="270" class="product-thumnail">
									</a>
								</div>
								<div class="info">
									<b class="categories">Fresh Fruit</b>
									<h4 class="product-title">
										<a href="#" class="pr-name">National Fresh Fruit</a>
									</h4>
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
									<div class="slide-down-box">
										<p class="message">All products are carefully selected to
											ensure food safety.</p>
										<div class="buttons">
											<a href="#" class="btn wishlist-btn"><i
												class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
												class="btn add-to-cart-btn"><i
												class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to
												cart</a> <a href="#" class="btn compare-btn"><i
												class="fa fa-random" aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="product-item">
							<div class="contain-product layout-default">
								<div class="product-thumb">
									<a href="#" class="link-to-product"> <img
										src="assets/images/products/p-08.jpg" alt="dd" width="270"
										height="270" class="product-thumnail">
									</a>
								</div>
								<div class="info">
									<b class="categories">Fresh Fruit</b>
									<h4 class="product-title">
										<a href="#" class="pr-name">National Fresh Fruit</a>
									</h4>
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
									<div class="slide-down-box">
										<p class="message">All products are carefully selected to
											ensure food safety.</p>
										<div class="buttons">
											<a href="#" class="btn wishlist-btn"><i
												class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
												class="btn add-to-cart-btn"><i
												class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to
												cart</a> <a href="#" class="btn compare-btn"><i
												class="fa fa-random" aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div> -->

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