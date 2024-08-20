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
    <link href="../css/import.css" rel="stylesheet">
    <script type="text/javascript" src="../script/header.js"></script>
    <script type="text/javascript" src="../script/common.js"></script>

    <title>식품 상세정보 등록 - 식품영양성분</title>
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


    <div id="content">
        <div class="inner">
            <div style="position:relative;">
                <p class="box_tip">선택한 식품에 대한 1회 제공량에 대한 에너지를 나타내고, 1일 영양성분 대비 기준치는 성인을 기준으로 계산했어요.</p>
            </div>
    
            <div class="bbsTitle box type02">
                <em>식품 및 음식명</em>
                <h3>${food.foodName}</h3>
                <!-- 제조사 -->
                <span class="sub ref">식품의약품안전처</span>
            </div>
            
            <div data-skin-food="table">
                <dl>
                    <dt>데이터구분</dt>
                    <dd>${food.dataSortName}</dd>
                    <dt>식품기원</dt>
                    <dd>${food.foodSortName}</dd>
                    <dt>대표식품명</dt>
                    <dd>${food.repFoodName}</dd>
                    <dt style="width:7%;">식품분류</dt>
                    <dd style="width:22%;">
                        <div class="class-group">
                        	<span class="class-depth01">${food.mainCategoryName}</span>
                        	<span class="class-depth02">${food.midCategoryName}</span>
                        	<span class="class-depth03">${food.subCategoryName}</span></div>
                    </dd>
                </dl>
                
                <dl>
                    <dt>총 내용량</dt>
                    	<dd>${food.foodWeight}</dd>
                    <dt>영양성분 함량 기준량</dt>
                    	<dd>${food.nutStandardAmount}</dd>
                    <dt>1회 섭취참고량</dt>
                    	<dd>${food.refAmountOnce}</dd>
                    <dt>데이터생성방법명</dt>
                    	<dd>${food.dataGenerationMethodName}</dd>
                    <dt>데이터생성일자</dt>
                    	<dd>${food.dataCreationDate}</dd>
                    <dt>데이터기준일자</dt>
                    	<dd>${food.dataBaseDate}</dd>
                </dl>
            </div>
    		<div class="area_btn wrap">
                    <a href="javascript:;" onclick="history.back();"
                        class="button lg black docs-creator" ><span>이전화면으로</span></a>
                   <div class="">
		                    <a href="javascript:;" id="submit1"
		                        class="button lg black docs-creator mr10" ><span>예상식단 추가</span></a>
		                    <a href="javascript:;" id="submit2"
		                        class="button lg black docs-creator" ><span>금일식단 추가</span></a>
                   </div>
              </div>
    		<form id="frm_diet" action="" method="POST">
    		<input type="hidden" name="foodCode" value="${food.foodCode}">
            <div data-skin-food="simple" class="mt20">
                <ul data-skin-food="head">
                    <li>분류</li>
                    <li style="width:30%">영양성분</li>
                    <li style="width:18%">100g 당 함량</li>
                    <li style="width:20%" data-skin-food="input">
                        <div id="defaultServingSizeForm">
                        	<span style="color: white">섭취량입력</span>
                            <input type="number" name="foodIntake" id="servingSize" value="100" size="5" title="영양성분입력항목">                            
                        </div>
                    </li>
                    <li style="width:15%">1일영양섭취기준(%)</li>
                </ul>
                
                <div data-skin-food="list">
                    <div data-skin-food="row">                    	
	    					<c:forEach var="item" items="${nutrientList}" varStatus="status">
	    						<c:if test="${status.count == 1}">
	    							<em>일반성분</em>
	    						</c:if>                        	
	                        	<c:if test="${status.count == 7}">
	    							<em>기타</em>
	    						</c:if>
	    						<c:if test="${status.count == 8}">
	    							<em>무기질</em>
	    						</c:if>
	    						<c:if test="${status.count == 13}">
	    							<em>비타민</em>
	    						</c:if>
	    						<c:if test="${status.count == 21}">
	    							<em>지방산</em>
	    						</c:if>
	                        	<div data-skin-food="cell">
		                        	<span></span>
		                            <span style="width:30%">${item.nutrientName}(${item.nutrientUnit})</span>
		                            <span style="width:18%; text-align : center;" class="nutrient-content"></span>
		                            <span style="width:20%" class="nutrient-result" data-skin-food="size" ></span>
		                            <input type="hidden" class="nutrient-id"></input>
		                            <span style="width:15%; text-align : center;" class="nutrient-rec-per"></span>
	                            </div>
	                    	</c:forEach>
                    </div>
                </div>
    
                
                
            </div>
            </form>
        </div>

    </div>

    <jsp:include page="../common/footer.jsp" />
    
	<script type="text/javascript">
    	
	    $(document).ready(function(){
	   	
	    	nutrientShow();
	    	
	    	$('input[name=foodIntake]').keypress(function(e){
				if(e.keyCode && e.keyCode == 13){
					event.preventDefault();
				}
			});
	    	
	    	$('input[name=foodIntake]').change(function(){
	    		nutrientShow();
	    	});
	    	
	    	$('input[name=foodIntake]').keyup(function(){
	    		nutrientShow();
	    	});
	    	
	    	$('#submit1').click(function(){    		
	    		$('#frm_diet').attr("action", "/addExpectedDiet");
				$('#frm_diet').submit();
			});
	    	
	    	$('#submit2').click(function(){    		
	    		$('#frm_diet').attr("action", "/addDailyDiet");
				$('#frm_diet').submit();
			});
	    });
	    
	    const food = [ ${food.kcal}, ${food.water}, ${food.protein}, ${food.fat}, ${food.carbohydrate}, ${food.sugars}, ${food.dietaryFiber}, ${food.calcium},
	    	${food.ironContent}, ${food.phosphorus}, ${food.potassium}, ${food.sodium}, ${food.vitaminA}, ${food.retinol}, ${food.betaCarotene}, ${food.thiamine},
	    	${food.riboflavin}, ${food.niacin}, ${food.vitaminC}, ${food.vitaminD}, ${food.cholesterol}, ${food.saturatedFat}, ${food.transFat}
	        ];
	    
	    function nutrientShow() {
	        const nutrients = [
	            'kcal', 'water', 'protein', 'fat', 'carbohydrate', 'sugars',
	            'dietaryFiber', 'calcium', 'ironContent', 'phosphorus', 
	            'potassium', 'sodium', 'vitaminA', 'retinol', 'betaCarotene',
	            'thiamine', 'riboflavin', 'niacin', 'vitaminC', 'vitaminD',
	            'cholesterol', 'saturatedFat', 'transFat'
	        ];
	
	        let foodAmountPer = parseFloat($('input[name=foodIntake]').val() / 100);
	
	        let nutrientValue;
	        let nutrientContent;
	        let nutrientRecPer;
	        
	        <c:if test="${not empty nc}">
		        <c:forEach var="item" items="${nc}" varStatus="status">
		       	
		        	nutrientValue = food[${status.index}];
		        	nutrientContent = nutrientValue * foodAmountPer;
		        
		        	$('.nutrient-content').eq(${status.index}).text(nutrientValue.toFixed(2));
		        	$('.nutrient-result').eq(${status.index}).text(nutrientContent.toFixed(2));
		       	 	$('.nutrient-id').eq(${status.index}).attr("name", nutrients[${status.index}]);            
		        	$('.nutrient-id').eq(${status.index}).val(nutrientContent.toFixed(2));
		        
		        	nutrientRecPer = ${item.intakeRec} == 0 ? '-' : (nutrientContent / ${item.intakeRec} * 100).toFixed(2) + '%';
		        	$('.nutrient-rec-per').eq(${status.index}).text(nutrientRecPer);
		        
		    	</c:forEach>
		    </c:if>
		    
		    console.log('aa');
		    
		    <c:if test="${empty nc}">
		        <c:forEach var="item" begin="0" end="22" step="1" varStatus="status">
		       	
		        	nutrientValue = food[${status.index}];
		        	nutrientContent = nutrientValue * foodAmountPer;
		        	
		        	console.log(nutrientContent);
		        
		        	$('.nutrient-content').eq(${status.index}).text(nutrientValue.toFixed(2));
		        	$('.nutrient-result').eq(${status.index}).text(nutrientContent.toFixed(2));
		        
		        	nutrientRecPer = '-';
		        	$('.nutrient-rec-per').eq(${status.index}).text(nutrientRecPer);
		        
		    	</c:forEach>
		    </c:if>
	    }    
    </script>
</body>
</html>