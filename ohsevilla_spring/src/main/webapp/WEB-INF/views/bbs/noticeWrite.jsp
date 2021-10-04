<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ include file="/WEB-INF/views/include/metaHeader.jsp" %>
	<link rel="stylesheet" href="oshvilla/css/bbs/noticeList.css">
	<link rel="stylesheet" href="ohsevilla/css/bbs/noticeList.css">
	<link rel="stylesheet" href="ohsevilla/css/bbs/noticeWrite.css">
</head>


<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	
	<div class="notice_write container">
		<div class="bbs_logo">
            <img src="<%= request.getContextPath()%>/image/logo.png" alt="logo">
        </div>
	    <div class="board_write">
            <form>
				<div class="write_form">
					<div class="name">
						<span class="left">작성자</span>
						<span><input type="text" name="name" value=""></span>
					</div>
					<div class="title">
						<span class="left">제목</span>
						<span><input type="text" name="title"></span>
					</div>
					<div class="content">
						<span class="left">내용</span>
						<span>
							<textarea class="form-control" name="contents" id="contents"></textarea>
						</span>
					</div>
				</div>
				<div class="btn">
					<input type="submit" value="작성 완료">
					<a href="#">취소</a>
				</div>
            </form>

	    </div>
	</div>
	<script>
        var oEditors = [];

        nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "contents",
            sSkinURI: "/Ohsevilla/smarteditor2/SmartEditor2Skin.html",
            fCreator: "createSEditor2"
        });
    </script>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>