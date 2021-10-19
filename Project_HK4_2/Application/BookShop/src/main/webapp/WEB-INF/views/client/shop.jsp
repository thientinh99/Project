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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous"></script>
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
	<!--Hero Section-->
	<div class="hero-section hero-background">
		<h1 class="page-title">Book Shop</h1>
	</div>

	<!--Navigation section-->
	<div class="container">
		<nav class="biolife-nav">
			<ul>
				<li class="nav-item"><a href="index-2.html" class="permal-link">Home</a></li>
				<%-- <li class="nav-item"><span class="current-page">${list.name}</span></li> --%>
			</ul>
		</nav>
	</div>
	<div class="page-contain category-page no-sidebar">
		<div class="container">
			<div class="row">

				<!-- Main content -->
				<div id="main-content"
					class="main-content col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="product-category grid-style">

						<div id="top-functions-area" class="top-functions-area"></div>
						<div class="row">
							<ul class="products-list">
								<c:forEach var="list" items="${list}">
									<c:if
										test="${list.categoryId.status==true}">
										<li class="product-item col-lg-3 col-md-3 col-sm-4 col-xs-6">
											<div class="contain-product layout-default">
												<div class="product-thumb">
													<a href="${product}/${list.bookId}" class="link-to-product">
														<img id="bookImage"
														src='<c:url value="/resources/uploads/book/${list.image}" />'
														alt="dd" width="270" height="270" class="product-thumnail">
													</a>
												</div>
												<div class="info">
													<b class="categories">${list.categoryId.name}</b>
													<h4 class="product-title">
														<a href="#" id="bookName" class="pr-name">${list.name}</a>
														<%-- <a href="#" id="bookName" data-bookId="${list.book}" class="pr-name">${list.name}</a> --%>
													</h4>
													<div class="price">
														<ins>
															<span id="bookPrice" class="price-amount"
																data-value="${list.price}"><span
																class="currencySymbol">£</span>${list.price}</span>
														</ins>

													</div>
													<div class="slide-down-box">
														<p class="message">All products are carefully selected
															to ensure food safety.</p>
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
									</c:if>
								</c:forEach>
							</ul>
						</div>

						<div class="biolife-panigations-block">
							<ul class="panigation-contain">
								<c:forEach var="i" begin="1" end="${tongsopage}">
									<c:choose>
										<c:when test="${i==1}">
											<li><a href="#" class="link-page current-page">${i}</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="#" class="link-page">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Scroll Top Button -->
	<a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>
	<script>
		$(document)
				.ready(
						function() {
							$("body")
									.on(
											"click",
											".link-page",
											function() {
												$(".link-page").removeClass(
														"current-page");
												$(this)
														.addClass(
																"current-page");
												var sotrang = $(this).text();
												var start = (sotrang - 1) * 15;
												$
														.ajax({
															url : "/shopEcommerce/api/LayDanhSachProuctLimit",
															type : "GET",
															data : {
																start : start,
															},
															success : function(
																	value) {
																var tbodyNguPhap = $(
																		".row")
																		.find(
																				".products-list")
																		.empty();
																tbodyNguPhap
																		.empty();
																tbodyNguPhap
																		.append(value);
															}
														});
											});
						});
	</script>
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