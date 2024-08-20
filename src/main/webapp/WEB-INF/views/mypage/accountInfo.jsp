<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js"
	integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="../script/header.js"></script>
<script type="text/javascript" src="../script/graph.js"></script>

<title>내 정보 - 식품영양성분</title>
</head>
<body>
	<header id="header">
		<div class="header_inner header_sub">
			<jsp:include page="../common/header.jsp" />
		</div>
	</header>

    <section id="container" class="content">
        <div class="inner">
            <div class="wrap">
                <div class="left">
                    <div class="snb_wrap web">
                        <div class="snb_tit">
                            <div class="title">
                                <h2></h2>
                            </div>
                        </div>
                        <nav>
                            <ul class="snb">
                                <li>
                                    <a href="/foodSearch" class="arrow">영양정보 찾아보기</a>
                                    <ul>
                                        <li>
                                            <a href="/foodSearch" class="on">식품으로 찾아보기</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="snb">
                                <li>
                                    <a href="/diet/dailyDiet" class="arrow">섭취식품 등록</a>
                                    <ul>
                                        <li>
                                            <a href="/diet/dailyDiet" class="on">하루섭취 금일식단 식품 등록</a>
                                        </li>
                                        <li>
                                            <a href="/diet/expectedDiet" class="arrow">하루섭취 예상식단 식품 등록</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="snb">
                                <li>
                                    <a href="/mypage/accountInfo" class="on arrow">마이페이지</a>
                                    <ul>
                                        <li>
                                            <a href="/mypage/accountInfo" class="on">내 정보</a>
                                        </li> 
                                        <li>
                                            <a href="/mypage/dietHistory" >나의 영양성분 저장 기록</a>
                                        </li>
                                        <li>
                                            <a href="/mypage/nutritionStandard" >나의 영양성분 일일 권장량</a>
                                        </li>
                                        <li>
                                            <a href="/mypage/dietProgress">나의 영양성분 비교분석</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            
                        </nav>
                    </div>
                </div>
                <div class="right">
                    <div class="container_box">
    <section class="signup sig_modify">
        <div class="inner">
            <div class="sig_inner">
                <div class="sig_inputs">
                    <div class="sig_title">내 정보</div>

					<div class="sig_input wrap_s mt20">
                        <p>프로필</p>
                        <p class="information profiles">
                        	<img src="../images/header/profile/profile_${user.iconId}.png">
                        </p>
                    </div>
                    
                    <c:if test="${user.memberNo eq 1}">
	                    <div class="sig_input active wrap_s">
	                        <p>이메일</p>
	                        <p class="information">${user.email}</p>
	                    </div>
	                    <div class="sig_input wrap_s">
	                        <p>이름</p>
	                        <p class="information">${user.name}</p>
	                    </div>
                    </c:if>
                    <div class="sig_input wrap_s">
                        <p>닉네임</p>
                        <p class="information">${user.nickname}</p>
                    </div>
                    <c:if test="${user.memberNo eq 1}">
	                    <div class="sig_input wrap_s">
	                        <p>전화번호</p>
	                        <p class="information">${user.tel}</p>
	                    </div>
                    </c:if>
                    <div class="sig_input wrap_s">
                        <p>생년월일</p>
                        <p class="information">${user.birth}</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>나이</p>
                        <p class="information">${user.age}</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>성별</p>
                        <p class="information">${user.genderName}</p>
                    </div>
                </div>
                
                <button class="common_btn" onclick="location.href='/mypage/modifyAccount'">회원정보수정</button>
            </div>
        </div>
    </section>
                       </div>
                </div>
            </div>
        </div>
    </section>
</div>
</div>
</div>
</div>
</section>

	

		<jsp:include page="../common/footer.jsp" />
</body>
</html>