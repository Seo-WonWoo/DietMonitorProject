<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>							
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="header_inner">
            <div class="top_nav">
                <div class="inner">
                    <ul class="gnb wrap_s">
                    	
                    	<c:if test="${empty profiles}">
                             <li class="lnb"><a href="/login" class="login">로그인</a></li>
                             <li class="lnb"><a href="/signup" class="signup">회원가입</a></li>
                             <li class="lnb"><a href="/login" class="admin">프로필관리</a></li>
                             <i class="fas fa-times"></i>
                        </c:if>
                    	
                    	<c:if test="${not empty profiles}">                    	
                    		<c:forEach var="profile" items="${profiles}">
                    			<c:if test="${profile.memberNo eq memberNo}">
		                             <li class="lnb mr20">${profile.nickname} 님 환영합니다!</li>
		                             <li class="lnb main_profile">
		                                 <img src="../images/header/profile/profile_${profile.iconId}.png">
		                             </li>
		                             <li class="lnb"><a href="/logout" class="logout">로그아웃</a></li>
		                             <li class="lnb"><a href="/mypage/manageProfile" class="admin">프로필관리</a></li>
		                             <i class="fas fa-times"></i>
	                             </c:if>
                             </c:forEach>
                         </c:if>
                         
                    </ul>
                </div>
            </div>
            <div class="profile_inner">
		<div class="profile">
			<p class="title ml5">프로필 전환</p>
			<ul class="box_wrap wrap">
				<c:forEach var="profile" items="${profiles}" varStatus="status">
						<li class="box">
							<form action="/switchProfile" method="post">
								<input type="hidden" name="accountNo" value="${profile.accountNo}">
			                    <input type="hidden" name="memberNo" value="${profile.memberNo}">
			                    <button type="submit">
			                    	<img src="../images/header/profile/profile_${profile.iconId}.png">
			                        <p>${profile.nickname}</p>
			                    </button>
							</form>
						</li>
						
				</c:forEach>

				<c:set var="profileCount" value="${fn:length(profiles)}" />
				
				<c:if test="${profileCount < 5}">
					<c:forEach var="i" begin="1" end="${5 - profileCount}">
						<li class="box"><a href="/mypage/manageProfile">
								<img src="../images/header/propile_add.svg" alt="">
								<p>추가</p>
						</a></li>
					</c:forEach>
				</c:if>
			</ul>
			
			<div class="profile_btn mt20 wrap_s">
				<i class="fas fa-cog mr10"></i>
				<a href="/mypage/manageProfile">프로필관리</a>
			</div>
		</div>
		</div>
		<!-- 모바일 햄버거-->
    <div class="h_moblie">
        <div class="bg">

            <ul class="main_menu">
                <li><a href="#"><span>영양정보 찾아보기</span><span class="f_rigth">+</span></a>
                    <ul class="snd_menu">
                        <li><a href="/foodSearch"><span>식품으로 찾아보기</span><span class="f_rigth">+</span></a>
                        </li>
                    </ul>
                </li>
                <li><a href="#"><span>섭취식품</span><span class="f_rigth">+</span></a>
                    <ul class="snd_menu">
                        <li><a href="/diet/dailyDiet"><span>하루섭취 금일식단</span><span class="f_rigth">+</span></a>
                        </li>
                        <li><a href="/diet/expectedDiet"><span>하루섭취 예상식단</span><span class="f_rigth">+</span></a>
                        </li>
                    </ul>
                </li>
                <li><a href="#"><span>마이페이지</span><span class="f_rigth">+</span></a>
                    <ul class="snd_menu">
                        <li><a href="/mypage/accountInfo"><span>내 정보</span><span class="f_rigth">+</span></a>
                        </li>
                        <li><a href="/mypage/dietHistory"><span>나의 영양성분 저장 기록</span><span class="f_rigth">+</span></a>
                        </li>
                        <li><a href="/mypage/nutritionStandard"><span>나의 영양성분 일일 권장량</span><span class="f_rigth">+</span></a>
                        </li>
                        <li><a href="/mypage/dietProgress"><span>나의 영양성분 비교분석</span><span class="f_rigth">+</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
		<div class="nav">
                <div class="inner">
                    <div class="menu_inner wrap">
                        <h1 class="logo">
                            <a href="/">
                                <img src="../images/header/logo/header_logo.png" alt="로고이미지">
                            </a>
                        </h1>
    					
    					<div class="top_menu">
                            <div class="wrap">
                                <a href="#"><i class="fas fa-bars"></i></a>
                            </div>
                        </div>
    					
                        <div class="menu">
                            <ul class="gnb dap1 wrap">
                                <li class="lnb"><a href="/foodSearch">영양정보 찾아보기</a>
                                    <ul class="gnb dap2">
                                        <li class="lnb lnb_tit">
                                            <p>영양정보 찾아보기</p>
                                        </li>
                                        <li class="lnb lnb_cont menu-placeholder"></li>
                                    </ul>
                                </li>
                                <li class="lnb"><a href="/diet/dailyDiet">섭취 식품</a>
                                    <ul class="gnb dap2">
                                        <li class="lnb lnb_tit">
                                            <p>섭취 식품</p>
                                        </li>
                                        <li class="lnb lnb_cont menu-placeholder"></li>
                                    </ul>
                                </li>
                                <li class="lnb"><a href="/mypage/accountInfo">마이페이지</a>
                                    <ul class="gnb dap2">
                                        <li class="lnb lnb_tit">
                                            <p>마이페이지</p>
                                        </li>
                                        <li class="lnb lnb_cont menu-placeholder"></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
    
            </div>
        </div>
</body>
</html>