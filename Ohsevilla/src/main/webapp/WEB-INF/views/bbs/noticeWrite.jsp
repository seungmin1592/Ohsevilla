<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/bbs/noticeList.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/bbs/noticeWrite.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath()%>/js/script.js"></script>
    <script src="<%= request.getContextPath()%>/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
	<title>Ohsevilla</title>
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp" %>
	
	
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
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>