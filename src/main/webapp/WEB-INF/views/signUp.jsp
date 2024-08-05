<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>							
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="./css/base.css" rel="stylesheet">
    <link href="./css/common.css" rel="stylesheet">
    <script type="text/javascript" src="./script/header.js"></script>

    <title>foodIngredients</title>
</head>
<body>
	<header id="header">
        <div class="header_inner header_sub">
            <jsp:include page="header.jsp" />
        </div>
    </header>


    <section class="signup">
        <div class="inner">
            <div class="sig_inner">
            	<form action="/signup" method="post">
                <div class="sig_inputs">
                    <div class="sig_title">회원가입</div>
	                    <div class="sig_input wrap_s">
	                        <p>이메일<span class="red">*</span></p>
	                        <input type="text" name="email" id="inputEmail" placeholder="이메일을 입력해 주세요" value="${user.email}">
	                        <button class="check_btn" type="button">중복확인</button>
	                        <c:if test="${ not empty userValidError.id }">
								<br/>
									<span class="red">${userValidError.id}</span>
								<br/>
							</c:if>
							<span id="dupMsg"></span>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>비밀번호<span class="red">*</span></p>
	                        <input type="text" name="pw" placeholder="비밀번호를 입력해 주세요" value="${user.pw}">
	                        <c:if test="${ not empty userValidError.pw }">
								<br/>
									<span class="red">${userValidError.pw}</span>
								<br/>
							</c:if>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>비밀번호확인<span class="red">*</span></p>
	                        <input type="text" name="chkPw" placeholder="비밀번호를 한번 더 입력해 주세요" value="${user.chkPw}">
	                        <c:if test="${ not empty userValidError.chkPw }">
								<br/>
									<span class="red">${userValidError.chkPw}</span>
								<br/>
							</c:if>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>이름<span class="red">*</span></p>
	                        <input type="text" name="name" placeholder="이름을 입력해주세요" value="${user.name}">
	                        <c:if test="${ not empty userValidError.name }">
								<br/>
									<span class="font-error">${userValidError.name}</span>
								<br/>
							</c:if>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>전화번호<span class="red">*</span></p>
	                        <input type="tel" name="tel" placeholder="전화번호를 입력해주세요" value="${user.tel}">
	                        <c:if test="${ not empty userValidError.tel }">
								<br/>
									<span class="font-error">${userValidError.tel}</span>
								<br/>
							</c:if>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>생년월일<span class="red">*</span></p>
	                        <input type="text" name="birth" placeholder="생년월일 6자리를 입력해주세요" value="${user.birth}">
	                        <c:if test="${ not empty userValidError.birth }">
								<br/>
									<span class="font-error">${userValidError.birth}</span>
								<br/>
							</c:if>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>성별<span class="red">*</span></p>
	                        <div class="wrap_s">
	                        	<span class="mr20"><input type="radio" name="chk_info" value="${user.gender}" checked="checked">남자</span>
	                            <span><input type="radio" name="chk_info" value="${user.gender}">여자</span>
	                        </div>
	                    </div>
	                </div>
                <button class="common_btn" type="submit">가입하기</button>
                </form>
            </div>
            
            
        </div>

    </section>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
    
		$(document).ready(function(){
			
			$('.check_btn').click(function(){
				
				let inputEmail = $('#inputEmail').val();
				//let inputEmail = document.getElementById('inputEmail').value;
				
				console.log('버튼 눌림');
				console.log(inputEmail);
				
				let requestJsonData = {
					'email':inputEmail,
				};
				console.log(requestJsonData);
				
				let requestJsonDataString = JSON.stringify(requestJsonData);
				console.log(requestJsonDataString);
				
				$.ajax({
					type: "POST",
					url: "http://localhost:8080/customer/isDuplicatedEmail",
					headers:{
						"Content-type":"application/json;charset:UTF-8"
					},
					//dataType: 'text',  //요청->응답 데이터의 형태	text
					dataType: 'json',  //요청->응답 데이터의 형태	json
					data:requestJsonDataString, //전송할 데이터
					//data:inputId, //전송할 데이터
					success: function(result){	// 'N'	콜백함수
						console.log(result);
						console.log(result.header.resultCode);
						console.log(result.body);
					
						if(result.header.resultCode == '200'){
							$('#dupMsg').text('사용 가능한 이메일입니다.');
						} else {
							$('#dupMsg').text('이미 가입된 이메일입니다.');
						}
					
					},
					error: function(error){
						console.log(error);
					}
				});
			});
			
		});
		
		
	</script>



    <jsp:include page="footer.jsp" />
</body>
</html>