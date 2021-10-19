<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<c:url var="addNew" value="/dashboard/user/addNewUser" />
<c:url var="user" value="/dashboard/user"></c:url>

</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<jsp:include page="HeaderAdmin.jsp"></jsp:include>
		<div class="app-main">
			<jsp:include page="SideBarAdmin.jsp"></jsp:include>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper"></div>
					</div>

					<div class="main-card card">
						<div class="card-body">
							<h5 class="card-title">List User</h5>
							<table class="mb-0 table">
								<c:if test="${message!=null}">
									<div class="alert alert-warning" role="alert">
										<%=request.getAttribute("message") != null ? request.getAttribute("message") : " "%>
									</div>
								</c:if>
								<c:if test="${messagesuccess!=null}">
									<div class="alert alert-success" role="alert">
										<%=request.getAttribute("messagesuccess") != null ? request.getAttribute("messagesuccess") : " "%>
									</div>
								</c:if>
								<a href="${addNew}" class="btn btn-success">Add New</a>
								<thead>
									<tr>
										<th>Userame</th>
										<th>Name</th>
										<th>Age</th>
										<th>Address</th>
										<th>gender</th>
										<th>Role</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list}">
										<c:if test="${empty list.userId}">
											<h1 class="alert alert-warning" role="alert">Content not
												available</h1>
										</c:if>
										<c:if test="${not empty list.userId}">
											<tr>
												<td>${list.username}</td>
												<td>${list.name}</td>
												<td>${list.age}</td>
												<td>${list.address}</td>

												<c:if test="${list.gender==true }">
													<td>Male</td>
												</c:if>
												<c:if test="${list.gender==false }">
													<td>Female</td>
												</c:if>
												<td>${list.roleId.name}</td>
												<td><a href="${user}/updateUser/${list.userId}"
													class="btn btn-primary">Update</a> <a
													href="${user}/delete/${list.userId}"
													class="btn btn-secondary">Delete</a></td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<c:forEach var="i" begin="1" end="${tongsopage}">
									<c:choose>
										<c:when test="${i==1}">
											<li class="page-item active"><a class="page-link"
												href="#">${i}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="#">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
		</div>
	</div>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			$("body").on("click", ".page-item", function() {
				$(".page-item").removeClass("active");
				$(this).addClass("active");
				var sotrang = $(this).text();
				var start = (sotrang - 1) * 4;
				$.ajax({
					url : "/shopEcommerce/api/LayDanhSachUserLimit",
					type : "GET",
					data : {
						start : start,
					},
					success : function(value) {
						var tbodyNguPhap = $(".table").find("tbody").empty();
						tbodyNguPhap.empty();
						tbodyNguPhap.append(value);
					}
				});
			});
		});
	</script>
	<script src='<c:url value="/resources/js/custom.js"/>'></script>
	<script src='<c:url value="/resources/assets/scripts/main.js"/>'></script>
</body>
</html>