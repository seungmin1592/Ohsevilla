<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<script>
	alert("입력하신 비밀번호가 올바르지 않습니다.\n\n다시 입력해주세요.");
	location.href="${root}/member/pwChk.do";
</script>
