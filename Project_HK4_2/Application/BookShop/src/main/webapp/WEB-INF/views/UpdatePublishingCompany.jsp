<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Publishing</title>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<script src='<c:url  value="/resources/js/jquery-3.5.1.js"/>'></script>
<link rel="stylesheet"
	href='<c:url  value="/resources/css/sweetalert2.min.css"/>'>
<script src='<c:url  value="/resources/js/sweetalert.min.js"/>'></script>

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
							<h5 class="card-title">Edit Publishing Company</h5>
							<div class="container">
								<form class="form-group" method="post" action="">
									<c:forEach var="list" items="${list}">
										<div class="row ">
											<div class="col-sm-6">
												<input type="text" class="form-control"
													name="publishingName" id="name"
													placeholder="Name Publishing"
													value="${list.publishingName}" >
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control" name="address"
													id="address" placeholder="Address " value="${list.address}" >
											</div>

										</div>
										<div class="row ">
											<div class="col-sm-12 pt-3">
												<textarea class="form-control" id="description"
													name="description" rows="3" placeholder="Description">${list.description}</textarea>
											</div>
										</div>
									</c:forEach>
									<button type="submit" class="btn btn-success pull-right mt-3" id="btnSubmit">Update</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>

	</div>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>
	<script type="text/javascript">
		$(document).ready(function() {
			$("body").on("click", "#btnSubmit", function(event) {

				var name = document.getElementById("name").value;
				var address = document.getElementById("address").value;
				var description = document.getElementById("description").value;

				if (name === "" || address === "") {
					event.preventDefault()
					swal({
						title : "Warning",
						text : "You need to enter enough information",
						icon : "error",
						button : "Yes",
					});
				}
			});
		});
	</script>
</body>
</html>