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

    <section class="search_cont">
        <div class="inner">
            <div class="big_search">
                <div class="wrap">
                    <div class="search_input wrap">
                        <p class="title">식품명</p>
                        <input type="search" value="" placeholder="영양정보가 궁금한 식품을 입력해주세요">
                        <button class="search_icon center" type="submit">
                            <img src="./images/sub/icon/akar-search2.svg" alt="">
                        </button>
                    </div>
                </div>
            </div>
            <div class="search_inner mb60">
                <ul class="tab">
                    <div class="wrap_s">
                        <li class="lnb big_category on">
                            <div class="wrap">
                                <span>식품대분류</span>
                            </div>
                        </li>
                        <li class="lnb Middle_category">
                            <div class="wrap">
                                <span>식품중분류</span>
                            </div>
                        </li>
                        <li class="lnb small_category">
                            <div class="wrap">
                                <span>식품소분류</span>
                            </div>
                        </li>
                    </div>

                </ul>

                <div class="tab_content">
                    <ul class="tab_info">
                        <form action="">
                            <div class="tab_info_inner">
                                <li class="tab_inner_search">
                                    <div class="wrap_s center">
    
                                        <img src="./images/sub/icon/akar-search.svg" alt="">
    
                                        <input type="search" placeholder="식품대분류 검색항목 입력">
    
                                    </div>
                                </li>
                                <button class="tab_search_btn" type="submit">검색</button>
                            </div>
                            <div class="icheck_sm_wrap">
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="big_Allcheck" id="big_Allcheck">
                                    <label for="big_Allcheck">대분류 전체</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="big_n1" id="big_n1">
                                    <label for="big_n1">과자류 빵류 또는 떡류</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="big_n2" id="big_n2">
                                    <label for="big_n2">빵 및 과자류</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="big_n3" id="big_n3">
                                    <label for="big_n3">식육가공품 및 포장육</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="big_n4" id="big_n4">
                                    <label for="big_n4">즉석식품류</label>
                                </div>
                            </div>
                        </form>
                    </ul>

                    <div class="tab_inner_list clearfix">
                        <div class="tag_inner wrap">
                            <div class="tag_gnb"></div>
                            <div class="reset center">
                                <img src="./images/sub/icon/akar-arrow-repeat.svg" alt="">
                                <span>선택초기화</span>
                            </div>
                        </div>
                        <button class="common_btn" type="button">선택된 4건 검색하기</button>
                    </div>
                </div>

                <div class="tab_content">
                    <ul class="tab_info">
                        <form action="">
                            <div class="tab_info_inner">
                                <li class="tab_inner_search">
                                    <div class="wrap_s center">
    
                                        <img src="./images/sub/icon/akar-search.svg" alt="">
    
                                        <input type="search" placeholder="식품중분류 검색항목 입력">
    
                                    </div>
                                </li>
                                <button class="tab_search_btn" type="submit">검색</button>
                            </div>
                            <div class="icheck_sm_wrap">
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="middle_Allcheck" id="middle_Allcheck">
                                    <label for="middle_Allcheck">중분류 전체</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="middle_n1" id="middle_n1">
                                    <label for="middle_n1">중분류1</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="middle_n2" id="middle_n2">
                                    <label for="middle_n2">중분류2</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="middle_n3" id="middle_n3">
                                    <label for="middle_n3">중분류3333</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="middle_n4" id="middle_n4">
                                    <label for="middle_n4">중분류4</label>
                                </div>
                            </div>
                        </form>
                    </ul>

                    <div class="tab_inner_list clearfix">
                        <div class="tag_inner wrap">
                            <div class="tag_gnb"></div>
                            <div class="reset center">
                                <img src="./images/sub/icon/akar-arrow-repeat.svg" alt="">
                                <span>선택초기화</span>
                            </div>
                        </div>
                        <button class="common_btn" type="button">선택된 4건 검색하기</button>
                    </div>
                </div>


                <div class="tab_content">
                    <ul class="tab_info">
                        <form action="">
                            <div class="tab_info_inner">
                                <li class="tab_inner_search">
                                    <div class="wrap_s center">
    
                                        <img src="./images/sub/icon/akar-search.svg" alt="">
    
                                        <input type="search" placeholder="식품소분류 검색항목 입력">
    
                                    </div>
                                </li>
                                <button class="tab_search_btn" type="submit">검색</button>
                            </div>
                            <div class="icheck_sm_wrap">
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="small_Allcheck" id="small_Allcheck">
                                    <label for="small_Allcheck">소분류 전체</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="small_n1" id="small_n1">
                                    <label for="small_n1">소분류11111</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="small_n2" id="small_n2">
                                    <label for="small_n2">소분류222</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="small_n3" id="small_n3">
                                    <label for="small_n3">소분류3</label>
                                </div>
                                <div class="icheck_sm mar">
                                    <input type="checkbox" name="small_n4" id="small_n4">
                                    <label for="small_n4">소분류4</label>
                                </div>
                            </div>
                        </form>
                    </ul>

                    <div class="tab_inner_list clearfix">
                        <div class="tag_inner wrap">
                            <div class="tag_gnb"></div>
                            <div class="reset center">
                                <img src="./images/sub/icon/akar-arrow-repeat.svg" alt="">
                                <span>선택초기화</span>
                            </div>
                        </div>
                        <button class="common_btn" type="button">선택된 4건 검색하기</button>
                    </div>
                </div>

                
            </div>
        </div>

    </section>

    <section class="table_menu">
        <div class="inner">
            <div class="wrap">

                <div class="menu_list">
                    <div class="wrap_s">
                        <div class="icheck_wrap">
                            <div class="icheck mar">
                                <input type="radio" name="selection" id="s1" value="s1">
                                <label for="s1">가공식품만 보기</label>
                            </div>
                            <div class="icheck mar">
                                <input type="radio" name="selection" id="s2" value="s2">
                                <label for="s2">음식만 보기</label>
                            </div>
                            <div class="icheck mar">
                                <input type="radio" name="selection" id="s3" value="s3">
                                <label for="s3">원재료만 보기</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="wrap_s">
                    <select class="page_num">
                        <div class="wrap">
                            <option value="">
                                <span>10개씩</span>
                                <img src="./images/sub/icon/fa-solid-caret-down.svg" alt="">
                            </option>
                        </div>
                    </select>

                    <button class="board_btn wrap ml20">
                        <img src="./images/sub/ico_2023_basket_add.png" alt="">
                        <p class="ml10">하루 섭취 등록 식품 보러가기</p>
                        <img class="ml20" src="./images/sub/icon/akar-chevron-right-small_blue.svg" alt="">
                    </button>
                </div>
            </div>


            <table id="find_business_table" class="new_tbl_board tb01 mt20 mb60">
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
                                <img src="./images/sub/ico_2023_basket_add.png" alt="">
                                <p>등록취소</p>
                            </button>
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
                                <img src="./images/sub/ico_2023_basket_add.png" alt="">
                                <p>등록취소</p>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="pagenation wrap center mb80">
                <div id="at_front" class="at_front boder_box">
                    <img src="./images/sub/icon/at_front.svg" alt="">
                </div>
                <div id="left" class="left boder_box">
                    <img src="./images/sub/icon/Icon akar-chevron-left-small.svg" alt="">
                </div>

                <div id="page-numbers" class="page-numbers"></div>

                <div id="right" class="right boder_box">
                    <img src="./images/sub/icon/Icon akar-chevron-right-small.svg" alt="">
                </div>
                <div id="at_back" class="at_back boder_box">
                    <img src="./images/sub/icon/at_back.svg" alt="">
                </div>
            </div>
        </div>
    </section>




    <jsp:include page="footer.jsp" />
</body>
</html>