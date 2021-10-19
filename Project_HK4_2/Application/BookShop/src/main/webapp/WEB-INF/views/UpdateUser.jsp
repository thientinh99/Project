<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<script src='<c:url  value="/resources/js/jquery.min.js"/>'></script>
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
							<h5 class="card-title">Update User</h5>
							<div class="container">
								<form class="form-group" method="post" action="">
									<c:forEach var="list" items="${list}">
										<div class="row ">
											<div class="col-sm-6">
												<input type="text" class="form-control" name="txtUsername"
													id="txtUsername" placeholder="Username"
													value="${list.username}" id="txtUsername"> <input
													type="text" class="form-control" name="txtuserId"
													id="userId" value="${list.userId}" hidden>
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control" name="txtName"
													placeholder="Name" value="${list.name}" id="txtName">
											</div>
										</div>
										<div class="row mt-3">

											<div class="col-sm-6">
												<input type="number" class="form-control" name="txtAge"
													placeholder="Age" value="${list.age}" id="txtAge">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control" name="txtAddress"
													id="txtAddress" placeholder="Address"
													value="${list.address}">
											</div>
											<div class="col-sm-6 mt-3">
												Gender:<select name="txtgender">
													<c:if test="${list.gender==true}">
														<option value="0" selected="selected">Male</option>
														<option value="1">Female</option>
													</c:if>
													<c:if test="${list.gender==false}">
														<option value="1" selected="selected">Female</option>
														<option value="0">Male</option>
													</c:if>
												</select>
											</div>
											<div class="col-sm-6 mt-3">
												Role:<select name="txtrole">
													<c:if test="${list.roleId.roleId==1}">
														<option value="${list.roleId.roleId}" selected="selected">${list.roleId.name}</option>
														<option value="2" selected="selected">User</option>
													</c:if>
													<c:if test="${list.roleId.roleId==2}">
														<option value="${list.roleId.roleId}" selected="selected">${list.roleId.name}</option>
														<option value="1" selected="selected">Admin</option>
													</c:if>
												</select>
											</div>

										</div>
									</c:forEach>
									<button type="submit" class="btn btn-success pull-right mt-3"
										id="btnSubmit">Submit</button>
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
												var txtName = document
														.getElementById("txtName").value;
												var idUsername = document
														.getElementById("txtUsername").value;
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
												if (idAge <= 0) {
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