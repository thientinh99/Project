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
<c:url var="product" value="/product" />
<script src='<c:url  value="/resources/js/jquery.min.js"/>'></script>
<script src='<c:url  value="/resources/js/jquery-3.5.1.js"/>'></script>
</head>
<body class="biolife-body">
	<!-- HEADER -->
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
				<li class="nav-item"><a href="#" class="permal-link">Product</a></li>

			</ul>
		</nav>
	</div>

	<div class="page-contain single-product">
		<div class="container">

			<!-- Main content -->
			<div id="main-content" class="main-content">

				<!-- summary info -->
				<c:forEach var="list" items="${listfindbyId}">
					<div class="sumary-product single-layout">
						<div class="media">
							<ul class="biolife-carousel slider-for">
								<li><img id="bookImage"
									src='<c:url value="/resources/uploads/book/${list.image}" />'
									alt="" width="500" height="500"></li>
							</ul>
						</div>
						<div class="product-attribute">
							<h3 id="bookName" data-bookId="${list.bookId}" class="title">${list.name}</h3>
							<div class="rating">
								<p class="star-rating">
									<span class="width-80percent"></span>
								</p>
								<span class="review-count"></span> <span class="qa-text">Q&amp;A</span>
								<b class="category">By: ${list.categoryId.name}</b> <b
									class="category">Author: ${list.authorId.name}</b></span>
							</div>
							<div class="articulate-area">
								<button onclick="speak('article')" class="btn btn-primary">Speak
									All</button>
								<button onclick="pause()" class="btn btn-danger">Pause</button>
								<button onclick="resume()" class="btn btn-info">Resume</button>
								<button onclick="stop()" class="btn btn-success">Stop</button>
							</div>
							<article>
								<p class="excerpt">${list.description}</p>
							</article>
							<div class="price">
								<ins>
									<span id="bookPrice" data-value="${list.price}"
										class="price-amount"><span class="currencySymbol">${list.price}</span>
										VND</span>
								</ins>
							</div>
						</div>
						<div class="action-form">
							<div class="quantity-box">
								<span class="title">Quantity:</span>
								<div class="qty-input">
									<input type="text" name="qty12554" value="1"
										data-max_value="20" data-min_value="1" data-step="1">
									<a href="#" class="qty-btn btn-up"><i
										class="fa fa-caret-up" aria-hidden="true"></i></a> <a href="#"
										class="qty-btn btn-down"><i class="fa fa-caret-down"
										aria-hidden="true"></i></a>
								</div>
							</div>
							<div class="buttons">
								<a href="#" class="btn add-to-cart-btn">Add to cart</a>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- Tab info -->
				<div class="tab-content">
					<div id="tab_4th" class="tab-contain review-tab">
						<div class="container">
							<div class="row">
								<div class="col-lg col-md col-sm col-xs">
									<div class="review-form-wrapper">
										<span class="title" style="margin-top: 10px">Your
											Comment</span>

										<form method="POST">
											<input type="text" value="${memberid}" name="userId"
												id="userId" hidden>
											<c:forEach var="list" items="${listfindbyId}">
												<input type="text" value="${list.bookId}" name="bookId"
													id="bookId" hidden>
											</c:forEach>
											<c:if test="${member!=null }">
												<p class="form-row">
													<textarea name="comment" id="content" cols="30" rows="10"
														placeholder="Write your comment here..." name="content"></textarea>
												</p>
												<p class="form-row">
													<button type="button" name="submit" class="btnSubmitCmt">Comment</button>
													<!-- 	<input type="button" class="btnSubmitCmt" value="Bình luận" /> -->
												</p>
											</c:if>
											<c:if test="${member==null}">
												<p class="form-row">
													<textarea name="comment" id="txt-comment" cols="30"
														rows="10" placeholder="You need to login......." disabled></textarea>
												</p>
											</c:if>
										</form>
									</div>
								</div>
							</div>
							<div id="comments">
								<ol class="commentlist">
									<li class="review">
										<div class="comment-container">
											<div class="row">
												<c:forEach var="list" items="${listcmt}">
													<div class="comment-content col-lg col-md col-sm col-xs-12">
														<p class="comment-in">
															<span class="post-name">${list.userId.name}</span>
														</p>
														<p class="comment-text">${list.bookId.name}</p>
													</div>
												</c:forEach>
											</div>
										</div>
									</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<!-- related products -->
				<div class="product-related-box single-layout">
					<div class="biolife-title-box lg-margin-bottom-26px-im">
						<span class="subtitle">All the best item for You</span>
						<h3 class="main-title">Related Products</h3>
					</div>
					<ul
						class="products-list biolife-carousel nav-center-02 nav-none-on-mobile"
						data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":0,"slidesToShow":5, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":20 }},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":10}}]}'>
						<c:forEach var="list" items="${list1}">
							<li class="product-item">
								<div class="contain-product layout-default">
									<div class="product-thumb">
										<a href="${product}/${list.bookId}" class="link-to-product">
											<img
											src='<c:url value="/resources/uploads/book/${list.image}" />'
											alt="dd" width="270" height="270" class="product-thumnail">
										</a>
									</div>
									<div class="info">
										<b class="categories">${list.categoryId.name}</b>
										<h4 class="product-title">
											<a href="#" class="pr-name">${list.name}</a>
										</h4>
										<div class="price">
											<ins>
												<span class="price-amount"><span
													class="currencySymbol">£</span>${list.price}</span>
											</ins>
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
						</c:forEach>
					</ul>
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
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src='<c:url value="/resources/client/js/articulate.js"/>'></script>
	<script src='<c:url value="/resources/js/custom.js"/>'></script>
	<script>
		$(document)
				.ready(
						function() {
							$("body")
									.on(
											"click",
											".btnSubmitCmt",
											function() {
												var content = document
														.getElementById("content").value;
												var userId = document
														.getElementById("userId").value;
												var bookId = document
														.getElementById("bookId").value;
												$
														.ajax({
															url : "/shopEcommerce/api/CommentBookDetails/",
															type : "POST",
															data : {
																content : content,
																userId : userId,
																bookId : bookId,
															},
															success : function(
																	value) {
																var tbodyNguPhap = $(
																		".comment-container")
																		.find(
																				".row")
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
	<script>
		function speak(obj) {
			$(obj).articulate('speak');
		};

		function pause() {
			$().articulate('pause');
		};

		function resume() {
			$().articulate('resume');
		};

		function stop() {
			$().articulate('stop');
		};
	</script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>

</html>