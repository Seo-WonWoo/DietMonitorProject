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
    <link href="./css/board.css" rel="stylesheet">
    <link href="./css/import.css" rel="stylesheet">
    <script type="text/javascript" src="./script/header.js"></script>
    <script type="text/javascript" src="./script/common.js"></script>

    <title>foodIngredients</title>
</head>
<body>
	<header id="header">
        <div class="header_inner header_sub">
            <jsp:include page="header.jsp" />
        </div>
    </header>



   <div class="sub_content"></div>

    <section class="sub_title">
        <div class="inner">
            <div class="wrap">
                <h1 class="title">식품으로 찾아보기</h1>
                <div class="route wrap">
                    <a href="./index.html"><img class="home center" src="./images/sub/icon/material-home.svg"
                            alt="홈 아이콘"></a>
                    <div class="route_info wrap">
                        <a href="./foodSearchList.html"><span class="dap1">영양정보 찾아보기</span></a>
                        <a href="./foodSearchList.html"><span class="dap2">식품으로 찾아보기</span></a>
                    </div>
                </div>
            </div>

        </div>

    </section>


    <div id="content">
        <div class="inner">
            <div style="position:relative;">
                <p class="box_tip">선택한 식품에 대한 1회 제공량에 대한 에너지를 나타내고, 1일 영양성분 대비 기준치는 성인을 기준으로 계산했어요.</p>
    
            </div>
    
            <div class="bbsTitle box type02">
                <em>식품 및 음식명
    
                </em>
                <h3>햄버거</h3>
    
    
                <span class="sub easy">햄버거</span>
                <!-- 제조사 -->
                <span class="sub ref">식품의약품안전처</span>
    
    
    
    
    
    
    
            </div>
    
            <div data-skin-food="table">
                <dl>
                    <dt>데이터구분</dt>
                    <dd>음식</dd>
                    <dt>식품기원</dt>
                    <dd>가정식</dd>
                    <dt>대표식품명</dt>
                    <dd>햄버거</dd>
                    <dt style="width:7%;">식품분류</dt>
                    <dd style="width:22%;">
                        <div class="class-group"><span class="class-depth01">빵 및 과자류</span><span
                                class="class-depth02">해당없음</span><span class="class-depth03">해당없음</span></div>
                    </dd>
                    <dt>품목대표/상용제품</dt>
                    <dd>품목대표</dd>
                </dl>
                <dl>
                    <dt>총 내용량</dt>
                    <dd>
    
                        200g
    
    
                    </dd>
                    <dt>영양성분 함량 기준량</dt>
                    <dd>100g</dd>
                    <dt>1회 섭취참고량</dt>
                    <dd></dd>
                    <dt>데이터생성방법명</dt>
                    <dd>분석</dd>
                    <dt>데이터생성일자</dt>
                    <dd>2019-12-31</dd>
                    <dt>데이터기준일자</dt>
                    <dd>2024-03-11</dd>
                </dl>
            </div>
    
    
    
    
            <div class="box_flex mt10">
                <!-- 프랜차이즈 문구 추가 조건  -->
    
                <div class="btn">
                    <a href="javascript:;" id="excelButton" onclick="return false;"
                        class="button white docs-creator"><span>이전 화면으로</span></a>
                </div>
            </div>
    
    
            <div data-skin-food="simple" class="mt20">
                <ul data-skin-food="head">
                    <li>분류</li>
                    <li style="width:30%">영양성분</li>
                    <li style="width:18%">100g 당 함량</li>
                    <li style="width:20%" data-skin-food="input">
                        <div id="defaultServingSizeForm">
                            <input type="number" name=" " id="servingSize" value="100" size="5" title="영양성분입력항목">
                            <a href="javascript:;" class="button sm black docs-creator"
                                onclick="javascript:fnObj.fnSearch(1);"><span>적용</span></a>
                        </div>
                    </li>
                    <li style="width:15%">1일영양섭취기준(%)</li>
                </ul>
    
                <!-- 검색되었을대 검색된 결과랑 일치할경우 data-skin-food="cell" 항목에 class active 추가 -->
                <div data-skin-food="list">
                    <div data-skin-food="row">
    
    
                        <!--  성분 타이틀 -->
                        <em>일반성분</em>
    
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">에너지</span>
                            <span style="width:18%" class="tac">264.00㎉&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">264.00㎉</span>
                            <span style="width:15%" class="tac">13.20%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">탄수화물</span>
                            <span style="width:18%" class="tac">21.67g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">21.67g</span>
                            <span style="width:15%" class="tac">6.69%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">총당류</span>
                            <span style="width:18%" class="tac">3.13g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">3.13g</span>
                            <span style="width:15%" class="tac">3.13%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">지질</span>
                            <span style="width:18%" class="tac">13.98g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">13.98g</span>
                            <span style="width:15%" class="tac">25.89%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">단백질</span>
                            <span style="width:18%" class="tac">12.85g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">12.85g</span>
                            <span style="width:15%" class="tac">23.36%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">수분</span>
                            <span style="width:18%" class="tac">49.80g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">49.80g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">회분</span>
                            <span style="width:18%" class="tac">1.67g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1.67g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
                        <!--  성분 타이틀 -->
                        <em>당류</em>
    
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">과당</span>
                            <span style="width:18%" class="tac">1.50g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1.50g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">맥아당</span>
                            <span style="width:18%" class="tac">0.00g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.00g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">총 식이섬유</span>
                            <span style="width:18%" class="tac">2.80g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">2.80g</span>
                            <span style="width:15%" class="tac">11.20%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">유당</span>
                            <span style="width:18%" class="tac">0.00g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.00g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">자당</span>
                            <span style="width:18%" class="tac">0.00g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.00g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">포도당</span>
                            <span style="width:18%" class="tac">1.63g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1.63g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
                        <!--  성분 타이틀 -->
                        <em>무기질</em>
    
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">나트륨</span>
                            <span style="width:18%" class="tac">450.00㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">450.00㎎</span>
                            <span style="width:15%" class="tac">22.50%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">구리</span>
                            <span style="width:18%" class="tac">0.09㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.09㎎</span>
                            <span style="width:15%" class="tac">11.25%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">마그네슘</span>
                            <span style="width:18%" class="tac">18.73㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">18.73㎎</span>
                            <span style="width:15%" class="tac">5.95%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">망간</span>
                            <span style="width:18%" class="tac">0.20㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.20㎎</span>
                            <span style="width:15%" class="tac">6.67%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">셀레늄</span>
                            <span style="width:18%" class="tac">12.55㎍&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">12.55㎍</span>
                            <span style="width:15%" class="tac">22.82%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">아연</span>
                            <span style="width:18%" class="tac">1.87㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1.87㎎</span>
                            <span style="width:15%" class="tac">22.00%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">인</span>
                            <span style="width:18%" class="tac">116.00㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">116.00㎎</span>
                            <span style="width:15%" class="tac">16.57%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">철</span>
                            <span style="width:18%" class="tac">1.36㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1.36㎎</span>
                            <span style="width:15%" class="tac">11.33%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">칼륨</span>
                            <span style="width:18%" class="tac">203.00㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">203.00㎎</span>
                            <span style="width:15%" class="tac">5.80%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">칼슘</span>
                            <span style="width:18%" class="tac">16.00㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">16.00㎎</span>
                            <span style="width:15%" class="tac">2.29%</span>
                        </div>
    
    
    
    
                        <!--  성분 타이틀 -->
                        <em>비타민</em>
    
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">니아신</span>
                            <span style="width:18%" class="tac">2.82㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">2.82㎎</span>
                            <span style="width:15%" class="tac">18.77%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">비타민 B1</span>
                            <span style="width:18%" class="tac">0.08㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.08㎎</span>
                            <span style="width:15%" class="tac">6.25%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">비타민 B2</span>
                            <span style="width:18%" class="tac">0.15㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.15㎎</span>
                            <span style="width:15%" class="tac">10.71%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">비타민 B12</span>
                            <span style="width:18%" class="tac">0.40㎍&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.40㎍</span>
                            <span style="width:15%" class="tac">16.67%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">비타민 C</span>
                            <span style="width:18%" class="tac">0.00㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.00㎎</span>
                            <span style="width:15%" class="tac">0.00%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">엽산(DFE)</span>
                            <span style="width:18%" class="tac">16.53㎍&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">16.53㎍</span>
                            <span style="width:15%" class="tac">4.13%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">비타민 A(RAE)</span>
                            <span style="width:18%" class="tac">9.00㎍ RAE&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">9.00㎍ RAE</span>
                            <span style="width:15%" class="tac">1.29%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">레티놀</span>
                            <span style="width:18%" class="tac">7.00㎍&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">7.00㎍</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">베타카로틴</span>
                            <span style="width:18%" class="tac">21.00㎍&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">21.00㎍</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">비타민 D(D2+D3)</span>
                            <span style="width:18%" class="tac">0.00㎍&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.00㎍</span>
                            <span style="width:15%" class="tac">0.00%</span>
                        </div>
    
    
    
    
                        <!--  성분 타이틀 -->
                        <em>아미노산</em>
    
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">총 아미노산</span>
                            <span style="width:18%" class="tac">12,600.61㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">12,600.61㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">글루탐산</span>
                            <span style="width:18%" class="tac">2,736.45㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">2,736.45㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">글리신</span>
                            <span style="width:18%" class="tac">760.74㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">760.74㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">라이신</span>
                            <span style="width:18%" class="tac">848.95㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">848.95㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">루신</span>
                            <span style="width:18%" class="tac">942.62㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">942.62㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">메티오닌</span>
                            <span style="width:18%" class="tac">261.38㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">261.38㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">발린</span>
                            <span style="width:18%" class="tac">622.25㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">622.25㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">세린</span>
                            <span style="width:18%" class="tac">644.68㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">644.68㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">시스테인</span>
                            <span style="width:18%" class="tac">104.43㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">104.43㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">아르기닌</span>
                            <span style="width:18%" class="tac">737.16㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">737.16㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">아스파르트산</span>
                            <span style="width:18%" class="tac">1,022.98㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1,022.98㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">알라닌</span>
                            <span style="width:18%" class="tac">694.27㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">694.27㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">이소루신</span>
                            <span style="width:18%" class="tac">520.48㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">520.48㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">트레오닌</span>
                            <span style="width:18%" class="tac">562.23㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">562.23㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">티로신</span>
                            <span style="width:18%" class="tac">359.84㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">359.84㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">페닐알라린</span>
                            <span style="width:18%" class="tac">550.94㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">550.94㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">프롤린</span>
                            <span style="width:18%" class="tac">814.42㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">814.42㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">히스티딘</span>
                            <span style="width:18%" class="tac">416.84㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">416.84㎎</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
                        <!--  성분 타이틀 -->
                        <em>지방산</em>
    
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">트랜스 지방산</span>
                            <span style="width:18%" class="tac">0.35g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.35g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">총 포화 지방산</span>
                            <span style="width:18%" class="tac">4.42g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">4.42g</span>
                            <span style="width:15%" class="tac">29.47%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">콜레스테롤</span>
                            <span style="width:18%" class="tac">45.20㎎&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">45.20㎎</span>
                            <span style="width:15%" class="tac">15.07%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">가돌레산(20:1)</span>
                            <span style="width:18%" class="tac">0.03g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.03g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">감마 리놀렌산(18:3(n-6))</span>
                            <span style="width:18%" class="tac">0.03g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.03g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">도코사펜타에노산(22:5(n-3))</span>
                            <span style="width:18%" class="tac">0.00g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.00g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">도코사헥사에노산(22:6(n-3))</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">라우르산(12:0)</span>
                            <span style="width:18%" class="tac">0.05g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.05g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">리놀레산(18:2(n-6)c)</span>
                            <span style="width:18%" class="tac">3.16g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">3.16g</span>
                            <span style="width:15%" class="tac">0.03%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">미리스톨레산(14:1)</span>
                            <span style="width:18%" class="tac">0.05g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.05g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">미리스트산(14:0)</span>
                            <span style="width:18%" class="tac">0.27g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.27g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">박센산(18:1(n-7))</span>
                            <span style="width:18%" class="tac">0.16g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.16g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">부티르산(4:0)</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">스테아르산(18:0)</span>
                            <span style="width:18%" class="tac">1.31g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">1.31g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">아라키돈산(20:4(n-6))</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">아라키드산(20:0)</span>
                            <span style="width:18%" class="tac">0.04g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.04g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">알파 리놀렌산(18:3(n-3))</span>
                            <span style="width:18%" class="tac">0.34g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.34g</span>
                            <span style="width:15%" class="tac">0.03%</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">에이코사디에노산(20:2(n-6))</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">에이코사트리에노산(20:3(n-6))</span>
                            <span style="width:18%" class="tac">0.03g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.03g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">에이코사펜타에노산(20:5(n-3))</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">올레산(18:1(n-9))</span>
                            <span style="width:18%" class="tac">3.76g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">3.76g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">카프로산(6:0)</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">카프르산(10:0)</span>
                            <span style="width:18%" class="tac">0.03g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.03g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">카프릴산(8:0)</span>
                            <span style="width:18%" class="tac">0.01g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.01g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">트랜스 리놀레산 (18:2t)</span>
                            <span style="width:18%" class="tac">0.16g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.16g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">트랜스 리놀렌산(18:3t)</span>
                            <span style="width:18%" class="tac">0.02g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.02g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">트랜스 올레산(18:1(n-9)t)</span>
                            <span style="width:18%" class="tac">0.18g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.18g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">팔미톨레산(16:1)</span>
                            <span style="width:18%" class="tac">0.23g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">0.23g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
    
    
    
    
                        <div data-skin-food="cell">
                            <span></span>
                            <span style="width:30%">팔미트산(16:0)</span>
                            <span style="width:18%" class="tac">2.70g&nbsp;
    
    
    
    
                            </span>
                            <span style="width:20%" data-skin-food="size">2.70g</span>
                            <span style="width:15%" class="tac">0</span>
                        </div>
    
    
    
                    </div>
                </div>
    
                <div class="area_btn">
                    <a href="javascript:;" onclick="fnObj.fnReSearch();"
                        class="button lg black docs-creator"><span>이전화면으로</span></a>
                </div>
            </div>
        </div>

        

    </div>




    <jsp:include page="footer.jsp" />
</body>
</html>