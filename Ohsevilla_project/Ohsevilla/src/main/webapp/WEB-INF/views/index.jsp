<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="/WEB-INF/views/include/metaHeader.jsp" %>
	<link rel="stylesheet" href="/ohsevilla/css/index.css">
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	<section class="main_section">
    	<img src="<%= request.getContextPath()%>/image/index_img.jpg" alt="">
    </section>

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>