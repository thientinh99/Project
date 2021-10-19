
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="book" value="/product" />
<c:url var="home" value="/index" />
<c:url var="contact" value="/contact" />
<c:url var="about" value="/about" />
<c:url var="login" value="/login" />
<c:url var="register" value="/register" />
<c:url var="cart" value="/cart" />
<c:url var="logout" value="/login/logoutuser" />
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
	<div class="header-top hidden-xs">
		<div class="container">
			<div class="top-bar right">
				<ul class="horizontal-menu">

					<c:if test="${member == null}">
						<li><a href="${login}" class="login-link"><i
								class="biolife-icon icon-login"></i>Login</a></li>
					</c:if>
					<c:if test="${member == null}">
						<li><a href="${register}" class="login-link"><i
								class="biolife-icon icon-login"></i>Register</a></li>
					</c:if>
					<c:if test="${member !=null}">
						<li><a href="#"> Hello:${member}</a></li>
						<li><a href="${logout}">Logout</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<div class="header-middle biolife-sticky-object ">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-2 col-md-6 col-xs-6">
					<a href="home-05.html" class="biolife-logo"><img
						src="/resources/uploads/book/logo.jpeg" alt="biolife logo"
						width="135" height="36"></a>
				</div>
				<div class="col-lg-6 col-md-7 hidden-sm hidden-xs">
					<div class="primary-menu">
						<ul class="menu biolife-menu clone-main-menu clone-primary-menu"
							id="primary-menu" data-menuname="main menu">
							<li class="menu-item"><a href="${home}">Home</a></li>
							<li class="menu-item"><a href="${book}" class="menu-name"
								data-title="Product">Product</a></li>
							<li class="menu-item"><a href="${contact}">Contact</a></li>
							<li class="menu-item"><a href="${about}">About</a></li>
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
										class="icon-cart-mini biolife-icon"></i> <span class="qty">${NumberOfCart}</span>
								</span> <span class="title">My Cart -</span> <span class="sub-total">$0.00</span>
								</a>
								<div class="cart-content">
									<div class="cart-inner">
										<ul class="products">
											
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
