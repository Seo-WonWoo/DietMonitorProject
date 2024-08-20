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
<link href="../css/board.css" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js"
	integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="../script/header.js"></script>
<script type="text/javascript" src="../script/common.js"></script>
<script type="text/javascript" src="../script/graph.js"></script>

<title>영양성분 비교분석 - 식품영양성분</title>
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
				<h1 class="title">나의 영양성분 비교분석</h1>
				<div class="route wrap">
					<a href="../index.html"><img class="home center"
						src="../images/sub/icon/material-home.svg" alt="홈 아이콘"></a>
					<div class="route_info wrap">
						<a href="/mypage/accountInfo"><span class="dap1">마이페이지</span></a>
						 <a href="/mypage/dietProgress"><span class="dap2">나의 영양성분 비교분석</span></a>
					</div>
				</div>
			</div>

		</div>

	</section>




	<section class="decibal_title mb80">
		<div class="inner">
			<div class="info">
				<span class="blue_style">에너지(kcal),</span> <span class="blue_style">탄수화물(g),</span>
				<span class="blue_style">지방(g)</span> <span class="text">섭취가
					너무 적어요.</span>
			</div>
			<div class="wrap mb50">
				<p class="text">부족한 영양성분의 상세 설명과 추천 식품이 궁금하시다면 해당 영양성분의 상세보기를
					눌러주세요.</p>
				<div class="page_nation wrap">
					<div class="slide_prev">
						<img src="../images/sub/icon/slider/akar-chevron-left-small.svg"
							alt="">
					</div>
					<div class="slide_stop">
						<img src="../images/sub/icon/slider/akar-two-line-vertical.svg"
							alt="">
					</div>
					<div class="slide_next">
						<img src="../images/sub/icon/slider/akar-chevron-right-small.svg"
							alt="">
					</div>
				</div>
			</div>

			<div class="slide_cont_box swiper-container">
                <div class="swiper-wrapper">
                    <div class="slide_box wrap">
                        <div class="box swiper-slide">
						<div class="title_food">에너지(kcal)</div>
						<div class="info">
							<div class="info_title">칼로리 섭취가 부족할 경우</div>
							<div class="info_detail">허기가 지고 신진대사가 늦어짐. 지방대신 근육을 태움
								근육이 제대로 회복되질 못함 몸이 무겁고 피곤함이 계속됨...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>

				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">탄수화물(g)</div>
						<div class="info">
							<div class="info_title">탄수화물 섭취가 부족할 경우</div>
							<div class="info_detail">탄수화물 섭취가 부족하면 저혈당 증상이 나타나고, 피로감, 무기력감, 활력 저하, 정신 기능 지체, 수면 부족 등의 증상이 나타날 수 있습니다. 
								또한 탄수화물이 부족하면 지방뿐만 아니라 근육을 에너지원으로 활용하여 근손실이 일어나고, 심각할 경우 일상생활에서 어려움을 겪을 수 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">당류(g)</div>
						<div class="info">
							<div class="info_title">당류 섭취가 부족할 경우</div>
							<div class="info_detail">당류 부족으로 인해 저혈당증이 발생할 수 있습니다. 저혈당증은 혈액 속 포도당 농도가 필요량보다 부족한 상태를 말하며, 
								혈당이 70mg/dL 이하로 떨어지면 에너지가 부족하다는 신호로 증상이 나타납니다....</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">식이섬유(g)</div>
						<div class="info">
							<div class="info_title">식이섬유 섭취가 부족할 경우</div>
							<div class="info_detail">식이섬유가 부족하면 여러 가지 건강 문제가 발생할 수 있습니다. 변비: 식이섬유는 배변 활동을 원활하게 도와주는데, 
								부족하면 변이 딱딱해지고 배변이 어려워질 수 있습니다....</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">칼슘(mg)</div>
						<div class="info">
							<div class="info_title">칼슘 섭취가 부족할 경우</div>
							<div class="info_detail">칼슘이 부족하면 혈중 칼슘 농도가 낮아지면서 뼈에서 칼슘이 빠져나와 골밀도가 낮아지고 골다공증으로 이어질 수 있습니다. 
								또한 근육 수축과 경련이 일어날 수 있고, 신경이 예민해지거나 불면증, 월경전증후군(PMS)의 증상이 악화될 수 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">철(mg)</div>
						<div class="info">
							<div class="info_title">철 섭취가 부족할 경우</div>
							<div class="info_detail">철분이 부족하면 빈혈, 면역력 저하, 성장과 두뇌발달에 안 좋은 영향을 미칠 수 있습니다. 철분 결핍은 성인의 경우 
								혈액 손실(월경 기간 동안의 출혈 포함)로 인해 발생하지만, 소아와 임신한 여성의 경우에는 부적절한 식단으로 인해 발생하기도 합니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">인(mg)</div>
						<div class="info">
							<div class="info_title">인 섭취가 부족할 경우</div>
							<div class="info_detail">인(P) 섭취가 부족하면 신경계, 근육, 골격, 혈액, 신장 등에 해로운 영향을 미칠 수 있습니다. 식욕저하, 근무력증, 
								골연화증, 뼈 통증 등의 증상이 나타날 수 있습니다. 또한 체내에 흡수되어야 할 철분도 함께 줄어들 수 있습니다. ...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">칼륨(mg)</div>
						<div class="info">
							<div class="info_title">칼륨 섭취가 부족할 경우</div>
							<div class="info_detail">칼륨이 부족하면 저칼륨혈증(Hypokalemia)이 발생할 수 있습니다. 저칼륨혈증의 증상으로는 근육 약화, 수축, 마비, 
								이상 심장 박동, 피로, 식욕 감퇴, 근력 저하, 무기력, 근육통, 전신 마비, 발작, 변비, 메스꺼움, 불안, 불면증 등이 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">나트륨(mg)</div>
						<div class="info">
							<div class="info_title">나트륨 섭취가 부족할 경우</div>
							<div class="info_detail">나트륨이 부족하면 저나트륨혈증이 발생할 수 있습니다. 저나트륨혈증은 뇌가 혈중 나트륨 수치 변화에 민감하기 때문에 
								뇌 기능장애 증상이 먼저 나타납니다. 대표적인 증상으로는 기면, 혼돈, 구토, 설사, 과도한 발한, 두통, 오심, 흥분 등이 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">비타민 A(μg RAE)</div>
						<div class="info">
							<div class="info_title">비타민 A 섭취가 부족할 경우</div>
							<div class="info_detail">비타민 A 섭취가 부족하면 야맹증, 안구건조증, 피부질환 등의 증상이 나타날 수 있습니다.  야맹증 : 어두운 곳에서 
							잘 보이지 않는 증상으로, 초기 증상이며 심해지면 밤에 외출하기가 힘들어집니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">레티놀(μg)</div>
						<div class="info">
							<div class="info_title">레티놀 섭취가 부족할 경우</div>
							<div class="info_detail">이하 상동 / 비타민A 는 과하게 섭취해도 문제가 됩니다. 권장량의 10배가 넘는 레티놀을 장기간 복용하면 메스꺼움, 두통, 
								식욕 저하, 어지러움이 나타날 수 있습니다. 피부가 건조해지고 피로감을 느낍니다. 심하면 간 손상, 출혈, 혼수 등도 나타날 수 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">베타카로틴(μg)</div>
						<div class="info">
							<div class="info_title">베타카로틴 섭취가 부족할 경우</div>
							<div class="info_detail">베타카로틴은 비타민 A의 전구체로 항산화 작용을 하며 백내장, 노인기 황반변성 등의 안구 질환을 예방하는 효과가 있습니다. 
								베타카로틴이 부족하면 비타민 A가 부족할 수 있는데, 비타민 A가 부족하면 다음과 같은 증상이 나타날 수 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">티아민(mg)</div>
						<div class="info">
							<div class="info_title">티아민 섭취가 부족할 경우</div>
							<div class="info_detail">티아민(비타민 B1)이 부족하면 초기에는 피로, 불안, 두통, 허약감 등의 증상이 나타나며, 결핍이 심해지면 각기병, 
							베르니케 뇌병증 등의 중증 질환이 발생할 수 있습니다. 각기병: 심혈관계와 신경계 장애를 보이는 질환으로, 말초혈관 확장, 심장근육 약화...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">리보플라빈(mg)</div>
						<div class="info">
							<div class="info_title">리보플라빈 섭취가 부족할 경우</div>
							<div class="info_detail">리보플라빈(비타민 B2)이 부족하면 입술과 눈꺼풀에 염증이 생길 수 있습니다. 리보플라빈은 탄수화물, 지방, 단백질 
								대사에 필요한 효소의 구성 성분으로 3대 영양소를 에너지로 바꿀 때 쓰이며...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">니아신(mg)</div>
						<div class="info">
							<div class="info_title">니아신 섭취가 부족할 경우</div>
							<div class="info_detail">니아신(비타민 B3)이 부족하면 펠라그라라는 질환이 생길 수 있습니다. 펠라그라의 증상으로는 다음과 같은 것이 있습니다.
								피부염, 설사, 치매, 사망 등 4D 증상 손, 발, 종아리, 목, 얼굴에 암적색의 뚜렷한 발진...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">비타민 C(mg)</div>
						<div class="info">
							<div class="info_title">비타민 C 섭취가 부족할 경우</div>
							<div class="info_detail">비타민 C가 부족하면 피로감, 쇠약감, 과민감, 체중 감소, 근육 물렁해짐, 관절통, 식욕 부진, 우울증 등의 증상이 나타날 수 있습니다. 
								또한, 피부와 머리카락이 건조하고 탄력이 없어지며, 상처가 생겼을 때 치유 속도가 느려질 수 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">비타민 D(μg)</div>
						<div class="info">
							<div class="info_title">비타민 D 섭취가 부족할 경우</div>
							<div class="info_detail">비타민 D가 부족하면 뼈가 약해지고, 근육통이 생기거나, 뼈가 쑤시고 관절이 삐거덕거리는 등의 증상이 나타날 수 있습니다. 또한 
								비타민 D가 부족하면 칼슘과 인이 뼈에 축적되지 못해 뼈의 밀도가 감소하고...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">콜레스테롤(mg)</div>
						<div class="info">
							<div class="info_title">콜레스테롤 섭취가 부족할 경우</div>
							<div class="info_detail">콜레스테롤 섭취가 부족하면 암, 기억력 소실, 파킨슨 병, 호르몬 불균형, 뇌졸중, 우울증, 자살, 과격한 행동 등의 문제가 생길 수 있습니다. 
								또한 몸에 좋은 콜레스테롤인 HDL 콜레스테롤이 부족하면 심혈관 질환이나 뇌졸중에 걸릴 확률이 높아질 수 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">포화지방산(g)</div>
						<div class="info">
							<div class="info_title">포화지방산 섭취가 부족할 경우</div>
							<div class="info_detail">포화지방산 섭취가 부족하면 암 발생, 기억력 소실, 파킨슨 병, 호르몬 불균형, 뇌졸중, 우울증, 자살, 과격한 행동 등이 나타날 수 있습니다. 
								또한 지방 섭취가 부족하면 혈액 응고나 상처 회복에 문제가 생길 수도 있습니다...</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				<div class="slide_box wrap">
					<div class="box swiper-slide">
						<div class="title_food">트랜스지방산(g)</div>
						<div class="info">
							<div class="info_title">트랜스지방산 섭취가 부족할 경우</div>
							<div class="info_detail">트랜스지방산은 포화지방산과 유사한 성질을 가지고 있으며, 많으면 심혈관 질환이나 뇌졸중 발병 위험을 높이기 때문에 적당량 조절이 필요합니다
							트랜스지방산이 부족하면 뇌세포가 교란되어 과잉행동장애 같은 증상이 나타날 수 있습니다....</div>
						</div>
						<div class="more">상세보기</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</section>

	<div class="popup">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">칼로리 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">신체가 기능하려면 단백질이 필요하며 근육은 이 단백질의 주요 공급원입니다. 근육 이화작용이 발생하여 신체가 근육 단백질을 동원하여 칼로리로 전환하게 됩니다. 
								결과적으로 근육이 작아집니다. 칼로리가 부족한 식단과 규칙적인 운동을 하면 지방이 많이 줄어들더라도 근육량도 감소하게 됩니다. 그로인해
								허기가 지고 신진대사가 늦어지며, 지방대신 근육을 태우기 시작합니다. 근육이 제대로 회복되질 못하며 몸이 무겁고 피곤함이 계속됩니다. 
								면역력이 강해지지 않고 아프거나 부상을 입을 확률이 높아집니다. 비타민B군, 비타민D 결핍이 발생할 수 있습니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#건강한 식단</li>
				<li class="tag">#풍부한 채소</li>
				<li class="tag">#단백질</li>
				<li class="tag">#불포화 지방산</li>
			</ul>
		</div>
	</div>
	
	<div class="popup">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">탄수화물 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">탄수화물 섭취가 부족하면 저혈당 증상이 나타나고, 피로감, 무기력감, 활력 저하, 정신 기능 지체, 수면 부족 등의 증상이 나타날 수 있습니다. 
				또한 탄수화물이 부족하면 지방뿐만 아니라 근육을 에너지원으로 활용하여 근손실이 일어나고, 심각할 경우 일상생활에서 어려움을 겪을 수 있습니다. 
				탄수화물은 근육을 움직이는 연료로, 근육을 움직여야 근육이 만들어집니다. 탄수화물이 부족하면 우리 몸은 당을 만들기 위해 근육을 분해하여 근육이 줄어들 수 있습니다. 
				또한 탄수화물 섭취가 부족하면 몸에서는 포도당을 대신할 다른 에너지원을 만들어내기 위해 지방을 분해하여 케톤체가 합성되기도 합니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#현미</li>
				<li class="tag">#보리</li>
				<li class="tag">#귀리</li>
				<li class="tag">#통곡물</li>
				<li class="tag">#과일</li>
			</ul>
		</div>
	</div>

	<!-- ---------------------그래프-------------------------- -->

	<div class="graph">
		<div class="inner">
			<div class="wrap">
				<c:forEach var="i" begin="1" end="23">
					<div class="graphBox" style="width: 48%; height: 400px;">
						<canvas class="lineCanvas"></canvas>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

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
		
		nutrientIntakePrograss = [];
		
		<c:forEach var="item" items="${totalDietListMonthSum}">
			var nutrientIntakeItem = {
				saveDate : '${item.saveDate}',
				kcal : '${item.kcal}',
				water : '${item.water}',
				protein : '${item.protein}',
				fat : '${item.fat}',
				batch : '${item.batch}',
				carbohydrate : '${item.carbohydrate}',
				sugars : '${item.sugars}',
				dietaryFiber : '${item.dietaryFiber}',
				calcium : '${item.calcium}',
				ironContent : '${item.ironContent}',
				phosphorus : '${item.phosphorus}',
				potassium : '${item.potassium}',
				sodium : '${item.sodium}',
				vitaminA : '${item.vitaminA}',
				retinol : '${item.retinol}',
				betaCarotene : '${item.betaCarotene}',
				thiamine : '${item.thiamine}',
				riboflavin : '${item.riboflavin}',
				niacin : '${item.niacin}',
				vitaminC : '${item.vitaminC}',
				vitaminD : '${item.vitaminD}',
				cholesterol : '${item.cholesterol}',
				saturatedFat : '${item.saturatedFat}',
				transFat : '${item.transFat}'
			};	
			nutrientIntakePrograss.push(nutrientIntakeItem);
		</c:forEach>
		
		grapeData.push(nutrientIntakePrograss);		
		
		document.addEventListener('DOMContentLoaded', function() {			
			lineChart(grapeData); //한달
		});
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>