
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="author" value="/dashboard/author"></c:url>
<c:url var="publishingCompany" value="/dashboard/publishingCompany"></c:url>
<c:url var="user" value="/dashboard/user"></c:url>
<c:url var="role" value="/dashboard/role"></c:url>
<c:url var="category" value="/dashboard/category"></c:url>
<c:url var="book" value="/dashboard/book"></c:url>
<c:url var="comment" value="/dashboard/comment"></c:url>
<div class="app-sidebar sidebar-shadow">
	<div class="app-header__logo">
		<div class="logo-src"></div>
		<div class="header__pane ml-auto">
			<div>
				<button type="button"
					class="hamburger close-sidebar-btn hamburger--elastic"
					data-class="closed-sidebar">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<div class="app-header__mobile-menu">
		<div>
			<button type="button"
				class="hamburger hamburger--elastic mobile-toggle-nav">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</button>
		</div>
	</div>
	<div class="app-header__menu">
		<span>
			<button type="button"
				class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
				<span class="btn-icon-wrapper"> <i
					class="fa fa-ellipsis-v fa-w-6"></i>
				</span>
			</button>
		</span>
	</div>
	<div class="scrollbar-sidebar">
		<div class="app-sidebar__inner">
			<ul class="vertical-nav-menu">

				<li class="app-sidebar__heading">Manager</li>
				<li><a href="${author}"> <i
						class="metismenu-icon pe-7s-diamond"></i> Author <i
						class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
				</a></li>
				<li><a href="${user}"> <i class="metismenu-icon pe-7s-car"></i>
						User <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
				</a></li>
				<li><a href="${publishingCompany}"> <i
						class="metismenu-icon pe-7s-display2"></i> PublishingCompany
				</a></li>
				<li><a href="${role}"> <i
						class="metismenu-icon pe-7s-display2"></i> Role
				</a></li>
				<li><a href="${category}"> <i
						class="metismenu-icon pe-7s-display2"></i> Category
				</a></li>
				<li><a href="${book}"> <i
						class="metismenu-icon pe-7s-display2"></i> Book
				</a></li>
				<li><a href="${comment}"> <i
						class="metismenu-icon pe-7s-display2"></i> Comment
				</a></li>

			</ul>

		</div>
	</div>
</div>