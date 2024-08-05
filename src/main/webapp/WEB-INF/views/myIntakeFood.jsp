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



    <section class="table_menu">
        <div class="inner">
            <div class="wrap">
                <p class="reference">
                    ※ 아래 표를 클릭하시면 해당 식품의 영양정보가 나와요
                </p>

                <button class="board_btn wrap">
                    <img src="./images/sub/icon/material-install-desktop.svg" alt="">
                    <p class="ml10">나의 영양성분 기록 저장</p>
                </button>

            </div>


            <table class="new_tbl_board tbl_boards tb01 mt20 mb20">
                <colgroup>
                    <col style="width: 10%;">
                    <col style="width: 30%;">
                    <col style="width: 15%;">
                    <col style="width: 15%;">
                    <col style="width: 10%;">
                    <col style="width: 10%;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">번호</th>
                        <th scope="col">식품명</th>
                        <th scope="col">식품대분류</th>
                        <th scope="col">식품중분류</th>
                        <th scope="col">에너지(Kcal)</th>
                        <th scope="col">하루 섭취<br>식품 등록</th>
                    </tr>
                </thead>
                <tbody>
                    <tr onclick="">
                        <td>1</td>
                        <td>햄버거</td>
                        <td>빵 및 과자류</td>
                        <td>해당없음</td>
                        <td>225</td>
                        <td>
                            <button class="board_td_btn wrap" type="button">
                                <img src="./images/sub/icon/feather-x-box.svg" alt="">
                                <p>등록취소</p>
                            </button>
                        </td>

                    </tr>

                    <tr class="tr_event">
                        <td class="more_information" colspan="6">
                            <div class="wrap">
                                <img  class="slider-left" data-target=".nutrient1" src="./images/sub/icon/slider/slider-left.svg" alt="">
                                <div class="more_nutrient">
                                    <ul class="nutrient nutrient1 wrap">

                                        <li class="more_item wrap">
                                            <p class="title">중량</p>
                                            <p class="info">100g</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">에너지(kcal)</p>
                                            <p class="info">63.0</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">탄수화물(g)</p>
                                            <p class="info">8.5</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">당류(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">단백질(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">지방(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">포화지방(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">나트륨(mg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">비타민 A(μg RA)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                    </ul>
                                </div>


                                <img  class="slider-right" data-target=".nutrient1" src="./images/sub/icon/slider/slider-right.svg" alt="">
                            </div>
                        </td>
                    </tr>

                    <tr onclick="">
                        <td>2</td>
                        <td>싸이버거</td>
                        <td>즉석식품류</td>
                        <td>해당없음</td>
                        <td>225</td>
                        <td>
                            <button class="board_td_btn wrap" type="button">
                                <img src="./images/sub/icon/feather-x-box.svg" alt="">
                                <p>등록취소</p>
                            </button>
                        </td>
                    </tr>

                    <tr class="tr_event">
                        <td class="more_information" colspan="6">
                            <div class="wrap">
                                <img  class="slider-left" data-target=".nutrient2" src="./images/sub/icon/slider/slider-left.svg" alt="">
                                <div class="more_nutrient">
                                    <ul class="nutrient nutrient2 wrap">

                                        <li class="more_item wrap">
                                            <p class="title">중량</p>
                                            <p class="info">100g</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">에너지(kcal)</p>
                                            <p class="info">63.0</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">탄수화물(g)</p>
                                            <p class="info">8.5</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">당류(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">단백질(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">지방(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">포화지방(g)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">나트륨(mg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">비타민 A(μg RA)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                        <li class="more_item wrap">
                                            <p class="title">레티놀(μg)</p>
                                            <p class="info">0.2</p>
                                        </li>
                                    </ul>
                                </div>


                                <img class="slider-right" data-target=".nutrient2" src="./images/sub/icon/slider/slider-right.svg" alt="">
                            </div>
                        </td>
                    </tr>

                </tbody>
            </table>
            <button class="common_btn mb80" type="submit">전체등록 취소</button>

    </section>


    <section class="table_menu" id="section1">
        <div class="inner">
            <div class="wrap">
                <p class="table_menu_sub">등록 식품 영양성분 함량 합계</p>

                <div class="pagenation_btn wrap">
                    <div class="slider_prev">
                        <img src="./images/sub/icon/slider/slider-left.svg" alt="">
                    </div>
                    <div class="slider_next">
                        <img src="./images/sub/icon/slider/slider-right.svg" alt="">
                    </div>
                </div>

            </div>

            <div class="table_inner">
                <div class="linear_box">

                </div>
                <table class="new_tbl_board tbl_boards tb01 mt20 mb60">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 7%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">중량</th>
                            <th scope="col">에너지(kcal)</th>
                            <th scope="col">탄수화물(g)</th>
                            <th scope="col">당류(g)</th>
                            <th scope="col">단백질(g)</th>
                            <th scope="col">지방(g)</th>
                            <th scope="col">단백질(g)</th>
                            <th scope="col">포화지방(g)</th>
                            <th scope="col">나트륨(mg)</th>
                            <th scope="col">비타민 A(μg RA)</th>
                            <th scope="col">레티놀(μg)</th>
                            <th scope="col">레티놀(μg)</th>
                            <th scope="col">레티놀(μg)</th>
                            <th scope="col">레티놀(μg)</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <tr onclick="">
                            <td>100</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </section>

    <section class="table_menu" id="section2">
        <div class="inner">
            <div class="wrap">
                <p class="table_menu_sub">일일 권장량 대비 비교</p>

                <div class="pagenation_btn wrap">
                    <div class="slider_prev">
                        <img src="./images/sub/icon/slider/slider-left.svg" alt="">
                    </div>
                    <div class="slider_next">
                        <img src="./images/sub/icon/slider/slider-right.svg" alt="">
                    </div>
                </div>

            </div>

            <div class="table_inner">
                <div class="linear_box">

                </div>
                <table class="new_tbl_board tb01 mt20 mb60">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 7%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">중량</th>
                            <th scope="col">에너지(kcal)</th>
                            <th scope="col">탄수화물(g)</th>
                            <th scope="col">당류(g)</th>
                            <th scope="col">단백질(g)</th>
                            <th scope="col">지방(g)</th>
                            <th scope="col">단백질(g)</th>
                            <th scope="col">포화지방(g)</th>
                            <th scope="col">나트륨(mg)</th>
                            <th scope="col">비타민 A(μg RA)</th>
                            <th scope="col">레티놀(μg)</th>
                            <th scope="col">레티놀(μg)</th>
                            <th scope="col">레티놀(μg)</th>
                            <th scope="col">레티놀(μg)</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <tr onclick="">
                            <td>100</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                            <td>0.2</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </section>

    <section class="decibal_title mb80">
        <div class="inner">
            <div class="info">
                <span class="blue_style">에너지(kcal),</span>
                <span class="blue_style">탄수화물(g),</span>
                <span class="blue_style">지방(g)</span>
                <span class="text">섭취가 너무 적어요.</span>
            </div>
            <div class="wrap mb50">
                <p class="text">부족한 영양성분의 상세 설명과 추천 식품이 궁금하시다면 해당 영양성분의 상세보기를 눌러주세요.</p>
                <div class="page_nation wrap">
                    <div class="slide_prev">
                        <img src="./images/sub/icon/slider/akar-chevron-left-small.svg" alt="">
                    </div>
                    <div class="slide_stop">
                        <img src="./images/sub/icon/slider/akar-two-line-vertical.svg" alt="">
                    </div>
                    <div class="slide_next">
                        <img src="./images/sub/icon/slider/akar-chevron-right-small.svg" alt="">
                    </div>
                </div>
            </div>

            <div class="slide_cont_box wrap">
                <div class="linear_box"></div>
                <div class="slide_box wrap">
                    <div class="box">
                        <div class="title_food">에너지(kcal)</div>
                        <div class="info">
                            <div class="info_title">에너지가 부족할 경우</div>
                            <div class="info_detail">
                                하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 
                                활동하는데 필요한 에너지이다. 하루 섭취 칼로리
                                가 너무 적다는 것은 기름 없는 자동차나 마찬가...
                            </div>
                        </div>
                        <div class="more">상세보기</div>
                    </div>
                </div>
    
                <div class="slide_box wrap">
                    <div class="box">
                        <div class="title_food">에너지(kcal)</div>
                        <div class="info">
                            <div class="info_title">에너지가 부족할 경우</div>
                            <div class="info_detail">
                                하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 
                                활동하는데 필요한 에너지이다. 하루 섭취 칼로리
                                가 너무 적다는 것은 기름 없는 자동차나 마찬가...
                            </div>
                        </div>
                        <div class="more">상세보기</div>
                    </div>
                </div>
    
                <div class="slide_box wrap">
                    <div class="box">
                        <div class="title_food">에너지(kcal)</div>
                        <div class="info">
                            <div class="info_title">에너지가 부족할 경우</div>
                            <div class="info_detail">
                                하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 
                                활동하는데 필요한 에너지이다. 하루 섭취 칼로리
                                가 너무 적다는 것은 기름 없는 자동차나 마찬가...
                            </div>
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
                <img src="./images/sub/icon/close-x.svg" alt="">
            </div>
            <div class="title">에너지가 부족할 경우 나타나는 현상</div>
            <div class="info">
                하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 활동하는데 필요한 에너지이다. 하루 섭취 칼로리가 너무 적다는 것은
                기름 없는 자동차나 마찬가지 하루종일 힘이없다. 
                칼로리는 우리 몸이 움직이고 활동하는데 필요한 에너지이다. 하루 섭취 칼로리가 너무 적다는 것은 기름 없는 자동차나
                마찬가지 하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 활동하는데 필요한 에너지이다. 하루 섭취 칼로리가 너무 적
                다는 것은 기름 없는 자동차나 마찬가지 하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 활동하는데 필요한 에너지이다.
                칼로리는 우리 몸이 움직이고 활동하는데 필요한 에너지이다. 하루 섭취 칼로리가 너무 적다는 것은 기름 없는 자동차나
                마찬가지 하루종일 힘이없다. 칼로리는 우리 몸이 움직이고 활동하는데 필요한 에너지이다. 다다다다다다다다
            </div>

            <div class="wrap_s mt40 mb30">
                <img src="./images/sub/icon/Icon fa-solid-star.svg" alt="">
                <p class="popup_title">일일 권장량 대비 부족 영양소 별 추천 검색</p>
            </div>
            <ul class="tag_inner wrap_s">
                <li class="tag">#햄버거</li>
                <li class="tag">#아이스크림</li>
                <li class="tag">#햄버거</li>
                <li class="tag">#아이스크림</li>
                <li class="tag">#아이스크림</li>
                <li class="tag">#햄버거</li>
            </ul>
        </div>
    </div>


   <jsp:include page="footer.jsp" />
</body>
</html>