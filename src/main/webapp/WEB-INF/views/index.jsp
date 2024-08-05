<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="header_inner">
        	<jsp:include page="header.jsp" />
        </div>
        

        <div class="quick_menu">
            <div class="inner">
                <div class="quick_inner">
                    <div class="box">
                        <a href="">
                            <div class="pic center">
                                <img src="./images/main/icon/quick_icon1.png" alt="식품으로 찾아보기  아이콘">
                            </div>
                            <div class="info">
                                식품으로<br>찾아보기
                            </div>
                        </a>
                    </div>
                    <div class="box">
                        <a href="">
                            <div class="pic center">
                                <img src="./images/main/icon/quick_icon2.png" alt="하루섭취 식품등록  아이콘">
                            </div>
                            <div class="info">
                                하루섭취<br>식품등록
                            </div>
                        </a>
                    </div>
                    <div class="box">
                        <a href="">
                            <div class="pic center">
                                <img src="./images/main/icon/quick_icon3.png" alt="나의 하루 섭취 식품 아이콘">
                            </div>
                            <div class="info">
                                나의 하루<br>섭취 식품
                            </div>
                        </a>
                    </div>
                    <div class="box"></div>
                    <div class="box">
                        <a href="">
                            <div class="pic center">
                                <img src="./images/main/icon/quick_icon4.png" alt="나의 영양성분 저장 기록 아이콘">
                            </div>
                            <div class="info">
                                나의 영양성분<br>저장 기록
                            </div>
                        </a>
                    </div>
                    <div class="box">
                        <a href="">
                            <div class="pic center">
                                <img src="./images/main/icon/quick_icon5.png" alt="나의 영양성분 일일 권장량 아이콘">
                            </div>
                            <div class="info">
                                나의 영양성분<br>일일 권장량
                            </div>
                        </a>
                    </div>
                </div>

            </div>

        </div>
    </header>

	

    <section class="search">
        <div class="inner">
            <div class="search_inner">
                <p class="search_info">검색창에 영양정보가 궁금한 식품을 검색해서 손쉽게 영양성분을 알아보세요</p>

                <div class="search_input wrap">
                    <p class="title">식품명</p>
                    <input type="search" value="" placeholder="영양정보가 궁금한 식품을 입력해주세요">
                    <button class="search_icon center" type="submit">
                        <img src="./images/main/icon/akar-search.svg" alt="">
                    </button>
                </div>
            </div>

        </div>

    </section>

    <section class="service_detail">
        <div class="service_box"></div>
        <div class="inner">
            <h2 class="title">서비스 상세설명</h2>
            <p class="title_exp">서비스 메뉴들의 상세설명을 확인하세요</p>
            <div class="swiper-container service_list">
                <div class="swiper-wrapper">
                    <div class="swiper-slide wrap">
                        <div class="pic">
                            <img src="./images/main/service_img01.jpg" alt="서비스 상세설명 이미지">
                        </div>
                        <div class="info">
                            <div class="info_inner">
                                <div class="slide_title_inner wrap">
                                    <p class="slide_title">식품으로 찾아보기</p>
                                    <div class="pagenation">
                                        <div class="pn_num wrap">
                                            <div class="num">01</div>
                                            <div class="num_icon">
                                                <img src="./images/main/icon/akar-circle-alert-fill.svg"
                                                    alt="페이지네이션 아이콘">
                                            </div>
                                            <div class="num_icon">
                                                <img src="./images/main/icon/akar-circle-alert-fill.svg"
                                                    alt="페이지네이션 아이콘">
                                            </div>
                                            <div class="num_icon">
                                                <img src="./images/main/icon/akar-circle-alert-fill.svg"
                                                    alt="페이지네이션 아이콘">
                                            </div>
                                            <div class="pn_inner wrap">
                                                <div class="prev">
                                                    <img src="./images/main/icon/akar-chevron-left-small.svg"
                                                        alt="이전 이동 아이콘">
                                                </div>
                                                <div class="stop">
                                                    <img src="./images/main/icon/akar-two-line-vertical.svg"
                                                        alt="멈춤 아이콘">
                                                </div>
                                                <!-- <div class="start">
                                                    <img src="./images/main/icon/akar-ion-play.svg" alt="재생 아이콘">
                                                </div> -->
                                                <div class="next">
                                                    <img src="./images/main/icon/akar-chevron-right-small.svg"
                                                        alt="다음 이동 아이콘">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <p class="explanation">
                                    '영양성분으로 찾아보기' 메뉴를 이용하면 영양성분별 함량이 높은 식품을 확인할 수 있어요<br> 궁금한 영양성분명을 검색해보세요
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>



    <jsp:include page="footer.jsp" />
</body>
</html>