<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Author</title>
<script src='<c:url  value="/resources/js/jquery.min.js"/>'></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<script src='<c:url  value="/resources/js/jquery-3.5.1.js"/>'></script>

<link rel="stylesheet"
	href='<c:url  value="/resources/css/sweetalert2.min.css"/>'>
<script src='<c:url  value="/resources/js/sweetalert.min.js"/>'></script>
<c:url var="addNew" value="/dashboard/author/addNewAuthor" />
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
							<h5 class="card-title">Update Author</h5>
							<div class="container">
								<form class="form-group" method="post" action="">
									<c:forEach var="listAuthor" items="${list}">
										<div class="row ">
											<div class="col-sm-6">
												<input type="text" class="form-control" name="txtAuthorId"
													placeholder="Name Author" value="${listAuthor.authorId}"
													hidden> <input type="text" class="form-control"
													name="txtName" placeholder="Name Author"
													value="${listAuthor.name}" id="txtName">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control " name="txtPseudonym"
													placeholder="Pseudonym" value="${listAuthor.pseudonym}"
													id="txtPseudonym">
											</div>
										</div>
										<div class="row mt-3">
											<div class="col-sm-6">
												<input type="text" class="form-control" name="txtAge"
													placeholder="Age Author" value="${listAuthor.age}"
													id="txtAge">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control" name="txtDomicile"
													placeholder="Domicile" value="${listAuthor.domicile}"
													id="txtDomicile">
											</div>
										</div>
									</c:forEach>
									<button type="submit" class="btn btn-success pull-right mt-3"
										id="btnSubmit">Update</button>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
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
												var idPseudonym = document
														.getElementById("txtPseudonym").value;
												var idAge = document
														.getElementById("txtAge").value;
												var idDomicile = document
														.getElementById("txtDomicile").value;
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
														text : "Age maxlength 3 ",
														icon : "error",
														button : "Yes",
													});

												}
												if (!regex.test(idAge)) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Only numeric values ​​are allowed",
														icon : "error",
														button : "Yes",
													});
												}
												if (idAge <=0) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Negative numbers are not allowed",
														icon : "error",
														button : "Yes",
													});
												}
												if (idPseudonym === ""
														|| idPseudonym.length < 5) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Enter the Pseudonym correct length, Or Pseudonym not null ",
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
												if (idDomicile === ""
														|| idDomicile.length < 5) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Enter the Domicile correct length, Or Domicile not null ",
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