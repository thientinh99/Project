<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script src='<c:url  value="/resources/js/jquery.min.js"/>'></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<script src='<c:url  value="/resources/js/jquery-3.5.1.js"/>'></script>
<link rel="stylesheet"
	href='<c:url  value="/resources/css/sweetalert2.min.css"/>'>
<script src='<c:url  value="/resources/js/sweetalert.min.js"/>'></script>
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/assets/main.css"/>' />
<link rel="stylesheet" type="text/css"
	href='<c:url  value="/resources/login.css"/>' />
</head>
<body>
	<div class="wrapper fadeInDown zero-raduis">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
				<!-- <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" /> -->
				<h2 class="my-5">Registration</h2>
			</div>

			<!-- Login Form -->
			<form action="" method="post">
				<input type="text" id="username" class="fadeIn second zero-raduis"
					name="username" id="username" placeholder="Username"> <input
					type="password" id="password" class="fadeIn third zero-raduis"
					name="password" placeholder="Password"
					style="background-color: #f6f6f6; border: none; color: #0d0d0d; padding: 10px 25px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 5px; width: 85%; border: 2px solid #f6f6f6;">
				<input type="text" name="name" id="name"
					placeholder="Full Name" class="fadeIn third zero-raduis">
				<input type="text" name="age" placeholder="Age"
					id="age"class="fadeIn third zero-raduis"> <input
					type="text" id="address" class="fadeIn second zero-raduis"
					name="address"placeholder="Address">
			
				 <input type="submit" class="fadeIn fourth zero-raduis"
					value="Submit" id="btnSubmit">
					 
				<h2>You don't have a account ?</h2>
				<input type="button" class="fadeIn fourth zero-raduis pc"
					value="Login">
			</form>

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
												var username = document
														.getElementById("username").value;

												var password = document
														.getElementById("password").value;
												var name = document
														.getElementById("name").value;
												var age = document
														.getElementById("age").value;
												var address = document
														.getElementById("address").value;
												var regex = /[0-9]|\./;
												if (username === ""
														|| username.length < 3) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information, Or username Length",
														icon : "error",
														button : "Yes",
													});
												}
												if (password === ""
														|| password.length < 6) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information, Or password Length",
														icon : "error",
														button : "Yes",
													});
												}
												if (address === ""
														|| address.length < 6) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information, Or Address Length",
														icon : "error",
														button : "Yes",
													});
												}
												if (name === ""
														|| name.length < 6) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information, Or name Length",
														icon : "error",
														button : "Yes",
													});
												}
												if (age === ""
														|| age.length > 3) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "You need to enter enough information, Or age Length",
														icon : "error",
														button : "Yes",
													});
												}
												
												if (!regex.test(age)) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "Only allow entering numbers ",
														icon : "error",
														button : "Yes",
													});
												}
												if (age <= 0 ) {
													event.preventDefault()
													swal({
														title : "Warning",
														text : "age <= 0",
														icon : "error",
														button : "Yes",
													});
												}
											});
						});
	</script>
</body>
</html>