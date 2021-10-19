<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<script src='<c:url  value="/resources/js/jquery.min.js"/>'></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<c:url var="addNew" value="/dashboard/author/addNewUser" />
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
							<h5 class="card-title">Add User</h5>
							<div class="container">
								<form class="form-group" method="post" action="">
									<div class="row ">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="txtUserName"
												id="txtUsername" placeholder="Username" class="txtUsername">
										</div>
										<div class="col-sm-6">
											<input type="password" class="form-control "
												name="txtPassword" placeholder="Password"
												class="txtPassword" id="txtPassword">
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="txtName"
												placeholder="Name" class="txtName" id="txtName">
										</div>
										<div class="col-sm-6">
											<input type="number" class="form-control" name="txtAge"
												placeholder="Age" class="txtAge" id="txtAge">
										</div>
									</div>
									<div class="row  mt-3">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="txtAddress"
												id="txtAddress" placeholder="Address">
										</div>
										<div class="col-sm-6">
											<div class="row">
												<div class="col-sm-6">
													Gender:<select name="txtgender">
														<option value="0">Name</option>
														<option value="1">Nữ</option>
													</select>
												</div>
												<div class="col-sm-6">
													Role:<select name="txtrole">
														<c:forEach var="item" items="${list1}">
															<option value="${item.roleId}">${item.name}</option>

														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
									<button type="submit" class="btn btn-success pull-right mt-3" id="btnSubmit">Add</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			
			</div>
				<jsp:include page="FooterAdmin.jsp"></jsp:include>
			<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
		</div>
	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("body")
									.on(
											"click",
											"#btnSubmit",
											function(event) {
												var txtName = document
														.getElementById("txtName").value;
												var idUsername = document
														.getElementById("txtUsername").value;
												var idPassword = document
														.getElementById("txtPassword").value;
												var idAge = document
														.getElementById("txtAge").value;
												var idAddress = document
														.getElementById("txtAddress").value;
												var regex = /[0-9]|\./;
												if (idAge === "") {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information",
														icon : "error",
														button : "Yes",
													});
												}
												if (idAge.length > 3) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Age maxlength 3",
														icon : "error",
														button : "Yes",
													});

												}
												if (!regex.test(idAge)) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Only allow entering numbers ",
														icon : "error",
														button : "Yes",
													});
												}
												if (idAge <= 0 ) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "age <= 0",
														icon : "error",
														button : "Yes",
													});
												}
												if (idUsername === ""
														|| idUsername.length < 5) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Enter the Username correct length, Or Username not null ",
														icon : "error",
														button : "Yes",
													});

												}
												if (txtName === ""
														|| txtName.length < 5) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Enter the Name correct length, Or Name not null ",
														icon : "error",
														button : "Yes",
													});

												}
												if (idPassword === ""
														|| idDomicile.length < 5) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Enter the Password correct length, Or Password not null ",
														icon : "error",
														button : "Yes",
													});

												}
												if (idAddress === ""
														|| idAddress.length < 5) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Enter the Address correct length, Or Address not null ",
														icon : "error",
														button : "Yes",
													});

												}
											});
						});
	</script>
	<script src='<c:url value="/resources/assets/scripts/main.js"/>'></script>
</body>
</html>