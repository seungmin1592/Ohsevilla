<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="/WEB-INF/views/include/metaHeader.jsp" %>
	<link rel="stylesheet" href="/ohsevilla/css/member/login.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	<div class="login_page container">
	    <div class="login_section">
	        <div class="login_logo">
	            <img src="<%= request.getContextPath()%>/image/logo.png" alt="logo">
	        </div>
	        <form action="${root}/member/loginOk.do" id="login" method="post">
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
	                    <a href="<c:url value="/join"/>">
	                      	 회원가입
	                    </a>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>