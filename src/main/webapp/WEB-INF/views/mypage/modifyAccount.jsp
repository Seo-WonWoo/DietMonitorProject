<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="../css/base.css" rel="stylesheet">
<link href="../css/common.css" rel="stylesheet">
<script type="text/javascript" src="../script/header.js"></script>

<title>foodIngredients</title>
</head>
<body>
	<header id="header">
		<div class="header_inner header_sub">
			<jsp:include page="../common/header.jsp" />
		</div>
	</header>


	<section class="signup sig_modify">
		<div class="inner">
			<div class="sig_inner">
				<form action="/mypage/modifyAccount" method="post">
				<div class="sig_inputs">
					<div class="sig_title">회원정보수정</div>
					
					<c:if test="${user.memberNo eq 1}">
					
					<div class="sig_input wrap_s readonly">
						<p>
							이메일<span class="red">*</span>
						</p>
						<input type="text" name="email" 
							value="${user.email}" readonly>
					</div>
					<div class="sig_input wrap_s">
						<p>
							비밀번호<span class="red">*</span>
						</p>
						<input type="password" name="pw" placeholder="비밀번호를 입력해 주세요"
							value="${user.pw}">
						<c:if test="${ not empty userValidError.pw }">
							<br />
							<span class="red">${userValidError.pw}</span>
							<br />
						</c:if>
					</div>
					<div class="sig_input wrap_s">
						<p>
							비밀번호 확인<span class="red">*</span>
						</p>
						<input type="password" name="chkPw" placeholder="비밀번호를 한번 더 입력해 주세요"
							value="${user.chkPw}">
						<c:if test="${ not empty userValidError.chkPw }">
							<br />
							<span class="red">${userValidError.chkPw}</span>
							<br />
						</c:if>
					</div>
					<div class="sig_input wrap_s">
						<p>
							이름<span class="red">*</span>
						</p>
						<input type="text" name="name" placeholder="이름을 입력해주세요"
							value="${user.name}">
						<c:if test="${ not empty userValidError.name }">
							<br />
							<span class="red">${userValidError.name}</span>
							<br />
						</c:if>
					</div>
					</c:if>
					
					
					<div class="sig_input wrap_s">
						<p>
							프로필 닉네임<span class="red">*</span>
						</p>
						<input type="text" name="nickname" placeholder="비밀번호를 입력해 주세요"
							value="${user.nickname}">
						<c:if test="">
							<br />
							<span class="red"></span>
							<br />
						</c:if>
					</div>
					<div class="sig_input wrap_s">
						<p>프로필 선택<span class="red">*</span></p>
						<div class="cc-selector">
							<c:forEach var="i" begin="1" end="9" step="1">
								<c:if test="${user.iconId == i}">
									<input style="display: none;" id="profile${i}" type="radio" name="iconId" value="${i}" checked/> 
									<label class="drinkcard-cc profiles" for="profile${i}">
										<img src="../images/header/profile/profile_${i}.png">
									</label>
								</c:if>
								<c:if test="${user.iconId != i}">
									<input style="display: none;" id="profile${i}" type="radio" name="iconId" value="${i}"/> 
									<label class="drinkcard-cc profiles" for="profile${i}">
										<img src="../images/header/profile/profile_${i}.png">
									</label>
								</c:if>
							</c:forEach>
						</div>
					</div>
					
					<c:if test="${user.memberNo eq 1}">
						<div class="sig_input wrap_s">
							<p>
								전화번호<span class="red">*</span>
							</p>
							<input type="tel" name="tel" placeholder="전화번호를 입력해주세요"
								value="${user.tel}">
							<c:if test="${ not empty userValidError.tel }">
								<br />
								<span class="red">${userValidError.tel}</span>
								<br />
							</c:if>
						</div>
					</c:if>
					<div class="sig_input wrap_s">
						<p>
							생년월일<span class="red">*</span>
						</p>
						<input type="text" name="birth" placeholder="생년월일 6자리를 입력해주세요"
							value="${user.birth}">
						<c:if test="${ not empty userValidError.birth }">
							<br />
							<span class="red">${userValidError.birth}</span>
							<br />
						</c:if>
					</div>
					<div class="sig_input wrap_s">
						<p>
							성별<span class="red">*</span>
						</p>
						<div class="wrap_s">
							<span class="mr20"> <input type="radio" name="genderId"
								value="3" id="male" checked="checked"> <label for="male">남자</label>
							</span> <span> <input type="radio" name="genderId" value="4"
								id="female"> <label for="female">여자</label>
							</span>
						</div>
					</div>
					
					<div class="sig_input wrap_s">
						<p>
							임신/수유 유무<span class="red">*</span>
						</p>
						<div class="wrap_s">							
							<span class="mr20"> <input type="checkbox" id="pregnant" class="otherCondition"> <label for="pregnant">임신</label></span>
							<span class="mr20"> <input type="checkbox" id="lactation" class="otherCondition"> <label for="lactation">수유</label></span>
						</div>
					</div>
					
				</div>

				<button class="common_btn" type="submit">회원정보수정</button>
				
				</form>
			</div>


		</div>

	</section>

	<jsp:include page="../common/footer.jsp" />
	
	<script>
		$(document).ready( function(){
			
			$('input[type="checkbox"][class="otherCondition"]').change( function(){
				
				if( $(this).prop('checked') ){
					$('input[type="checkbox"][class="otherCondition"]').prop('checked',false);
					$(this).prop('checked',true);
				}
				
				if( $('input[type="checkbox"][id="pregnant"]').prop("checked") ){
					$('input:radio[name="genderId"]').val(5);					
					$('input[type="radio"][id="female"]').prop('checked',true);
					
				}
				
				if( $('input[type="checkbox"][id="lactation"]').prop("checked") ){
					$('input:radio[name="genderId"]').val(6);
					$('input[type="radio"][id="female"]').prop('checked',true);
				}
				
			});
		});
	</script>
</body>
</html>