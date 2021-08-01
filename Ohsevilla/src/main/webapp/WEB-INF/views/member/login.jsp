<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/member/login.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath()%>/js/script.js"></script>
	<title>Ohsevilla</title>
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp" %>
	
	<div class="login_page container">
	    <div class="login_section">
	        <div class="login_logo">
	            <img src="<%= request.getContextPath()%>/image/logo.png" alt="logo">
	        </div>
	        <form action="" id="login">
	            <label for="id">
	                <input type="text" name="id" id="id" placeholder="아이디를 입력해주세요">
	            </label>
	            <label for="password">
	                <input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요">
	            </label>
	            <label for="login_btn">
	                <input type="submit" name="login_btn" id="login_btn" value="LOGIN">
	            </label>
	        </form>
	        <div class="find_section">
	            <ul>
	                <li>
	                    <a href="">
	                        아이디 찾기
	                    </a>
	                </li>
	                <li>
	                    <a href="">
	                        비밀번호 찾기
	                    </a>
	                </li>
	                <li>
	                    <a href="<%= request.getContextPath()%>/member/join.jsp">
	                        회원가입
	                    </a>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>