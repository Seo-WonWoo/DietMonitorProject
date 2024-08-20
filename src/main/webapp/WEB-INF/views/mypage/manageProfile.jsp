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
<link href="../css/board.css" rel="stylesheet">
<link href="../css/common.css" rel="stylesheet">
<script type="text/javascript" src="../script/header.js"></script>

<title>프로필 관리 - 식품영양성분</title>
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
                                    <a href="/diet/dailyDiet" class="arrow">섭취식품</a>
                                    <ul>
                                        <li>
                                            <a href="/diet/dailyDiet" class="on">하루섭취 금일식단</a>
                                        </li>
                                        <li>
                                            <a href="/diet/expectedDiet" class="arrow">하루섭취 예상식단</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="snb">
                                <li>
                                    <a href="/mypage/accountInfo" class="on arrow">마이페이지</a>
                                    <ul>
                                        <li>
                                            <a href="/mypage/accountInfo" >내 정보</a>
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
	<section class="signup">
		<div class="inner">
			<div class="sig_inner">
				<div class="sig_inputs">
					<div class="sig_title">프로필 추가</div>
					<form action="/addProfile" method="POST">
						<div class="sig_input wrap_s">
							<p>
								프로필 닉네임<span class="red">*</span>
							</p>
							<input type="text" name="nickname" placeholder="닉네임을 입력해주세요">
						</div>
						
						<div class="sig_input wrap_s">
							<p>프로필 선택<span class="red">*</span></p>
							<div class="cc-selector">
								<c:forEach var="i" begin="1" end="9" step="1"  varStatus="status">
	    							<c:if test="${status.count == 1}">
										<input style="display: none;" id="profile${i}" type="radio" name="iconId" value="${i}" checked/> 
										<label class="drinkcard-cc profiles" for="profile${i}">
											<img src="../images/header/profile/profile_${i}.png">
										</label>
									</c:if>
									<c:if test="${status.count != 1}">
										<input style="display: none;" id="profile${i}" type="radio" name="iconId" value="${i}"/> 
										<label class="drinkcard-cc profiles" for="profile${i}">
											<img src="../images/header/profile/profile_${i}.png">
										</label>
									</c:if>
								</c:forEach>
							</div>
						</div>						
						
						<div class="sig_input wrap_s">
							<p>
								생년월일<span class="red">*</span>
							</p>
							<input type="text" name="birth" placeholder="년월일 8자리를 입력해주세요">
							<c:if test="${ not empty userValidError.birth }">
									<br/>
										<span class="red">${userValidError.birth}</span>
									<br/>
							</c:if>
						</div>
						<div class="sig_input wrap_s">
							<p>
								성별<span class="red">*</span>
							</p>
							<div class="wrap_s">
								<span class="mr20"> <input type="radio" name="genderId"
									value="3" id="male" checked="checked"> <label
									for="male">남자</label>
								</span> <span> <input type="radio" name="genderId" value="4"
									id="female"> <label for="female">여자</label>
								</span>
							</div>
						</div>
					</div>
					<button class="common_btn" type="submit">프로필 추가</button>
				</form>
			</div>


			<section class="table_menu">
				<div class="inner">
					<table id="find_business_table"
						class="new_tbl_board tb01 mt20 mb60">
						<colgroup>
							<col style="width: 2%;">
							<col style="width: 45%;">
							<col style="width: 15%;">
							<col style="width: 15%;">
							<col style="width: 30%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">닉네임</th>
								<th scope="col">나이</th>
								<th scope="col">성별</th>
								<th scope="col">프로필삭제</th>
							</tr>
						</thead>
						<tbody id="memberList">
							<c:forEach var="profile" items="${profiles}" varStatus="status">
								<tr onclick="">
									<td>${status.count}</td>
									<td>${profile.nickname}</td>
									<td>${profile.age}</td>
									<td>${profile.genderName}</td>
									<td>
										<c:if test="${status.count ne 1}">
											<form action="/removeProfile" method="post" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
				                                <input type="hidden" name="accountNo" value="${profile.accountNo}">
				                                <input type="hidden" name="memberNo" value="${profile.memberNo}">
				                                <button class="board_td_btn" type="submit">프로필삭제</button>
				                            </form>
										</c:if>
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</section>


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