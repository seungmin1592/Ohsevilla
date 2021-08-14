<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	String memberId = request.getParameter("mid");
	request.setAttribute("result", MemberDAO.getInstance().idCheck(memberId));
%>
${result}