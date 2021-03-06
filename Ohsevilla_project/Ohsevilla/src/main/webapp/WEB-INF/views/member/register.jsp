<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/views/include/metaHeader.jsp" %>
	<link rel="stylesheet" href="/ohsevilla/css/member/join.css">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/ohsevilla/js/member/join.js"></script>
</head>
<body>
	
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	 <div class="container">
	     <div class="join_section">
	         <h1 class="join_title">JOIN MEMBER</h1>
	         <form id="join" method="post">
	             <label for="id">
	                 아이디<span>*</span>
	                 <input type="text" name="id" id="id" placeholder="아이디" required>
	                 <span id="msg" class="display_none"></span>
	             </label>
	             <label for="password">
	                 비밀번호<span>*</span>
	                 <input type="password" name="password" id="password" placeholder="비밀번호" required>
	             </label>
	             <label for="password_ck">
	                 비밀번호 확인<span>*</span>
	                 <input type="password" name="password_ck" id="password_ck" placeholder="비밀번호 재입력" required>
	             </label>
	             <label for="name">
	                 이름<span>*</span>
	                 <input type="text" name="name" id="name" placeholder="이름" required>
	             </label>
	             <label for="email">
	                 이메일<span>*</span>
	                 <input type="text" name="email" id="email" placeholder="이메일" required>
	             </label>
	             <label for="phone">
	                 휴대폰 번호<span>*</span>
	                 <input type="text" name="phone" id="phone" placeholder="휴대폰 번호" required>
	             </label>
	             <label for="sample6_postcode">
	                 주소<span>*</span>
	                 <div id="address_div">
		                 <input type="text" id="sample6_postcode" name="address1" placeholder="우편번호" required>
		                 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
		                 <input type="text" id="sample6_address" name="address2" placeholder="주소" required>
		                 <input type="text" id="sample6_detailAddress" name="address3" placeholder="상세주소" required>
		                 <!-- <input type="text" id="sample6_extraAddress" placeholder="참고항목"> -->
	                 </div>
	             </label>
	
	             <div class="agree_section">
	                 <h3>약관동의</h3>
	                 <div class="check_box">
	                     <input type="checkbox" name="check_all" id="check_all">
	                     <label for="check_all">전체 동의</label>
	                 </div>
	                 <div class="check_box">
	                     <input type="checkbox" name="check_1" id="check_1" required>
	                     <label for="check_1">이용약관 동의<span class="red">[필수]</span></label>
	                     <div class="more_btn"></div>
	                     <div class="agree_content">
	                         이용약관 내용
	                     </div>
	                 </div>
	                 <div class="check_box">
	                     <input type="checkbox" name="check_2" id="check_2" required>
	                     <label for="check_2">개인정보수집 동의<span class="red">[필수]</span></label>
	                     <div class="more_btn"></div>
	                     <div class="agree_content">
	                         개인정보수집
	                     </div>
	                 </div>
	                 <div class="check_box">
	                     <input type="checkbox" name="check_3" id="check_3">
	                     <label for="check_3">이벤트/마케팅 수신 동의<span>[선택]</span></label>
	                     <div class="more_btn"></div>
	                     <div class="agree_content">
	                         이벤트/마케팅 수신 동의
	                     </div>
	                 </div>
	             </div>
	             <button type="submit" class="join_btn">회원가입</button>
	         </form>
	     </div>
	 </div>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	
	<!-- <script>
		$(document).ready(function(){
			
			$('#id').focusin(function(){
				$('#msg').addClass('display_none');
				$('#msg').removeClass('color_blue');
				$('#msg').removeClass('color_red');
				$(this).val('');
			});
			
			$('#id').focusout(function(){
				// ajax 비동기 통신 => id를 서버로 보내고 사용 가능 유무의 응답 코드를 받는다 => 화면에 메세지 출력
				console.log('start');
				var id = $(this).val();
				console.log(id);
				
				$.ajax({
					url : '/Ohsevilla/member/idCheck.do',
					type : 'post',
					data : {
						'id':id
						},
					success : function(data){
						console.log(data);
						console.log(url);
						// data : Y / N
						if(data == 'Y'){
							$('#msg').html('사용가능');
							$('#msg').addClass('color_blue');
							$('#msg').removeClass('display_none');
						} else {
							$('#msg').html('사용불가능');
							$('#msg').addClass('color_red');
							$('#msg').removeClass('display_none');
						}
					}, 
					error : function(request, status, error){
						alert('서버 통신에 문제가 발생했습니다. 다시 실행해주세요.');
						console.log(request);
						console.log(status);
						console.log(error);
						console.log(url);
					}
				})
			});
		});
	</script> -->
	
	
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
</body>
</html>