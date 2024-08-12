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
    <link href="./css/base.css" rel="stylesheet">
    <link href="./css/common.css" rel="stylesheet">
    <script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js"
	integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript" src="./script/header.js"></script>
    <script type="text/javascript" src="./script/graph.js"></script>

    <title>foodIngredients</title>
</head>
<body>
	<header id="header">
        <div class="header_inner header_sub">
            <jsp:include page="header.jsp" />
        </div>
    </header>


    <section class="signup sig_modify">
        <div class="inner">
            <div class="sig_inner">
                <div class="sig_inputs">
                    <div class="sig_title">내 정보</div>

                    <div class="sig_input active wrap_s">
                        <p>아이디</p>
                        <p class="information">${user.email}</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>이름</p>
                        <p class="information">${user.name}</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>나이</p>
                        <p class="information">${age}</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>성별</p>
                        <p class="information">${genderName}</p>
                    </div>
                </div>
                
                <button class="common_btn" onclick="location.href='/myInfoModify'">회원정보수정</button>
            </div>
        </div>
    </section>
    
<!-- -------------------------------표-----------------------------------------  -->   
  
    <div class="table_inner">
	    <table class="new_tbl_board tb01 mb20">
	    <caption>영양소 섭취 기준</caption>
	         <colgroup>
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
		         <col style="width: 4%;">
	         </colgroup>		       	    
	    <thead>
        <tr style="font-weight: bolder; background-color: gray;">
            <th>구분</th>
            <th>에너지</th>
            <th>물</th>
            <th>단백질</th>
            <th>지방</th>
            <th>화분</th>
            <th>탄수화물</th>
            <th>당류</th>
            <th>식이섬유</th>
            <th>칼슘</th>
            <th>철</th>
            <th>인</th>
            <th>칼륨</th>
            <th>나트륨</th>
            <th>비타민A</th>
            <th>레티놀</th>
            <th>베타카로틴</th>
            <th>티아민</th>
            <th>리보플라빈</th>
            <th>니아신</th>
            <th>비타민C</th>
            <th>비타민D</th>
            <th>콜레스테롤</th>
            <th>포화지방산</th>
            <th>트랜스지방산</th>
        </tr>
    </thead>
    
    <tbody>
        <tr style="font-weight: bolder; background-color: palevioletred;">
            <td>기준</td>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
            <th>100</th>
        </tr>
        <tr style="font-weight: bolder; background-color: skyblue;">
            <td>평균</td>
            <th>${totalDietList[0].kcal}</th>
            <th>${totalDietList[0].water}</th>
            <th>${totalDietList[0].protein}</th>
            <th>${totalDietList[0].fat}</th>
            <th>${totalDietList[0].batch}</th>
            <th>${totalDietList[0].carbohydrate}</th>
            <th>${totalDietList[0].sugars}</th>
            <th>${totalDietList[0].dietaryFiber}</th>
            <th>${totalDietList[0].calcium}</th>
            <th>${totalDietList[0].ironContent}</th>
            <th>${totalDietList[0].phosphorus}</th>
            <th>${totalDietList[0].potassium}</th>
            <th>${totalDietList[0].sodium}</th>
            <th>${totalDietList[0].vitaminA}</th>
            <th>${totalDietList[0].retinol}</th>
            <th>${totalDietList[0].betaCarotene}</th>
            <th>${totalDietList[0].thiamine}</th>
            <th>${totalDietList[0].riboflavin}</th>
            <th>${totalDietList[0].niacin}</th>
            <th>${totalDietList[0].vitaminC}</th>
            <th>${totalDietList[0].vitaminD}</th>
            <th>${totalDietList[0].cholesterol}</th>
            <th>${totalDietList[0].saturatedFat}</th>
            <th>${totalDietList[0].transFat}</th>
        </tr>
    </tbody>
	</table>    
    
    
    <!-- ---------------------그래프-------------------------- -->
	
	<div class="graph">
	<div class="inner">
	
		<div class="graphBox" style="width: 1200px; height: 600px;">
			<canvas id="barCanvas"></canvas>
		</div>
	
		<%-- <div class="graphBox" style="width: 600px; height: 400px;">
			<canvas id="lineCanvas"></canvas>
		</div> --%>
		</div>

	</div>
	<!-- ---------------------DB그래프-------------------------- -->
	
	<script type="text/javascript">
         //JSP에서 값을 JavaScript 변수로 전달
         
        var totalDietData = [];
        
        <c:forEach var="item" items="${totalDietList}">
        	       	
        	var totalDietDataItem =
        	{
        			kcal: '${item.kcal}',
                    water: '${item.water}',
                    protein: '${item.protein}',
                    fat: '${item.fat}',
                    batch: '${item.batch}',
                    carbohydrate: '${item.carbohydrate}',
                    sugars: '${item.sugars}',
                    dietaryFiber: '${item.dietaryFiber}',
                    calcium: '${item.calcium}',
                    ironContent: '${item.ironContent}',
                    phosphorus: '${item.phosphorus}',
                    potassium: '${item.potassium}',
                    sodium: '${item.sodium}',
                    vitaminA: '${item.vitaminA}',
                    retinol: '${item.retinol}',
                    betaCarotene: '${item.betaCarotene}',
                    thiamine: '${item.thiamine}',
                    riboflavin: '${item.riboflavin}',
                    niacin: '${item.niacin}',
                    vitaminC: '${item.vitaminC}',
                    vitaminD: '${item.vitaminD}',
                    cholesterol: '${item.cholesterol}',
                    saturatedFat: '${item.saturatedFat}',
                    transFat: '${item.transFat}'
        	};
        	
        	totalDietData.push(totalDietDataItem);
        	
        </c:forEach>
        
        document.addEventListener('DOMContentLoaded', function() {
            // Chart.js가 로드된 후에 차트 생성
            barChart(totalDietDataItem); //평균 DAO 
            //lineChart(totalDietDataItem); //리스트값
        });
        
    </script>



    <jsp:include page="footer.jsp" />
</body>
</html>