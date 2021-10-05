<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%= request.getContextPath()%>/css/member/mypage.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath()%>/js/script.js"></script>
	<title>Ohsevilla</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	 <div class="mypage container">
            <div class="mypage_info">
                <h3 class="my_id_Info">
                    안녕하세요<br>
                    ${member.name}님
                </h3>
                <h5>${member.id}</h5>
                <a href="${root}/member/pwChk.do">회원 정보 수정</a>
            </div>
            
            <h2 class="order_section_tit">주문 내역</h2>
            <div class="order">
                <div class="order_section">
                    <div class="order_info">
                        <span class="date">2021-08-08</span>
                        <span class="order_num">123456789</span>
                        <a href="">주문상세보기 ></a>
                    </div>
                    <div class="order_product">
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="2">상품명</th>
                                    <th>주문금액</th>
                                    <th>진행상황</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>사진</td>
                                    <td class="product_info">
                                        <p class="product_name">상풍명 : 린넨 브이넥 반팔 니트</p>
                                        <p class="option">옵션명 : black/m</p>
                                        <p class="num">1 개</p>
                                    </td>
                                    <td class="price">32,000 원</td>
                                    <td class="progress">주문 접수</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="order_section">
                    <div class="order_info">
                        <span class="date">2021-08-08</span>
                        <span class="order_num">123456789</span>
                        <a href="">주문상세보기 ></a>
                    </div>
                    <div class="order_product">
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="2">상품명</th>
                                    <th>주문금액</th>
                                    <th>진행상황</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>사진</td>
                                    <td class="product_info">
                                        <p class="product_name">상풍명 : 린넨 브이넥 반팔 니트</p>
                                        <p class="option">옵션명 : black/m</p>
                                        <p class="num">1 개</p>
                                    </td>
                                    <td class="price">32,000 원</td>
                                    <td class="progress">주문 접수</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>