<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<c:url var="register" value="/register"></c:url>
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous"></script>
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
				<h2 class="my-5">Login</h2>
			</div>

			<!-- Login Form -->
			<form method="post" action="">
				<input type="text" id="username" class="fadeIn second zero-raduis"
					name="txtusername" placeholder="Username"> <input
					type="password" id="password" class="fadeIn third zero-raduis"
					name="txtpassword" placeholder="password"
					style="background-color: #f6f6f6; border: none; color: #0d0d0d; padding: 10px 25px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 5px; width: 85%; border: 2px solid #f6f6f6;">
				<div id="formFooter">
					<a class="underlineHover" href="#">Forgot Password?</a>
				</div>
				<input type="submit" class="fadeIn fourth zero-raduis" value="login">
				<h2>You don't have a account ?</h2>
				<a href="${register}" class="fadeIn fourth zero-raduis pc">register</a>
			</form>

		</div>
	</div>
</body>
</html>