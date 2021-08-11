<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:if test = "${check > 0}">
	<script>
		alert("회원 정보 수정이 완료되었습니다.");
		location.href="${root}/member/mypage.do";
	</script>
</c:if>

<c:if test = "${check == 0}">
	<script>
		alert("회원 정보 수정이 완료되지 않았습니다. \n\n다시 입력해주세요.");
		location.href="${root}/member/editMember.do";
	</script>
</c:if>