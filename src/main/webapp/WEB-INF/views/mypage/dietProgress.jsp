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
							<div class="info_detail">허기가 지고 신진대사가 늦어집니다. 지방대신 근육을 태우기 시작합니다.
								근육이 제대로 회복되질 못하며 몸이 무겁고 피곤함이 계속됩니다...</div>
						</div>
						<div class="more" data-popup="1">상세보기</div>
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
						<div class="more" data-popup="2">상세보기</div>
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
						<div class="more" data-popup="3">상세보기</div>
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
						<div class="more" data-popup="4">상세보기</div>
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
						<div class="more" data-popup="5">상세보기</div>
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
						<div class="more" data-popup="6">상세보기</div>
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
						<div class="more" data-popup="7">상세보기</div>
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
						<div class="more" data-popup="8">상세보기</div>
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
						<div class="more" data-popup="9">상세보기</div>
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
						<div class="more" data-popup="10">상세보기</div>
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
						<div class="more" data-popup="11">상세보기</div>
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
						<div class="more" data-popup="12">상세보기</div>
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
						<div class="more" data-popup="13">상세보기</div>
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
						<div class="more" data-popup="14">상세보기</div>
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
						<div class="more" data-popup="15">상세보기</div>
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
						<div class="more" data-popup="16">상세보기</div>
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
						<div class="more" data-popup="17">상세보기</div>
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
						<div class="more" data-popup="18">상세보기</div>
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
						<div class="more" data-popup="19">상세보기</div>
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
						<div class="more" data-popup="20">상세보기</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</section>

	<div class="popup popup1">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">칼로리 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">허기가 지고 신진대사가 늦어집니다. 지방대신 근육을 태우기 시작합니다.
								근육이 제대로 회복되질 못하며 몸이 무겁고 피곤함이 계속됩니다.
								면역력이 강해지지 않고 아프거나 부상을 입을 수 있습니다.
								비타민B군, 비타민D 결핍이 발생할 수 있습니다.
								</div>

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
	
	<div class="popup popup2">
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
	
	<div class="popup popup3">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">당류 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info"> 당류 부족으로 인해 저혈당증이 발생할 수 있습니다. 저혈당증은 혈액 속 포도당 농도가 필요량보다 부족한 상태를 말하며, 
			혈당이 70mg/dL 이하로 떨어지면 에너지가 부족하다는 신호로 증상이 나타납니다. 저혈당증의 증상으로는 기운 없음, 몸의 떨림, 창백, 식은땀, 
			현기증, 흥분, 불안감, 가슴 두근거림, 공복감, 두통, 피로감 등이 있습니다. 이러한 증상이 있을 때, 당분을 섭취하여 혈당을 정상화시키면 
			수분 이내에 증상이 호전되지만, 만약 당분섭취를 못하여 저혈당증이 오래 지속되면 경련이나 발작이 있을 수 있고 쇼크 상태가 초래되어 의식을 
			잃을 수도 있습니다. </div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#건강한 식사</li>
				<li class="tag">#채소</li>
				<li class="tag">#과일</li>
				<li class="tag">#단백질</li>
				<li class="tag">#탄수화물1/3</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup4">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">식이섬유 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">식이섬유가 부족하면 여러 가지 건강 문제가 발생할 수 있습니다:
			변비: 식이섬유는 배변 활동을 원활하게 도와주는데, 부족하면 변이 딱딱해지고 배변이 어려워질 수 있습니다
			복부 팽만감: 소화가 잘 되지 않아 배에 가스가 차고 팽만감을 느낄 수 있습니다
			지속적인 허기: 식이섬유는 포만감을 주는 역할을 하기 때문에, 부족하면 금방 배가 고파질 수 있습니다
			피로감: 혈당 조절이 어려워져 식사 후 졸음이 쏟아지거나 피로감을 느낄 수 있습니다
			면역력 저하: 식이섬유는 장내 유익균을 증가시켜 면역력을 강화하는데, 부족하면 면역력이 약해질 수 있습니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#곡물</li>
				<li class="tag">#채소</li>
				<li class="tag">#과일</li>
				<li class="tag">#해조류</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup5">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">칼슘 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">칼슘이 부족하면 혈중 칼슘 농도가 낮아지면서 뼈에서 칼슘이 빠져나와 골밀도가 낮아지고 골다공증으로 이어질 수 있습니다. 
			또한 근육 수축과 경련이 일어날 수 있고, 신경이 예민해지거나 불면증, 월경전증후군(PMS)의 증상이 악화될 수 있습니다. 
			칼슘 부족 초기에는 증상이 확연히 느껴지지 않을 수 있지만, 계속해서 칼슘이 빠져나가면 뼈가 약해지고 작은 충격에도 골절되기 쉬워지며 
			회복이 더디게 됩니다. 골질량이 감소하면 뼈가 작은 충격에도 쉽게 부러지며, 허리가 구부러지거나 키가 줄어드는 현상도 나타난다. 
			칼슘만 섭취해선 효과가 NO! 칼슘이 뼈 건강에 매우 중요한 역할을 담당하고 있지만, 칼슘을 충분히 먹는다고 해도 뼈에 제대로 흡수되지 않는다면 
			'공염불'이 된다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#우유</li>
				<li class="tag">#치즈</li>
				<li class="tag">#요구르트</li>
				<li class="tag">#생선</li>
				<li class="tag">#무청</li>
				<li class="tag">#고춧잎</li>
				<li class="tag">#갓</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup6">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">철 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">철분이 부족하면 빈혈, 면역력 저하, 성장과 두뇌발달에 안 좋은 영향을 미칠 수 있습니다. 
			철분 결핍은 성인의 경우 혈액 손실(월경 기간 동안의 출혈 포함)로 인해 발생하지만, 소아와 임신한 여성의 경우에는 부적절한 식단으로 인해 발생하기도 합니다. 
			또한 위산 분비가 저하되거나, 위장질환이 있거나, 위암 등으로 위절제 수술을 받은 환자도 철분 흡수율이 상대적으로 낮아져서 철분 결핍이 나타날 수 있습니다. 
			또한, 철분 결핍은 다음과 같은 증상을 유발할 수 있습니다: 창백해짐, 쇠약감과 피로감, 두통, 식욕부진, 손과 발이 차가워짐, 신체적 발달 지연, 
			주의력 저하, 학습 능력의 저하, 비정상적인 행동 패턴, 기억력 감소, 손톱이 약해지고 오목하게 변하는 스푼형 손톱, 설염, 구각염.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#붉은 살코기</li>
				<li class="tag">#달걀노른자</li>
				<li class="tag">#미역</li>
				<li class="tag">#시금치</li>
				<li class="tag">#브로콜리</li>
				<li class="tag">#피조개</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup7">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">인 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">인(P) 섭취가 부족하면 신경계, 근육, 골격, 혈액, 신장 등에 해로운 영향을 미칠 수 있습니다. 식욕저하, 
			근무력증, 골연화증, 뼈 통증 등의 증상이 나타날 수 있습니다. 또한 체내에 흡수되어야 할 철분도 함께 줄어들 수 있습니다. 
			인은 칼슘과 함께 뼈를 만드는 무기질입니다. 칼슘 섭취가 부족하면 성장에 지장을 줄 수 있고, 인 섭취가 부족하면 뼈가 약해질 수 있습니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#붉은 살코기</li>
				<li class="tag">#달걀노른자</li>
				<li class="tag">#미역</li>
				<li class="tag">#시금치</li>
				<li class="tag">#브로콜리</li>
				<li class="tag">#피조개</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup8">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">칼륨 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">칼륨이 부족하면 저칼륨혈증(Hypokalemia)이 발생할 수 있습니다. 
			저칼륨혈증의 증상으로는 근육 약화, 수축, 마비, 이상 심장 박동, 피로, 식욕 감퇴, 근력 저하, 무기력, 근육통, 전신 마비, 발작, 
			변비, 메스꺼움, 불안, 불면증 등이 있습니다. 칼륨 부족의 원인으로는 구토, 설사, 부신 장애, 이뇨제 사용, 쿠싱증후군, 칼륨 섭취 결핍, 
			고알도스테론증, 흡수 불량증후군, 아세트아미노펜 과다 복용 등이 있습니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#김</li>
				<li class="tag">#미역</li>
				<li class="tag">#땅콩</li>
				<li class="tag">#아보카도</li>
				<li class="tag">#고구마</li>
				<li class="tag">#적상추</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup9">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">나트륨 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">나트륨이 부족하면 저나트륨혈증이 발생할 수 있습니다. 저나트륨혈증은 뇌가 혈중 나트륨 수치 변화에 민감하기 때문에
			뇌 기능장애 증상이 먼저 나타납니다. 대표적인 증상으로는 기면, 혼돈, 구토, 설사, 과도한 발한, 두통, 오심, 흥분 등이 있습니다. 
			혈중 나트륨 수치가 빠르게 떨어지면 증상이 빠르고 더 심각하게 발생하며, 노인은 중증 증상이 발생할 가능성이 더 높습니다. 
			저나트륨혈증이 더 심각해지면 근육수축 및 발작이 발생할 수 있으며, 환자가 반응이 없어져 강한 자극에만 반응하고 결국 반응할 수 없게 되어 
			사망할 수도 있습니다. / 
			나트륨은 몸의 수분량을 조절하는 중요한 영양소이지만, 많이 먹게 되면 혈압이 오르는 등 건강에 좋지 않을 수 있기 때문에 많이 섭취하지 않도록 
			주의해야 합니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#바나나</li>
				<li class="tag">#브로콜리</li>
				<li class="tag">#가지</li>
				<li class="tag">#토마토</li>
				<li class="tag">#쑥갓</li>
				<li class="tag">#검은콩</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup10">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">비타민 A 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">비타민 A가 부족하면 다음과 같은 증상이 나타날 수 있습니다. 
			야맹증: 어두운 곳에서 잘 보이지 않는 증상으로, 비타민 A 결핍의 초기 증상입니다. 
			안구건조증: 영양분 섭취가 부족한 어린이에게 흔히 발생하며, 각막이 약해지고 실명으로 이어질 수 있습니다. 
			피부질환: 피부가 건조해지고 부스럼이 잘 생기며, 여드름이 자주 납니다. 
			잇몸이 약해지고 입맛이 둔해질 수도 있습니다. 
			비타민 A 결핍은 비타민 A 함유량이 적은 식단이나, 흡수 또는 간 장애로 인해 초래될 수 있습니다. 며칠간 고용량의 비타민 A를 투여하면 결핍이 해결됩니다. .</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#동물의 간</li>
				<li class="tag">#유제품</li>
				<li class="tag">#생선</li>
				<li class="tag">#달걀</li>
				<li class="tag">#당근</li>
				<li class="tag">#시금치</li>
				<li class="tag">#단호박</li>
				<li class="tag">#귤</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup11">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">레티놀 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">레티놀, 즉 비타민A가 부족하면 다음과 같은 증상이 나타날 수 있습니다. 야맹증, 각막건조증, 각질연화증, 성장저해, 피부 건조, 여드름, 부스럼, 잇몸 약화, 입맛 둔화. 
			비타민A 결핍은 비타민A 함유량이 적은 식단이나, 흡수 또는 간 장애로 인해 발생할 수 있습니다. 진단은 증상과 혈액 검사를 토대로 이루어지며, 며칠간 고용량의 비타민A를 투여하면 결핍이 해결됩니다. 
			비타민A는 체내에서 자연적으로 생성되지 않으므로, 스킨케어 제품을 통해 국소적으로 바르는 것이 피부에서 비타민A의 효능을 가장 잘 누릴 수 있는 방법입니다. 
			비타민A는 과하게 섭취해도 문제가 됩니다. 권장량의 10배가 넘는 레티놀을 장기간 복용하면 메스꺼움, 두통, 식욕 저하, 어지러움이 나타날 수 있어요. 피부가 건조해지고 피로감을 느낍니다. 심하면 간 손상, 출혈, 혼수 등도 나타날 수 있습니다.
			</div>
			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup12">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">베타카로틴 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">베타카로틴은 비타민 A의 전구체로 항산화 작용을 하며 백내장, 노인기 황반변성 등의 안구 질환을 예방하는 효과가 있습니다. 
			베타카로틴이 부족하면 비타민 A가 부족할 수 있는데, 비타민 A가 부족하면 다음과 같은 증상이 나타날 수 있습니다:
			야맹증, 안구건조증, 각막연화, 피부 질환, 성장이 느려짐, 철 결핍성 빈혈, 태아 발육 문제.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#당근</li>
				<li class="tag">#시금치</li>
				<li class="tag">#동물의 간</li>
				<li class="tag">#유제품</li>
				<li class="tag">#생선</li>
				<li class="tag">#달걀</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup13">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">티아민 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">티아민(비타민 B1)이 부족하면 초기에는 피로, 불안, 두통, 허약감 등의 증상이 나타나며, 결핍이 심해지면 각기병, 
			베르니케 뇌병증 등의 중증 질환이 발생할 수 있습니다:
			각기병: 심혈관계와 신경계 장애를 보이는 질환으로, 말초혈관 확장, 심장근육 약화, 심부전증, 부종, 근육통, 팔다리의 감각, 
			운동 및 반사 기능 장애 등의 증상이 나타날 수 있습니다
			베르니케 뇌병증: 중추신경계에 이상이 생기는 질환으로, 눈의 증상이 좋아지더라도 뇌 손상이 남을 수 있습니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup14">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">리보플라빈 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">리보플라빈(비타민 B2)이 부족하면 입술과 눈꺼풀에 염증이 생길 수 있습니다. 리보플라빈은 탄수화물, 지방, 단백질 
			대사에 필요한 효소의 구성 성분으로 3대 영양소를 에너지로 바꿀 때 쓰이며, 점막, 피부, 손톱, 두발조직 등의 세포 성장과 유지에도 필수적인 
			역할을 합니다. 나타나는 증상으로는 입 안쪽과 입술에 통증이 있는 갈라짐,입과 혀가 화끈거리고 혀가 자홍색으로 변함,
			코 주변, 코와 입술 사이, 귀와 눈꺼풀, 음부에 빨간색의 지성 각질(지루)이 나타남, 중성지방 축적, 성장 정지, 조기 노화,
			설염, 구각염, 구순염, 빈혈, 신경계 질병, 정신 착란</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#유제품과 육류</li>
				<li class="tag">#닭고기</li>
				<li class="tag">#생선</li>
				<li class="tag">#콩류</li>
				<li class="tag">#채소류</li>
				<li class="tag">#곡류</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup15">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">니아신 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">니아신(비타민 B3)이 부족하면 펠라그라라는 질환이 생길 수 있습니다. 펠라그라의 증상으로는 다음과 같은 것이 있습니다:
			피부염, 설사, 치매, 사망 등 4D 증상
			손, 발, 종아리, 목, 얼굴에 암적색의 뚜렷한 발진
			혀와 입이 암적색으로 변함
			소화관 문제, 피로, 불면증, 무관심
			착란과 기억 상실
			얼굴, 목, 손목, 가슴 부위, 손등과 같이 주로 햇빛에 노출되는 부위에 통증을 동반한 대칭적인 홍반, 수포 발생
			표피가 벗겨지며 경계가 명확한 색소가 침착되어 피부에 남음</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#생선</li>
				<li class="tag">#고기</li>
				<li class="tag">#콩류</li>
				<li class="tag">#땅콩</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup16">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">비타민 C 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">비타민 C가 부족하면 피로감, 쇠약감, 과민감, 체중 감소, 근육 물렁해짐, 관절통, 식욕 부진, 우울증 등의 증상이 나타날 수 있습니다. 
			또한, 피부와 머리카락이 건조하고 탄력이 없어지며, 상처가 생겼을 때 치유 속도가 느려질 수 있습니다. 모세혈관이 약해지면서 피부에 멍, 반점이나 출혈이 나타나기도 하고, 
			잇몸이 붓고 보라색으로 변하며 스폰지처럼 될 수 있습니다. 
			장기간 비타민 C가 부족하면 괴혈병(Scurvy)이 나타날 수 있습니다. 괴혈병의 증상은 비타민 C가 결핍된 후 3개월이 지나서부터 서서히 나타나며, 
			주된 증상으로는 출혈과 뼈의 변질이 있습니다. 초기에는 전신의 권태와 무력감이 나타나고, 심해지면 관절이 붓고 골격통증이 나타날 수 있습니다. 
			비타민 C는 콜라겐 등 결합조직 생성에 필수적인 요소이기 때문에, 비타민 C가 부족하면 결합조직에 이상이 생길 수 있습니다. 
			또한, 비타민 C는 우리 몸에서 철의 흡수를 촉진하는 데도 도움을 주기 때문에 철결핍성빈혈과 관련된 증상으로 피로와 쇠약감을 느낄 수 있습니다. 
			비타민 C는 항산화 작용을 통해 각종 질환과 암을 예방하는 작용을 하며, 피부, 혈관, 힘줄, 인대 등의 신체 조직을 튼튼하게 구성하는 단백질인 
			콜라겐 합성을 돕습니다. 또한, 심폐기능을 향상시켜 미세먼지로 인한 심혈관계 및 폐질환 위험 감소에도 중요한 역할을 합니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#오렌지</li>
				<li class="tag">#딸기</li>
				<li class="tag">#키위</li>
				<li class="tag">#토마토</li>
				<li class="tag">#브로콜리</li>
				<li class="tag">#케일</li>
				<li class="tag">#감자</li>
				<li class="tag">#리치</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup17">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">비타민 D 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">비타민 D가 부족하면 뼈가 약해지고, 근육통이 생기거나, 뼈가 쑤시고 관절이 삐거덕거리는 등의 증상이 나타날 수 있습니다. 
			또한 비타민 D가 부족하면 칼슘과 인이 뼈에 축적되지 못해 뼈의 밀도가 감소하고, 골다공증, 골연화증, 구루병 등의 질환이 발생할 수 있습니다. 
			성장기 어린이와 청소년의 경우 오자 다리, 척추만곡, 치아 이상의 위험도 증가합니다. 
			비타민 D 부족의 가장 일반적인 원인은 식단에 비타민 D가 부족하거나 햇빛 노출이 부족한 경우입니다. 특정 장애가 비타민 D 결핍을 초래할 수도 있습니다. 
			비타민 D 부족을 진단하려면 혈액 검사나 X-선 촬영을 실시할 수 있습니다. 비타민 D 보충제를 경구 투여하거나 주사로 투여하면 완전히 회복할 수 있습니다. 
			뼈 약화, 골연화증, 골감소증, 골다공증 등 뼈 이상, 근육 약화, 근력 저하, 피로, 두통, 근골격 통증, 쇠약, 우울증, 인지 장애
			수면장애, 감기, 비만, 충치, 관절염, 치매, 당뇨, 심근경색, 고혈압, 잦은 근육통, 뼈가 쑤시고 관절이 쑤심. 탈모</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#등푸른 생선</li>
				<li class="tag">#동물의 간</li>
				<li class="tag">#달걀노른자</li>
				<li class="tag">#버섯</li>
				<li class="tag">#우유</li>
				<li class="tag">#치즈</li>
				<li class="tag">#요구르트</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup18">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">콜레스테롤 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">콜레스테롤 섭취가 부족하면 암, 기억력 소실, 파킨슨 병, 호르몬 불균형, 뇌졸중, 우울증, 자살, 과격한 행동 등의 
			문제가 생길 수 있습니다. 또한 몸에 좋은 콜레스테롤인 HDL 콜레스테롤이 부족하면 심혈관 질환이나 뇌졸중에 걸릴 확률이 높아질 수 있습니다. 
			HDL 콜레스테롤을 높이는 가장 확실한 방법은 규칙적인 운동이며, 비만인 경우 몸무게를 줄이는 것도 도움이 됩니다. 
			콜레스테롤은 약 30% 정도가 음식을 통해서 흡수되므로 식습관에 따라 큰 영향을 받습니다. 콜레스테롤 수치를 적정하게 유지하기 위해서는 
			기름진 음식과 탄수화물 위주의 식사를 피하고 균형 잡힌 건강한 식사를 하는 것이 좋습니다. 또한 소고기, 돼지고기에 있는 동물성 기름과 버터, 
			쇼트닝 등 포화지방산은 피하는 것이 좋습니다. 절주와 금연도 필수적입니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup19">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">포화지방산 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">포화지방산 섭취가 부족하면 암 발생, 기억력 소실, 파킨슨 병, 호르몬 불균형, 뇌졸중, 우울증, 자살, 과격한 행동 등이 
			나타날 수 있습니다. 또한 지방 섭취가 부족하면 혈액 응고나 상처 회복에 문제가 생길 수도 있습니다. 포화지방산은 체내 인슐린저항성을 높여 
			체지방량을 증가시키기 때문에 비만과 제2형 당뇨병 발생 위험율을 높입니다. 지방은 동물성인 버터, 육류의 지방과 식물성인 콩기름, 올리브유, 
			들기름 등 유지류와 그 밖에 어패류, 견과류, 우유 및 유제품에 많이 함유되어 있습니다.
			</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
			</ul>
		</div>
	</div>
	
	<div class="popup popup20">
		<div class="box">
			<div class="close">
				<img src="../images/sub/icon/close-x.svg" alt="">
			</div>
			<div class="title">트렌스지방산 섭취가 부족할 경우 나타나는 현상</div>
			<div class="info">트랜스지방산은 포화지방산과 유사한 성질을 가지고 있으며, 많으면 심혈관 질환이나 뇌졸중 발병 위험을 높이기 때문에 적당량 조절이 필요합니다. 
			트랜스지방산이 부족하면 뇌세포가 교란되어 과잉행동장애 같은 증상이 나타날 수 있습니다.</div>

			<div class="wrap_s mt40 mb30">
				<img src="../images/sub/icon/Icon fa-solid-star.svg" alt="">
				<p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
			</div>
			<ul class="tag_inner wrap_s">
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
				<li class="tag">#</li>
			</ul>
		</div>
	</div>
	

	<!-- ---------------------선 그래프-------------------------- -->

		<div class="inner">
			<div class="wrap">
				<c:forEach var="i" begin="1" end="23">
					<div class="graphBox" style="width: 48%; height: 400px;">
						<canvas class="lineCanvas"></canvas>
					</div>
				</c:forEach>
			</div>
		</div>

	<script type="text/javascript">
		//JSP에서 값을 JavaScript 변수로 전달
		var grapeData = [];

		var nutrienStandard = []; //회원별 섭취 영양소 기준 
		
		<c:forEach var="Standard" items="${NutrientStandardByMemberInfo}">
			<c:if test="${Standard.foodIntake == 9999}">
				nutrienStandard.push(0);
			</c:if>
			<c:if test="${Standard.foodIntake != 9999}">
				nutrienStandard.push('${Standard.foodIntake}');
			</c:if>
		</c:forEach>
		
		grapeData.push(nutrienStandard);
		
		nutrientIntakePrograss = [];	// 그래프로 보내기 위해 JSON 형식으로 배열에 담아서 출력
		
		<c:forEach var="item" items="${DailyTotalNutrientForPast30DaysByMemberInfo}">
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
		
		document.addEventListener('DOMContentLoaded', function() {	//그래프 사용 선언
			lineChart(grapeData); 
		});
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>