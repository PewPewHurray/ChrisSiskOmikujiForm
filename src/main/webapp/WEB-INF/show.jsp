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

<title>Omikuji Results</title>
</head>
<body>
	<div class="d-flex justify-content-center">
		<div>
			<h1>Here's Your Omikuji!</h1>
			<div class="border border-2 border-dark p-3 bg-info col-2 mb-4">
				<p class="p-0 m-0">${result}</p>
			</div>
			<a href="/omikuji">Go Back</a>
		</div>
	</div>
</body>
</html>