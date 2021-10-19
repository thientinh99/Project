<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Category</title>
<script src='<c:url  value="/resources/js/jquery.min.js"/>'></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<script src='<c:url  value="/resources/js/jquery-3.5.1.js"/>'></script>
<link rel="stylesheet"
	href='<c:url  value="/resources/css/sweetalert2.min.css"/>'>
<script src='<c:url  value="/resources/js/sweetalert.min.js"/>'></script>

<c:url var="addNew" value="/dashboard/category/addNewCategory" />
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
							<h5 class="card-title">Add Category</h5>
							<div class="container">
								<form class="form-group" method="post" action="${addNew}">
									<div class="row ">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="name" id="name"
												placeholder="Name Category">
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control " name="description"
												placeholder="Description" id="description">
										</div>
									</div>
									<button type="submit" class="btn btn-success pull-right mt-3"
										id="btnSubmit">Add</button>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
		</div>
	</div>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("body")
									.on(
											"click",
											"#btnSubmit",
											function(event) {

												var name = document
														.getElementById("name").value;

												var description = document
														.getElementById("description").value;

												if (name === ""
														|| name.length < 6) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information, Or Category Length",
														icon : "error",
														button : "Yes",
													});
												}
											});
						});
	</script>
</body>
</html>