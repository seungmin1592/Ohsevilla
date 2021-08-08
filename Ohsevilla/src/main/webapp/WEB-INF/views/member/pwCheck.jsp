<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/member/pw_check.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath()%>/js/script.js"></script>
	<title>Ohsevilla</title>
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp" %>
	
	<div class="container">
	    <div class="password_Check">
	        <div class="section_logo">
	            <img src="<%= request.getContextPath()%>/image/logo.png" alt="logo">
	        </div>
	        <form action="${root}/member/loginOk.do" method="post">
	            <label for="password">
	                <input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요">
	            </label>
	            <label for="pw_ck_btn" class="pw_ck_btn">
	                <input type="submit" name="pw_ck" id="pw_ck" value="확인">
	                <a href="javascript:window.history.back();">뒤로가기</a>
	            </label>
	        </form>
	    </div>
	</div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>