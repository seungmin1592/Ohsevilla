<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="/WEB-INF/views/include/metaHeader.jsp" %>
	<link rel="stylesheet" href="/oshvilla/css/bbs/noticeList.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	
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
		            <span class="date">2021.08.15</span>
	            </div>
	            <div class="list_content">
		            <span class="no">1</span>
		            <span class="title">제목입니다.</span>
		            <span class="name">김승민</span>
		            <span class="date">2021.08.15</span>
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
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>