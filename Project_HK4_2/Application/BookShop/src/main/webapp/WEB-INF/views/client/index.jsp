<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Biolife Home 05</title>
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
	<c:url var="product" value="/product" />
</head>
<body class="biolife-body">

	<jsp:include page="header.jsp"></jsp:include>
	<!-- Page Contain -->
	<div class="page-contain">

		<!-- Main content -->
		<div id="main-content" class="main-content">

			<div class="container">

				<div class="row z-index-20">

					<div class="col-lg-3 hidden-md hidden-sm hidden-xs">

						<!--Block 01: Vertical Menu-->
						<div
							class="biolife-vertical-menu height-auto none-box-shadow md-margin-bottom-46 xs-margin-bottom-80px">
							<div class="vertical-menu vertical-category-block always ">
								<div class="block-title black-color">
									<span class="menu-icon"> <span class="line-1"></span> <span
										class="line-2"></span> <span class="line-3"></span>
									</span> <span class="menu-title">All departments</span> <span
										class="angle" data-tgleclass="fa fa-caret-down"><i
										class="fa fa-caret-up" aria-hidden="true"></i></span>
								</div>
								<div class="wrap-menu">
									<ul class="menu clone-main-menu" id="vertical-menu-365">
										<c:forEach var="list" items="${listCategory}">
										<li class="menu-item"><a href="${product}"
											class="menu-title"><i class="biolife-icon icon-fast-food"></i>${list.name}</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>

						<!--Block 04: Banners 01-->
					</div>

					<div class="col-lg-9 col-xs-12">

						<!--Block 08: Slide And Deal-->
						<div class="row">

							<div class="col-md-8 col-sm-7 col-xs-12">
								<div class="main-slide block-slider nav-change type02">
									<ul class="biolife-carousel"
										data-slick='{"arrows": true, "dots": false, "slidesMargin": 0, "slidesToShow": 1, "infinite": true, "speed": 800}'>
										<li>
											<div class="slide-contain slider-opt05">
												<div class="media"></div>
												<div class="text-content">
													<i class="first-line">Summer 2021</i>
													<p class="third-line">Happy new school year</p>
													<p class="buttons">
														<a href="${product}" class="btn btn-bold">Shop now</a>
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="slide-contain slider-opt05">
												<div class="media">
													<div class="img-moving">
														<img src="assets/images/home-05/main-slide-child-01.png"
															width="374" height="372" alt="">
													</div>
												</div>
												<div class="text-content">
													<i class="first-line">Summer 2019</i>
													<p class="third-line">Happy new school year</p>
													<p class="buttons">
														<a href="${product}" class="btn btn-bold">Shop now</a>
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="slide-contain slider-opt05">
												<div class="media">
													<div class="img-moving">
														<img src="assets/images/home-05/main-slide-child-01.png"
															width="374" height="372" alt="">
													</div>
												</div>
												<div class="text-content">
													<i class="first-line">Summer 2019</i>
													<p class="third-line">Happy new school year</p>
													<p class="buttons">
														<a href="${product}" class="btn btn-bold">Shop now</a>
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="slide-contain slider-opt05">
												<div class="media">
													<div class="img-moving">
														<img src="assets/images/home-05/main-slide-child-01.png"
															width="374" height="372" alt="">
													</div>
												</div>
												<div class="text-content">
													<i class="first-line">Summer 2019</i>
													<p class="third-line">Happy new school year</p>
													<p class="buttons">
														<a href="${product}" class="btn btn-bold">Shop now</a>
													</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>

							<div
								class="col-md-4 col-sm-5 col-xs-12 sm-margin-top-0 xs-margin-top-80px">
								<div
									class="advance-product-box countdown advance-product-box_countdown">
									<div
										class="biolife-title-box in-countdown biolife-title-box_in-countdown">
										<h3 class="title">Deals Of The Days</h3>
									</div>
									<ul
										class="products-list biolife-carousel default-product-style nav-center-03 nav-none-on-mobile"
										data-slick='{"arrows": true, "dots": false, "slidesMargin": 0, "slidesToShow": 1, "infinite": true, "speed": 800, "responsive":[{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":5 }}, {"breakpoint":500, "settings":{ "slidesToShow": 1}}]}'>
										<li class="product-item">
											<div class="contain-product">
												<div class="product-thumb">
													<a href="#" class="link-to-product" tabindex="-1"> <img
														src="resources/uploads/book/activate.jpg" alt="Vegetables"
														width="270" height="270" class="product-thumnail">
													</a>
													<div class="labels">
														<span class="sale-label">-50%</span>
													</div>
												</div>
												<div class="info">
													<b class="categories">Book</b>
													<h4 class="product-title">
														<a href="#" class="pr-name" tabindex="-1">Activate!!</a>
													</h4>
													<div class="price ">
														<ins>
															<span class="price-amount"><span
																class="currencySymbol">$</span>20.00</span>
														</ins>
														<del>
															<span class="price-amount"><span
																class="currencySymbol">$</span>35.00</span>
														</del>
													</div>
													<div class="biolife-countdown"
														data-datetime="2020-01-18 00:00 +00:00"></div>
												</div>
											</div>
										</li>
										<li class="product-item">
											<div class="contain-product">
												<div class="product-thumb">
													<a href="#" class="link-to-product" tabindex="-1"> <img
														src=resources/uploads/book/5.jpg " alt="Vegetables"
														width="270" height="270" class="product-thumnail">
													</a>
													<div class="labels">
														<span class="sale-label">-50%</span>
													</div>
												</div>
												<div class="info">
													<b class="categories">Book</b>
													<h4 class="product-title">
														<a href="#" class="pr-name" tabindex="-1">Di Truyen
															Hoc</a>
													</h4>
													<div class="price ">
														<ins>
															<span class="price-amount"><span
																class="currencySymbol">£</span>85.00</span>
														</ins>
														<del>
															<span class="price-amount"><span
																class="currencySymbol">£</span>95.00</span>
														</del>
													</div>
													<div class="biolife-countdown"
														data-datetime="2020-01-18 00:00 +00:00"></div>
												</div>
											</div>
										</li>
										<li class="product-item">
											<div class="contain-product">
												<div class="product-thumb">
													<a href="#" class="link-to-product" tabindex="-1"> <img
														src="resources/uploads/book/20.jpg" alt="Vegetables"
														width="270" height="270" class="product-thumnail">
													</a>
													<div class="labels">
														<span class="sale-label">-50%</span>
													</div>
												</div>
												<div class="info">
													<b class="categories">Vegetables</b>
													<h4 class="product-title">
														<a href="#" class="pr-name" tabindex="-1">National
															Fresh Fruit</a>
													</h4>
													<div class="price ">
														<ins>
															<span class="price-amount"><span
																class="currencySymbol">£</span>85.00</span>
														</ins>
														<del>
															<span class="price-amount"><span
																class="currencySymbol">£</span>95.00</span>
														</del>
													</div>
													<div class="biolife-countdown"
														data-datetime="2020-01-18 00:00 +00:00"></div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>

						</div>

						<!--Block 09: Banners-->
						<div class="banner-block sm-margin-top-30px xs-margin-top-80px">
							<ul class="biolife-carousel nav-center-03 nav-none-on-mobile"
								data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":2, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 2}}, {"breakpoint":768, "settings":{ "slidesMargin":15 }}, {"breakpoint":500, "settings":{ "slidesToShow": 1}}]}'>
								<li>
									<div class="biolife-banner style-13 biolife-banner__style-13">
										<div class="banner-contain">
											<div class="media">
												<a href="#" class="bn-link"><img
													src="resources/uploads/book/17.jpg" width="205"
													height="210" alt=""></a>
											</div>
											<div class="text-content">
												<span class="text1"></span> <b class="text2">Di Truyền
													Học</b>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="biolife-banner style-13 biolife-banner__style-14">
										<div class="banner-contain">
											<div class="media">
												<a href="#" class="bn-link"><img
													src="resources/uploads/book/19.jpg" width="254"
													height="205" alt=""></a>
											</div>
											<div class="text-content">
												<span class="text1"></span> <b class="text2"></b> <span
													class="text3">Từ Ý Tưởng Đến Công Bố</span>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="biolife-banner style-13 biolife-banner__style-13">
										<div class="banner-contain">
											<div class="media">
												<a href="#" class="bn-link"><img
													src="resources/uploads/book/18.jpg" width="205"
													height="210" alt=""></a>
											</div>
											<div class="text-content">
												<span class="text1"></span> <b class="text2">Tri Thức về
													Vạn Vật</b>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="biolife-banner style-13 biolife-banner__style-14">
										<div class="banner-contain">
											<div class="media">
												<a href="#" class="bn-link"><img
													src="resources/uploads/book/1.jpg" width="254" height="205"
													alt=""></a>
											</div>
											<div class="text-content">
												<span class="text1"></span> <b class="text2"> </b> <span
													class="text3">Nhà Tiên Tri Vanga</span>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>

						<!--Block 10: Product Tab-->
						<div
							class="product-tab z-index-20 sm-margin-top-59px xs-margin-top-80px">
							<div class="biolife-title-box slim-item">
								<span class="subtitle">All the best item for You</span>
								<h3 class="main-title">Our Products</h3>
							</div>
							<div class="biolife-tab biolife-tab-contain sm-margin-top-23px">
								<div class="tab-head tab-head__sample-layout bg-tab-v5">
									<ul class="tabs">
										<li class="tab-element active"><a href="#tab01_1st"
											class="tab-link">Featured</a></li>
									</ul>
								</div>
								<div class="tab-content">
									<div id="tab01_1st" class="tab-contain active">
										<ul
											class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
											data-slick='{"rows":1 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":3, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20 }},{"breakpoint":768, "settings":{ "slidesToShow": 2,"rows":2, "slidesMargin":15}}]}'>
											<c:forEach var="list" items="${list}">
												<li class="product-item">
													<div class="contain-product layout-default">
														<div class="product-thumb">
															<a href="${product}/${list.bookId}" class="link-to-product"> <img
																src="resources/uploads/book/${list.image}" alt="Vegetables"
																width="270" height="270" class="product-thumnail">
															</a> <a class="lookup btn_call_quickview" href="#"></a>
														</div>
														<div class="info">
														<!-- 	<b class="categories">Vegetables</b> -->
															<h4 class="product-title">
																<a href="#" class="pr-name">${list.name}</a>
															</h4>
															<div class="price ">
																<ins>
																	<span class="price-amount"><span
																		class="currencySymbol">$</span>${list.price}</span>
																</ins>
																
															</div>
															
														</div>
													</div>
												</li>

											</c:forEach>

										</ul>
									</div>
									<div id="tab01_3rd" class="tab-contain ">
										<ul
											class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain"
											data-slick='{"rows":1 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":3, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20}},{"breakpoint":768, "settings":{ "slidesToShow": 2,"rows":2,"slidesMargin":15}}]}'>
											<li class="product-item">
												<div class="contain-product layout-default">
													<div class="product-thumb">
														<a href="#" class="link-to-product"> <img
															src="assets/images/products/p-05.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Organic Hass Avocado,
																Large</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-02.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Hot Chili Peppers
																Magnetic Salt</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-01.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Organic Hass Avocado</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-06.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Packham's Pears</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-07.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">13 Healing Powers of
																Lemons</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-18.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">National Fresh Fruit</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-20.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">National Fresh Fruit</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-22.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Cherry Tomato Seeds</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-19.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Pumpkins Fairytale</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
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
															src="assets/images/products/p-03.jpg" alt="Vegetables"
															width="270" height="270" class="product-thumnail">
														</a> <a class="lookup btn_call_quickview" href="#"><i
															class="biolife-icon icon-search"></i></a>
													</div>
													<div class="info">
														<b class="categories">Vegetables</b>
														<h4 class="product-title">
															<a href="#" class="pr-name">Passover Cauliflower
																Kugel</a>
														</h4>
														<div class="price ">
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
															<p class="message">All products are carefully
																selected to ensure food safety.</p>
															<div class="buttons">
																<a href="#" class="btn wishlist-btn"><i
																	class="fa fa-heart" aria-hidden="true"></i></a> <a href="#"
																	class="btn add-to-cart-btn"><i
																	class="fa fa-cart-arrow-down" aria-hidden="true"></i>add
																	to cart</a> <a href="#" class="btn compare-btn"><i
																	class="fa fa-random" aria-hidden="true"></i></a>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<jsp:include page="footer.jsp"></jsp:include>
						<div class="mobile-block-global">
							<div class="biolife-mobile-panels">
								<span class="biolife-current-panel-title">Global</span> <a
									class="biolife-close-btn" data-object="global-panel-opened"
									href="#">&times;</a>
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

						<!--Quickview Popup-->
						<div id="biolife-quickview-block" class="biolife-quickview-block">
							<div class="quickview-container">
								<a href="#" class="btn-close-quickview"
									data-object="open-quickview-block"><span
									class="biolife-icon icon-close-menu"></span></a>
								<div class="biolife-quickview-inner">
									<div class="media">
										<ul class="biolife-carousel quickview-for"
											data-slick='{"arrows":false,"dots":false,"slidesMargin":30,"slidesToShow":1,"slidesToScroll":1,"fade":true,"asNavFor":".quickview-nav"}'>
											<li><img
												src="assets/images/details-product/detail_01.jpg" alt=""
												width="500" height="500"></li>
											<li><img
												src="assets/images/details-product/detail_02.jpg" alt=""
												width="500" height="500"></li>
											<li><img
												src="assets/images/details-product/detail_03.jpg" alt=""
												width="500" height="500"></li>
											<li><img
												src="assets/images/details-product/detail_04.jpg" alt=""
												width="500" height="500"></li>
											<li><img
												src="assets/images/details-product/detail_05.jpg" alt=""
												width="500" height="500"></li>
											<li><img
												src="assets/images/details-product/detail_06.jpg" alt=""
												width="500" height="500"></li>
											<li><img
												src="assets/images/details-product/detail_07.jpg" alt=""
												width="500" height="500"></li>
										</ul>
										<ul class="biolife-carousel quickview-nav"
											data-slick='{"arrows":true,"dots":false,"centerMode":false,"focusOnSelect":true,"slidesMargin":10,"slidesToShow":3,"slidesToScroll":1,"asNavFor":".quickview-for"}'>
											<li><img
												src="assets/images/details-product/thumb_01.jpg" alt=""
												width="88" height="88"></li>
											<li><img
												src="assets/images/details-product/thumb_02.jpg" alt=""
												width="88" height="88"></li>
											<li><img
												src="assets/images/details-product/thumb_03.jpg" alt=""
												width="88" height="88"></li>
											<li><img
												src="assets/images/details-product/thumb_04.jpg" alt=""
												width="88" height="88"></li>
											<li><img
												src="assets/images/details-product/thumb_05.jpg" alt=""
												width="88" height="88"></li>
											<li><img
												src="assets/images/details-product/thumb_06.jpg" alt=""
												width="88" height="88"></li>
											<li><img
												src="assets/images/details-product/thumb_07.jpg" alt=""
												width="88" height="88"></li>
										</ul>
									</div>
									<div class="product-attribute">
										<h4 class="title">
											<a href="#" class="pr-name">National Fresh Fruit</a>
										</h4>
										<div class="rating">
											<p class="star-rating">
												<span class="width-80percent"></span>
											</p>
										</div>

										<div class="price price-contain">
											<ins>
												<span class="price-amount"><span
													class="currencySymbol">£</span>85.00</span>
											</ins>
											<del>
												<span class="price-amount"><span
													class="currencySymbol">£</span>95.00</span>
											</del>
										</div>
										<p class="excerpt">Lorem ipsum dolor sit amet, consectetur
											adipiscing elit. Mauris vel maximus lacus. Duis ut mauris
											eget justo dictum tempus sed vel tellus.</p>
										<div class="from-cart">
											<div class="qty-input">
												<input type="text" name="qty12554" value="1"
													data-max_value="20" data-min_value="1" data-step="1">
												<a href="#" class="qty-btn btn-up"><i
													class="fa fa-caret-up" aria-hidden="true"></i></a> <a href="#"
													class="qty-btn btn-down"><i class="fa fa-caret-down"
													aria-hidden="true"></i></a>
											</div>
											<div class="buttons">
												<a href="#" class="btn add-to-cart-btn btn-bold">add to
													cart</a>
											</div>
										</div>

										<div class="product-meta">
											<div class="product-atts">
												<div class="product-atts-item">
													<b class="meta-title">Categories:</b>
													<ul class="meta-list">
														<li><a href="#" class="meta-link">Milk & Cream</a></li>
														<li><a href="#" class="meta-link">Fresh Meat</a></li>
														<li><a href="#" class="meta-link">Fresh Fruit</a></li>
													</ul>
												</div>
												<div class="product-atts-item">
													<b class="meta-title">Tags:</b>
													<ul class="meta-list">
														<li><a href="#" class="meta-link">food theme</a></li>
														<li><a href="#" class="meta-link">organic food</a></li>
														<li><a href="#" class="meta-link">organic theme</a></li>
													</ul>
												</div>
												<div class="product-atts-item">
													<b class="meta-title">Brand:</b>
													<ul class="meta-list">
														<li><a href="#" class="meta-link">Fresh Fruit</a></li>
													</ul>
												</div>
											</div>
											<span class="sku">SKU: N/A</span>
											<div class="biolife-social inline add-title">
												<span class="fr-title">Share:</span>
												<ul class="socials">
													<li><a href="#" title="twitter" class="socail-btn"><i
															class="fa fa-twitter" aria-hidden="true"></i></a></li>
													<li><a href="#" title="facebook" class="socail-btn"><i
															class="fa fa-facebook" aria-hidden="true"></i></a></li>
													<li><a href="#" title="pinterest" class="socail-btn"><i
															class="fa fa-pinterest" aria-hidden="true"></i></a></li>
													<li><a href="#" title="youtube" class="socail-btn"><i
															class="fa fa-youtube" aria-hidden="true"></i></a></li>
													<li><a href="#" title="instagram" class="socail-btn"><i
															class="fa fa-instagram" aria-hidden="true"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Scroll Top Button -->
			<a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

		</div>
	</div>


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