<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/bbs/noticeList.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath()%>/js/script.js"></script>
	<title>Ohsevilla</title>
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp" %>
	
	
	<div class="notice container">
		<div class="bbs_logo">
            <img src="<%= request.getContextPath()%>/image/logo.png" alt="logo">
        </div>
	    <h1 class="bbs_title">NOTICE</h1>
	    <div class="board_list">
            <div class="list_header">
	            <span class="no">NO</span>
	            <span class="title">제목</span>
	            <span class="name">작성자</span>
	            <span class="date">작성일</span>
            </div>
            <div class="list_container">
	           	<div class="list_content">
		            <span class="no">1</span>
		            <span class="title">제목입니다.</span>
		            <span class="name">김승민</span>
		            <span class="date">210815</span>
	            </div>
	            <div class="list_content">
		            <span class="no">1</span>
		            <span class="title">제목입니다.</span>
		            <span class="name">김승민</span>
		            <span class="date">210815</span>
	            </div>
            </div>
	    </div>
	    <div class="write_btn">
	    	<a href="<%= request.getContextPath()%>/bbs/noticeWrite.do">글쓰기</a>
	    </div>
	    <div class="pageing">
	    	<ul>
	    		<li>1</li>
	    		<li>2</li>
	    		<li>3</li>
	    		<li>4</li>
	    	</ul>
	    </div>
	</div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>