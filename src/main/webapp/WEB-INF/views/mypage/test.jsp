<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="../css/base.css" rel="stylesheet">
    <link href="../css/common.css" rel="stylesheet">
    <link href="../css/board.css" rel="stylesheet">
    <script type="text/javascript" src="../script/header.js"></script>
    <script type="text/javascript" src="../script/common.js"></script>

    <title>식품영양성분</title>
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
                <h1 class="title">식품으로 찾아보기</h1>
                <div class="route wrap">
                    <a href="./index.html"><img class="home center" src="../images/sub/icon/material-home.svg"
                            alt="홈 아이콘"></a>
                    <div class="route_info wrap">
                        <a href="./foodSearchList.html"><span class="dap1">영양정보 찾아보기</span></a>
                        <a href="./foodSearchList.html"><span class="dap2">식품으로 찾아보기</span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<form action="">
	<div>
		검색 날짜: <input type="date" id="start">&emsp;&emsp;~&emsp;&emsp;<input type="date" id="end">&emsp;&emsp;<button type="button">확인</button>
	</div><br/>
	</form>
	
    <section class="table_menu">
        <div class="inner">
        	<c:forEach var="dailySumItem" items="${totalDietListAvg}">
            <div class="today_inner wrap">
                <div class="wrap">
                    <img src="../images/sub/icon/material-today.svg" alt="">
                    <p class="today ml20">${dailySumItem.saveDate}</p>
                </div>
                <div class="down_icon">
                    <img src="../images/sub/icon/akar-chevron-down-small.svg" alt="">
                </div>

            </div>

            <div class="table_inner">
                <table class="new_tbl_board tb01 mb20">
                    <colgroup>
                        <col style="width: 10%;">
	                    <col style="width: 20%;">
	                    <col style="width: 10%;">
	                    <col style="width: 10%;">
	                    <col style="width: 10%;">
	                    <col style="width: 10%;">
	                    <col style="width: 10%;">
	                    <col style="width: 10%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">번호</th>
	                        <th scope="col">식품명</th> 
	                        <th scope="col">에너지(Kcal)</th>
	                        <th scope="col">단백질</th>
	                        <th scope="col">지방</th>
	                        <th scope="col">탄수화물</th>
	                        <th scope="col">당류</th>
	                        <th scope="col">나트륨</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                    	<c:set var="number" value="1"/>
                    	<c:forEach var="item" items="${totalDietList}" begin="1" varStatus="status">                    	   	        
							<c:if test="${dailySumItem.saveDate == item.saveDate}">							       	
		                        <tr onclick="">
		                            <td>${number}</td>
		                            <c:set var="number" value="${number+1}"/>
		                            <td>${item.foodName}</td>
		                            <td>${item.kcal}</td>
			                        <td>${item.protein}</td>
			                        <td>${item.fat}</td>
			                        <td>${item.carbohydrate}</td>
			                        <td>${item.sugars}</td>
			                        <td>${item.sodium}</td> 
		                        </tr>
    
		                        <tr class="tr_event">
		                            <td class="more_information" colspan="6">
		                                <div class="wrap">
		                                    <img  class="slider-left" data-target=".nutrient1" src="../images/sub/icon/slider/slider-left.svg" alt="">
		                                    <div class="more_nutrient">
		                                        <ul class="nutrient nutrient1 wrap">
		    
		                                            <li class="more_item wrap">
		                                                <p class="title">중량</p>
		                                                <p class="info">${item.foodIntake}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">수분(g)</p>
		                                                <p class="info">${item.water}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">식이섬유(g)</p>
		                                                <p class="info">${item.dietaryFiber}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">칼슘(mg)</p>
		                                                <p class="info">${item.calcium}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">철(mg)</p>
		                                                <p class="info">${item.ironContent}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">인(mg)</p>
		                                                <p class="info">${item.phosphorus}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">칼륨(mg)</p>
		                                                <p class="info">${item.potassium}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">비타민 A(μg RAE)</p>
		                                                <p class="info">${item.vitaminA}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">레티놀(μg)</p>
		                                                <p class="info">${item.retinol}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">베타카로틴(μg)</p>
		                                                <p class="info">${item.betaCarotene}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">티아민(mg)</p>
		                                                <p class="info">${item.thiamine}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">리보플라빈(mg)</p>
		                                                <p class="info">${item.riboflavin}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">니아신(mg)</p>
		                                                <p class="info">${item.niacin}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">비타민 C(mg)</p>
		                                                <p class="info">${item.vitaminC}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">비타민 D(μg)</p>
		                                                <p class="info">${item.vitaminD}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">콜레스테롤(mg)</p>
		                                                <p class="info">${item.cholesterol}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">포화지방산(g)</p>
		                                                <p class="info">${item.saturatedFat}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">트랜스지방산(g)</p>
		                                                <p class="info">${item.transFat}</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		    
		    
		                                    <img  class="slider-right" data-target=".nutrient1" src="../images/sub/icon/slider/slider-right.svg" alt="">
		                                </div>
		                            </td>
		                        </tr> 
    						</c:if>
    					</c:forEach>
    					
    					<!-- 합계 -->
    					<tr onclick="">
		                            <td style="font-weight: bolder; background-color: whitesmoke;">합계</td>
		                            <td style="font-weight: bolder; background-color: whitesmoke;">총 ${dailySumItem.foodName}건</td>
		                            <td style="font-weight: bolder; background-color: whitesmoke;">${dailySumItem.kcal}</td>
			                        <td style="font-weight: bolder; background-color: whitesmoke;">${dailySumItem.protein}</td>
			                        <td style="font-weight: bolder; background-color: whitesmoke;">${dailySumItem.fat}</td>	
			                        <td style="font-weight: bolder; background-color: whitesmoke;">${dailySumItem.carbohydrate}</td>
			                        <td style="font-weight: bolder; background-color: whitesmoke;">${dailySumItem.sugars}</td>
			                        <td style="font-weight: bolder; background-color: whitesmoke;">${dailySumItem.sodium}</td> 
		                        </tr>
    
		                        <tr class="tr_event">
		                            <td class="more_information" colspan="6">
		                                <div class="wrap">
		                                    <img  class="slider-left" data-target=".nutrient1" src="../images/sub/icon/slider/slider-left.svg" alt="">
		                                    <div class="more_nutrient">
		                                        <ul class="nutrient nutrient1 wrap">
		    
		                                            <li class="more_item wrap">
		                                                <p class="title">중량</p>
		                                                <p class="info">${dailySumItem.foodIntake}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">수분(g)</p>
		                                                <p class="info">${dailySumItem.water}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">식이섬유(g)</p>
		                                                <p class="info">${dailySumItem.dietaryFiber}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">칼슘(mg)</p>
		                                                <p class="info">${dailySumItem.calcium}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">철(mg)</p>
		                                                <p class="info">${dailySumItem.ironContent}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">인(mg)</p>
		                                                <p class="info">${dailySumItem.phosphorus}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">칼륨(mg)</p>
		                                                <p class="info">${dailySumItem.potassium}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">비타민 A(μg RAE)</p>
		                                                <p class="info">${dailySumItem.vitaminA}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">레티놀(μg)</p>
		                                                <p class="info">${dailySumItem.retinol}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">베타카로틴(μg)</p>
		                                                <p class="info">${dailySumItem.betaCarotene}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">티아민(mg)</p>
		                                                <p class="info">${dailySumItem.thiamine}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">리보플라빈(mg)</p>
		                                                <p class="info">${dailySumItem.riboflavin}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">니아신(mg)</p>
		                                                <p class="info">${dailySumItem.niacin}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">비타민 C(mg)</p>
		                                                <p class="info">${dailySumItem.vitaminC}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">비타민 D(μg)</p>
		                                                <p class="info">${dailySumItem.vitaminD}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">콜레스테롤(mg)</p>
		                                                <p class="info">${dailySumItem.cholesterol}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">포화지방산(g)</p>
		                                                <p class="info">${dailySumItem.saturatedFat}</p>
		                                            </li>
		                                            <li class="more_item wrap">
		                                                <p class="title">트랜스지방산(g)</p>
		                                                <p class="info">${dailySumItem.transFat}</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		    
		    
		                                    <img  class="slider-right" data-target=".nutrient1" src="../images/sub/icon/slider/slider-right.svg" alt="">
		                                </div>
		                            </td>
		                        </tr> 
    					
    					
    					
                    </tbody>
                </table>
                <button class="common_btn mb80" type="submit">기록 삭제</button>
            	</div>
            	</c:forEach>
            </div>
    </section>



   <jsp:include page="../common/footer.jsp" />
</body>
</html>