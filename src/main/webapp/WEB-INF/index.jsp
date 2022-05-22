<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>Omikuji</title>
</head>
<body>
	<div class="d-flex justify-content-center mt-5">
		<div>
			<div>
				<h1 class="mb-3">Send an Omikuji!</h1>
			</div>
			<div>
				<form action="/omikuji/process" method="post"
					class="p-3 border border-2 border-dark">
					<div class="d-flex flex-column mb-3">
						<label for="number">Pick any number from 5 to 25:</label>
						<div>
							<select name="number" id="">
								<%
								for (int i = 5; i <= 25; i++) {
								%>
								<option><%=i%></option>
								<%
								}
								%>
							</select>
						</div>
					</div>
					<div class="d-flex flex-column mb-3">
						<label for="city">Enter the name of any city:</label> <input
							name=city type="text"></input>
					</div>
					<div class="d-flex flex-column mb-3">
						<label for="name">Enter the name of any real person:</label> <input
							name="name" type="text"></input>
					</div>
					<div class="d-flex flex-column mb-3">
						<label for="profession">Enter professional endeavor or
							hobby:</label> <input name="profession" type="text"></input>
					</div>
					<div class="d-flex flex-column mb-3">
						<label for="livingThing">Enter any type of living thing:</label> <input
							name="livingThing" type="text"></input>
					</div>
					<div class="d-flex flex-column mb-3">
						<label for="message">Say something nice to someone:</label>
						<textarea name="message"></textarea>
					</div>
					<div class="d-flex flex-column">
						<label>Send and show a friend</label>
						<div class="d-flex justify-content-end">
							<input type="submit"></input>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>