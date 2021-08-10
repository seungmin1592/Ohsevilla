<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:if test = "${check > 0}">
	<script>
		alert("회원 가입이 완료되었습니다.");
		location.href="${root}/member/login.do";
	</script>
</c:if>

<c:if test = "${check == 0}">
	<script>
		alert("회원 가입이 완료되지 않았습니다.");
		location.href="${root}/member/register.do";
	</script>
</c:if>