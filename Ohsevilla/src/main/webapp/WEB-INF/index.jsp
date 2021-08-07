<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Ohsevilla</title>
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/index.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="<%= request.getContextPath()%>/js/script.js"></script>
</head>
<body>

	<%@ include file="/WEB-INF/include/header.jsp" %>
	
	<section class="main_section">
    	<img src="<%= request.getContextPath()%>/image/index_img.jpg" alt="">
    </section>

	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>