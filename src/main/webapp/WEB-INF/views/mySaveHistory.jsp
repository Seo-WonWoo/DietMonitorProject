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
            <div class="today_inner wrap">
                <div class="wrap">
                    <img src="./images/sub/icon/material-today.svg" alt="">
                    <p class="today ml20">2024-07-26</p>
                </div>
                <div class="down_icon">
                    <img src="./images/sub/icon/akar-chevron-down-small.svg" alt="">
                </div>

            </div>

            <div class="table_inner">
            <table class="new_tbl_board tb01 mb20">
                <colgroup>
                    <col style="width: 10%;">
                    <col style="width: 30%;">
                    <col style="width: 15%;">
                    <col style="width: 15%;">
                    <col style="width: 10%;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">번호</th>
                        <th scope="col">식품명</th>
                        <th scope="col">식품대분류</th>
                        <th scope="col">식품중분류</th>
                        <th scope="col">에너지(Kcal)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr onclick="">
                        <td>1</td>
                        <td>햄버거</td>
                        <td>빵 및 과자류</td>
                        <td>해당없음</td>
                        <td>225</td>

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
            <button class="common_btn mb80" type="submit">기록 삭제</button>

    </section>

    <section class="table_menu">
        <div class="inner">
            <div class="today_inner wrap">
                <div class="wrap">
                    <img src="./images/sub/icon/material-today.svg" alt="">
                    <p class="today ml20">2024-07-26</p>
                </div>
                <div class="down_icon">
                    <img src="./images/sub/icon/akar-chevron-down-small.svg" alt="">
                </div>

            </div>

            <div class="table_inner">
                <table class="new_tbl_board tb01 mb20">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 30%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 10%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">번호</th>
                            <th scope="col">식품명</th>
                            <th scope="col">식품대분류</th>
                            <th scope="col">식품중분류</th>
                            <th scope="col">에너지(Kcal)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr onclick="">
                            <td>1</td>
                            <td>햄버거</td>
                            <td>빵 및 과자류</td>
                            <td>해당없음</td>
                            <td>225</td>
    
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
                <button class="common_btn mb80" type="submit">기록 삭제</button>
            </div>
            

    </section>



    <jsp:include page="footer.jsp" />
</body>
</html>