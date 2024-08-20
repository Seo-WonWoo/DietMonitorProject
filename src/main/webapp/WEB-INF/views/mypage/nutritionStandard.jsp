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
					<table class="new_tbl_board tb01 mt20 mb60">
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
								<c:forEach var="Standard" items="${findTotalDietByStandard}">
								<th>${Standard.foodName}</th>
						</c:forEach>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td>기준</td>
								<c:forEach var="Standard" items="${findTotalDietByStandard}">
								<th>
									<c:if test="${Standard.foodIntake == 9999}">-</c:if>
									<c:if test="${Standard.foodIntake != 9999}">${Standard.foodIntake}</c:if>							
								</th>
								</c:forEach>
	                        </tr>
	    
	                        <tr>
	                            <td>평균</td>						
								<th>${totalDietAvg.kcal}</th>
								<th>${totalDietAvg.water}</th>
								<th>${totalDietAvg.protein}</th>
								<th>${totalDietAvg.fat}</th>						
								<th>${totalDietAvg.carbohydrate}</th>
								<th>${totalDietAvg.sugars}</th>
								<th>${totalDietAvg.dietaryFiber}</th>
								<th>${totalDietAvg.calcium}</th>
								<th>${totalDietAvg.ironContent}</th>
								<th>${totalDietAvg.phosphorus}</th>
								<th>${totalDietAvg.potassium}</th>
								<th>${totalDietAvg.sodium}</th>
								<th>${totalDietAvg.vitaminA}</th>
								<th>${totalDietAvg.retinol}</th>
								<th>${totalDietAvg.betaCarotene}</th>
								<th>${totalDietAvg.thiamine}</th>
								<th>${totalDietAvg.riboflavin}</th>
								<th>${totalDietAvg.niacin}</th>
								<th>${totalDietAvg.vitaminC}</th>
								<th>${totalDietAvg.vitaminD}</th>
								<th>${totalDietAvg.cholesterol}</th>
								<th>${totalDietAvg.saturatedFat}</th>
								<th>${totalDietAvg.transFat}</th>
	                        </tr>
	                    </tbody>
	                </table>
                </div>
                
                <!-- ---------------------그래프-------------------------- -->

				<div class="graph">
						<div class="graphBox">
							<canvas id="barCanvas"  style="width: 100%; height: 600px;"></canvas>
						</div>
				</div>
             </div>
         </section>
                
                
                
                
	


			

			<!-- ---------------------DB그래프-------------------------- -->



	<script type="text/javascript">
		//JSP에서 값을 JavaScript 변수로 전달
		var grapeData = [];
		
		var nutrienStandard = [];		
		<c:forEach var="Standard" items="${findTotalDietByStandard}">
			<c:if test="${Standard.foodIntake == 9999}">
				nutrienStandard.push(0);
			</c:if>
			<c:if test="${Standard.foodIntake != 9999}">
				nutrienStandard.push('${Standard.foodIntake}');
			</c:if>
		</c:forEach>
		
		grapeData.push(nutrienStandard);
		
		var totalDietAvg = [ '${totalDietAvg.kcal}', '${totalDietAvg.water}', '${totalDietAvg.protein}', '${totalDietAvg.fat}',
			'${totalDietAvg.carbohydrate}', '${totalDietAvg.sugars}', '${totalDietAvg.dietaryFiber}', '${totalDietAvg.calcium}',
			'${totalDietAvg.ironContent}', '${totalDietAvg.phosphorus}','${totalDietAvg.potassium}', '${totalDietAvg.sodium}',
			'${totalDietAvg.vitaminA}', '${totalDietAvg.retinol}', '${totalDietAvg.betaCarotene}', '${totalDietAvg.thiamine}',
			'${totalDietAvg.riboflavin}', '${totalDietAvg.niacin}', '${totalDietAvg.vitaminC}', '${totalDietAvg.vitaminD}',
			'${totalDietAvg.cholesterol}', '${totalDietAvg.saturatedFat}', '${totalDietAvg.transFat}' ];
		
		grapeData.push(totalDietAvg);
		
		
		
		console.log(grapeData);
		
		document.addEventListener('DOMContentLoaded', function() {
			// Chart.js가 로드된 후에 차트 생성
			barChart(grapeData); //평균 DAO
			
		});
	</script>



	<jsp:include page="../common/footer.jsp" />
</body>
</html>