<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Role</title>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<c:url var="addNew" value="/dashboard/role/addNewRole" />
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
							<h5 class="card-title">Add Role</h5>
							<div class="container">
								<form class="form-group" method="post" action="${addNew}">
									<div class="row ">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="Name" id="Name"
												placeholder="Name Role" required="required">
										</div>
									</div>
									<button type="submit" class="btn btn-success pull-right mt-3">Add</button>
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
</body>
</html>