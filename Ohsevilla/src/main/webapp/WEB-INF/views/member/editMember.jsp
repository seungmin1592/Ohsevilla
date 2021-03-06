<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/css/style.css">
<link rel="stylesheet" href="<%= request.getContextPath()%>/css/member/editMember.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<%= request.getContextPath()%>/js/script.js"></script>
<script>
	//다음 주소 API
		function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                /* document.getElementById("sample6_extraAddress").value = extraAddr; */
	            
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	}
</script>
<title>Ohsevilla</title>
</head>
<body>

	<%@ include file="/WEB-INF/include/header.jsp" %>
	<div class="container">
     	<div class="edit_section">
            <h1 class="edit_title">EDIT INFORMATION</h1>
            	<form action="${root}/member/editMemberOk.do" id="edit" method="post">
	                <label for="id">
	                    아이디<span>*</span>
	                    <input type="text" name="id" id="id" value="${member.id}" readonly>
	                </label>
	                <label for="password">
	                    변경할 비밀번호<span>*</span>
	                    <input type="password" name="password" id="password" placeholder="비밀번호" required>
	                </label>
	                <label for="password_ck">
	                    비밀번호 확인<span>*</span>
	                    <input type="password" name="password_ck" id="password_ck" placeholder="비밀번호 재입력" required>
	                </label>
	                <label for="name">
	                    이름<span>*</span>
	                    <input type="text" name="name" id="name" value="${member.name}" required>
	                </label>
	                <label for="email">
	                    이메일<span>*</span>
	                    <input type="text" name="email" id="email"  value="${member.email}" required>
	                </label>
	                <label for="phone">
	                    휴대폰 번호<span>*</span>
	                    <input type="text" name="phone" id="phone"  value="${member.phone}" required>
	                </label>
	                <label for="sample6_postcode">
	                    주소<span>*</span>
	                   	<div id="address_div">
		                    <input type="text" id="sample6_postcode"  name="address1" value="${member.address1}">
		                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		                    <input type="text" id="sample6_address"  name="address2" value="${member.address2}"><br>
		                    <input type="text" id="sample6_detailAddress" name="address3" value="${member.address3}">
	                    </div>
	                </label>
	                <button type="submit" class="edit_btn">회원 정보 수정</button>
                </form>
            </div>
        </div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>