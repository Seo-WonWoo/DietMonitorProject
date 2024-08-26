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
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<link href="../css/base.css" rel="stylesheet">
<link href="../css/common.css" rel="stylesheet">
<link href="../css/board.css" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js"
	integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="../script/header.js"></script>
<script type="text/javascript" src="../script/common.js"></script>
<script type="text/javascript" src="../script/graph.js"></script>

<title>영양 일일 권장량 - 식품영양성분</title>
</head>
<body>
	<header id="header">
		<div class="header_inner header_sub">
			<jsp:include page="../common/header.jsp" />
		</div>
	</header>

	<div class="sub_content"></div>
	<section class="sub_title">
		<div class="inner">
			<div class="wrap">
				<h1 class="title">나의 영양성분 일일 권장량</h1>
				<div class="route wrap">
					<a href="../index.html"><img class="home center"
						src="../images/sub/icon/material-home.svg" alt="홈 아이콘"></a>
					<div class="route_info wrap">
						<a href="/mypage/accountInfo"><span class="dap1">마이페이지</span></a>
						 <a href="/mypage/nutritionStandard"><span class="dap2">나의 영양성분 일일 권장량</span></a>
					</div>
				</div>
			</div>

		</div>

	</section>

	<!-- -------------------------------표------------------------------------------->
	
	<section class="table_menu">
				<div class="inner">
					<div class="wrap">
						<p class="table_menu_sub">영양소 섭취 기준</p>
						
						<div class="pagenation_btn wrap">
							<div class="slider_prev">
								<img src="../images/sub/icon/slider/slider-left.svg" alt="">
							</div>
							<div class="slider_next">
								<img src="../images/sub/icon/slider/slider-right.svg" alt="">
							</div>
						</div>
					</div>
					<div class="table_inner">
					<table border="1" class="new_tbl_board tb01 mt20 mb60">
	                    <colgroup>
	                        <col style="width: 4%;">
	                        <col style="width: 15%;">
	                        <col style="width: 10%;">
	                        <col style="width: 10%;">
	                        <col style="width: 7%;">
	                    </colgroup>
	                    <thead>
	                        <tr>
	                            <th>구분</th>
								<c:forEach var="Standard" items="${NutrientStandardByMemberInfo}">
								<th>${Standard.foodName}</th>
						</c:forEach>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td>기준</td>
								<c:forEach var="Standard" items="${NutrientStandardByMemberInfo}">
								<th>
									<c:if test="${Standard.foodIntake == 9999}">-</c:if>
									<c:if test="${Standard.foodIntake != 9999}">${Standard.foodIntake}</c:if>							
								</th>
								</c:forEach>
	                        </tr>
	    
	                        <tr>
	                            <td>평균</td>						
								<th>${AvgWeeklyNutrientByMemberInfo.kcal}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.water}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.protein}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.fat}</th>						
								<th>${AvgWeeklyNutrientByMemberInfo.carbohydrate}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.sugars}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.dietaryFiber}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.calcium}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.ironContent}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.phosphorus}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.potassium}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.sodium}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.vitaminA}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.retinol}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.betaCarotene}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.thiamine}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.riboflavin}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.niacin}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.vitaminC}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.vitaminD}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.cholesterol}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.saturatedFat}</th>
								<th>${AvgWeeklyNutrientByMemberInfo.transFat}</th>
	                        </tr>
	                    </tbody>
	                </table>
                </div>
                
                <!-- ---------------------막대 그래프-------------------------- -->

							<canvas id="barCanvas"></canvas>

         </section>

	<script type="text/javascript">
		//JSP에서 값을 JavaScript 변수로 전달
		var grapeData = [];	
		
		var nutrienStandard = [];	//회원별 섭취 영양소 기준 
		
		<c:forEach var="Standard" items="${NutrientStandardByMemberInfo}">
			<c:if test="${Standard.foodIntake == 9999}">
				nutrienStandard.push(0);
			</c:if>
			<c:if test="${Standard.foodIntake != 9999}">
				nutrienStandard.push('${Standard.foodIntake}');
			</c:if>
		</c:forEach>
		
		grapeData.push(nutrienStandard);
		
		var AvgWeeklyNutrientByMemberInfo = [ '${AvgWeeklyNutrientByMemberInfo.kcal}', '${AvgWeeklyNutrientByMemberInfo.water}', '${AvgWeeklyNutrientByMemberInfo.protein}', '${AvgWeeklyNutrientByMemberInfo.fat}',
			'${AvgWeeklyNutrientByMemberInfo.carbohydrate}', '${AvgWeeklyNutrientByMemberInfo.sugars}', '${AvgWeeklyNutrientByMemberInfo.dietaryFiber}', '${AvgWeeklyNutrientByMemberInfo.calcium}',
			'${AvgWeeklyNutrientByMemberInfo.ironContent}', '${AvgWeeklyNutrientByMemberInfo.phosphorus}','${AvgWeeklyNutrientByMemberInfo.potassium}', '${AvgWeeklyNutrientByMemberInfo.sodium}',
			'${AvgWeeklyNutrientByMemberInfo.vitaminA}', '${AvgWeeklyNutrientByMemberInfo.retinol}', '${AvgWeeklyNutrientByMemberInfo.betaCarotene}', '${AvgWeeklyNutrientByMemberInfo.thiamine}',
			'${AvgWeeklyNutrientByMemberInfo.riboflavin}', '${AvgWeeklyNutrientByMemberInfo.niacin}', '${AvgWeeklyNutrientByMemberInfo.vitaminC}', '${AvgWeeklyNutrientByMemberInfo.vitaminD}',
			'${AvgWeeklyNutrientByMemberInfo.cholesterol}', '${AvgWeeklyNutrientByMemberInfo.saturatedFat}', '${AvgWeeklyNutrientByMemberInfo.transFat}' ];
		
		grapeData.push(AvgWeeklyNutrientByMemberInfo);
		//회원별 섭취한 영양소의 일주일 데이터
		
		console.log(grapeData);
		
		document.addEventListener('DOMContentLoaded', function() {	//그래프 사용 선언
            setTimeout(function() {
                barChart(grapeData);
            }, 500);
        });
		
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>