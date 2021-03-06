<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var = "root" value = "${pageContext.request.contextPath}"/>

<div class="wrap">
     <header class="header">
          <h1 class="logo">
          		<a href="<c:url value="/index"/>">
               		<img src="<%= request.getContextPath()%>/image/logo.png" alt="logo">
               	</a>
          </h1>
          <nav class="menu">
               <ul class="nav">
                    <li><a href="#">SHOP</a></li>
                    <li class="clothing">
                         <a href="#">CLOTHING</a>
                         <div class="clothing_menu">
                              <ul>
                                   <li><a href="#">ALL</a></li>
                                   <li><a href="#">OUTER</a></li>
                                   <li><a href="#">TOP</a></li>
                                   <li><a href="#">BOTTOM</a></li>
                                   <li><a href="#">ACC</a></li>
                                   <li><a href="#">ETC</a></li>
                              </ul>
                         </div>
                    </li>
                    <li><a href="#">ARCHIVE</a></li>
                    <li><a href="${root}/bbs/noticeList.do">NOTICE</a></li>
               </ul>
          </nav>
          <!--menu-->
	          <div class="sub_menu logout">
	               <a href="<c:url value="/login"/>">LOGIN</a>
	               <a href="#">CART (0)</a>
	          </div><!-- sub_menu-->
         <%--  <c:if test="${member == null }">
          </c:if>
          <c:if test="${member != null }">
	          <div class="sub_menu login">
	               <a href="${root}/member/mypage.do">${member.id}</a>
	               <a href="${root}/member/logout.do">LOGOUT</a>
	               <a href="#">CART (0)</a>
	          </div><!-- sub_menu-->
          </c:if> --%>

     </header><!-- header -->