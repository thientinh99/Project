<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<c:url var="addNew" value="/dashboard/book/addNewBook" />
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato:300">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
	integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
	crossorigin="anonymous"></script>
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
							<h5 class="card-title">Add Book</h5>
							<div class="container">
								<form class="form-group" method="post" action=""
									enctype="multipart/form-data">
									<div class="row ">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="name"
												id="txtName" placeholder="Name Book">
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control " name="price"
												id="txtprice" placeholder="Price">
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-sm-6">
											<input type="number" class="form-control" name="number"
												placeholder="Number" id="txtnumner">
										</div>
										<div class="col-sm-6">
											<textarea class="form-control" name="description"
												placeholder="Description"></textarea>
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="publishingYear"
												placeholder="publishingYear" id="txtpublishingYear">
										</div>
										<div class="col-sm-6">
											Category Name:<select name="categoryid" class="form-control">
												<c:forEach var="item" items="${listCategory}">
													<option value="${item.categoryId}">${item.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="row mt-3">

										<div class="col-sm-6">
											Publishing Name:<select name="publishingid"
												class="form-control">
												<c:forEach var="item" items="${listPublishingCompany}">
													<option value="${item.publishingId}">${item.publishingName}</option>
												</c:forEach>
											</select>
										</div>
										<div class="col-sm-6">
											Author Name:<select name="authorid" class="form-control">
												<c:forEach var="item" items="${listAuthor}">
													<option value="${item.authorId}">${item.name}</option>
												</c:forEach>
											</select>

										</div>

									</div>
									<div class="row mt-3">

										<div class="col-sm-6">
											Image <input type="file" class="form-control" name="txtimage"
												accept="image/png, image/jpeg" id="txtimage"
												required="required">
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
	<script src='<c:url value="/resources/assets/scripts/main.js"/>'></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("body").on("click", "#btnSubmit", function(event) {
				var txtName = document.getElementById("txtName").value;
				var txtprice = document.getElementById("txtprice").value;
				var txtnumner = document.getElementById("txtnumner").value;
				var txtdescription = document.getElementById("txtdescription").value;
				var txtpublishingYear = document.getElementById("txtpublishingYear").value;
				var regex = /[0-9]|\./;
				if (txtName === "" || txtprice === "" || txtnumner==="" ||txtpublishingYear==="") {
					event.preventDefault()
					swal({
						title : "Warning",
						text : "You need to enter enough information",
						icon : "error",
						button : "Yes",
					});
				}
				if(txtprice<=0){
					event.preventDefault()
					swal({
						title : "Warning",
						text : "Negative numbers are not allowed",
						icon : "error",
						button : "Yes",
				});
					if(!regex.test(txtprice)){
						event.preventDefault()
						swal({
							title : "Warning",
							text : "Only numeric values ​​are allowed",
							icon : "error",
							button : "Yes",
					});
						if(!regex.test(txtpublishingYear)){
							event.preventDefault()
							swal({
								title : "Warning",
								text : "Only numeric values ​​are allowed",
								icon : "error",
								button : "Yes",
						});
							if(txtpublishingYear.length>5){
								event.preventDefault()
								swal({
									title : "Warning",
									text : "PublishingYear maxlength 4",
									icon : "error",
									button : "Yes",
							});
								if(txtpublishingYear<0){
									event.preventDefault()
									swal({
										title : "Warning",
										text : "Negative numbers are not allowed",
										icon : "error",
										button : "Yes",
								});
				if(txtnumner<0){
					event.preventDefault()
					swal({
						title : "Warning",
						text : "Negative numbers are not allowed",
						icon : "error",
						button : "Yes",
				});
				}if(txtnumner.length>11){
					event.preventDefault()
					swal({
						title : "Warning",
						text : "Enter numbers under 11 characters only",
						icon : "error",
						button : "Yes",
					});
				}
			});
		});
	</script>
</body>
</html>