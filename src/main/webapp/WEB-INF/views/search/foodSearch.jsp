<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
	
    <title>식품으로 찾아보기 - 식품영양성분</title>
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
                    <a href="./index.html"><img class="home center" src="../images/sub/icon/material-home.svg" alt="홈 아이콘"></a>
                    <div class="route_info wrap">
                        <a href="/foodSearch"><span class="dap1">영양정보 찾아보기</span></a>
                        <a href="/foodSearch"><span class="dap2">식품으로 찾아보기</span></a>
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
                        <input id="searchKeyword" type="search" value="${searchInfo.searchKeyword}" placeholder="영양정보가 궁금한 식품을 입력해주세요">
                        
                        
                        <button class="search_icon center" type="submit">
                            <img src="../images/sub/icon/akar-search2.svg" alt="">
                        </button>
                    </div>
                </div>
            </div>
            <div class="search_inner mb60">
                <ul class="tab">
                    <div class="wrap_s">
                    	<c:forEach var="dataSort" items="${dataSortList}">
                        <li class="lnb big_category">
                            <div class="wrap">
                                <span>${dataSort.dataSortName}</span>
                            </div>
                        </li>
                        </c:forEach>
                    </div>
                </ul>
				<c:forEach var="dataSort" items="${dataSortList}">
                <div class="tab_content">
                    <ul class="tab_info">
                        <form action="">
                            <div class="icheck_sm_wrap">
                                <c:forEach var="mainCategory" items="${mainCategoryList}">
	                                <c:if test="${mainCategory.dataSortId == dataSort.dataSortId}">
		                                <div class="icheck_sm mar">
		                                    <input type="checkbox" name="mainCategory"
		                                    	id="main_${dataSort.dataSortId}_${mainCategory.mainCategoryId}" value="${mainCategory.mainCategoryName}">
		                                    <label for="main_${dataSort.dataSortId}_${mainCategory.mainCategoryId}">${mainCategory.mainCategoryName}</label>
		                                </div>
	                                </c:if>
                                </c:forEach>
                            </div>
                        </form>
                    </ul>

                    <div class="tab_inner_list clearfix">
                        <div class="tag_inner wrap">
                            <div class="tag_gnb"></div>
                            <div class="reset center">
                                <img src="../images/sub/icon/akar-arrow-repeat.svg" alt="">
                                <span>선택초기화</span>
                            </div>
                        </div>
                        <button id="search__btn" class="common_btn" type="button">선택된 조건내 검색하기</button>
                    </div>
                </div>
				</c:forEach>
                
            </div>
        </div>

    </section>

    <section class="table_menu">
        <div class="inner">
        	<div class="wrap mb20 label" style="color: #d34040; font-size: 20px; font-weight: 600;" id="searchResult">
        		
        	</div>
            <div class="wrap">

                <div class="menu_list">
                    <div class="wrap_s">
                        <div class="icheck_wrap">
                        	<div class="icheck mar">
                                <input type="radio" name="selection" id="s1" value="" checked="checked">
                                <label for="s1">전체 보기</label>
                            </div>
                            <div class="icheck mar">
                                <input type="radio" name="selection" id="s2" value="P">
                                <label for="s2">가공식품만 보기</label>
                            </div>
                            <div class="icheck mar">
                                <input type="radio" name="selection" id="s3" value="D">
                                <label for="s3">음식만 보기</label>
                            </div>
                            <div class="icheck mar">
                                <input type="radio" name="selection" id="s4" value="R">
                                <label for="s4">원재료만 보기</label>
                            </div>
                        </div>
                    </div>
                </div>

                <select class="page_num">
                    <div class="wrap">
                    <c:forEach var="i" begin="10" end="50" step="10">
                        <option value="${i}">
                            <span>${i}개씩</span>
                            <img src="../images/sub/icon/fa-solid-caret-down.svg" alt="">
                        </option>
                    </c:forEach>
                    </div>
                </select>
            </div>


            <table id="find_business_table" class="new_tbl_board tb01 mt20 mb60">
                <colgroup>
                    <col style="width: 4%;">
                    <col style="width: 15%;">
                    <col style="width: 10%;">
                    <col style="width: 10%;">
                    <col style="width: 7%;">
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
                <tbody id="foodList">
                </tbody>
            </table>

            <div class="pagenation wrap center mb80">
                <div id="at_front" class="at_front boder_box">                    
                </div>
                <div id="left" class="left boder_box">                    
                </div>
				<div id="page-numbers" class="page-numbers">
				</div>
                <div id="right" class="right boder_box">
                </div>
                <div id="at_back" class="at_back boder_box">                  
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="../common/footer.jsp" />
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <script>
    	
    	$(document).ready(function(){ 		
    		
    		$('.big_category').eq(0).addClass('on'); //메인카테고리 첫번째 항목 디스플레이 ON
    		
    		foodListShow(); //식품리스트 호출 함수 실행
    		
    		$('.page_num').click(function(){ //한페이지 표현 갯수 항목 클릭시
    			foodListShow();
    		});
    		
    		$('input[name=selection]').click(function(){ //결과 내 식품분류별 보기 버튼 클릭시
    			foodListShow();
    		});
    		
    		$('#searchKeyword').keypress(function(e){ //키워드 입력창 엔터 클릭시
    			if(e.keyCode && e.keyCode == 13){
    				foodListShow();
    			}
    		});
    		
    		$('.search_icon').click(function(){ //검색 아이콘 클릭시
    			foodListShow();
    		});
    		
    		$('.common_btn').click(function(){ //검색 버튼 클릭시
    			foodListShow();
    		});    		

    	});
    
    	
    	function foodListShow(requestPage){ //식품리스트 호출 함수(매개변수 현재 페이지)
    		
    		let searchKeyword = $('#searchKeyword').val(); //키워드 입력값 호출 및 변수 저장
    		
    		let dataSortId = "";
			$('input[name=selection]:checked').each(function(){ //식품구분 입력값 호출 및 변수 저장
				dataSortId = $(this).val();
    		});
			
    		let mainCategoryNameArr = [];
    		$('input[name=mainCategory]:checked').each(function(){ //메인 카테고리 입력값 호출 및 배열 변수 저장
    			let mainCategoryName = $(this).val();
    			mainCategoryNameArr.push(mainCategoryName);
    		});
    		
    		let manufacturingCompany = [];
    		
    		let repFoodName = [];
    		
    		let currentPage = requestPage == "" || requestPage == null ? 1: requestPage; //현재 페이지 변수 저장(매개변수 입력값 없을 경우 기본값 1)
    		
    		let itemsPerPage = parseInt($('.page_num').val()); //한페이지 표현 갯수값 호출 및 변수 저장
    		    		
    		let requestJsonData = {	//요청 데이터 객체 타입 저장
    			'searchKeyword' : searchKeyword,	
    			'dataSortId' : dataSortId,
    			'mainCategoryName' : mainCategoryNameArr,
    			'manufacturingCompany' : manufacturingCompany,
    			'repFoodName' : repFoodName,
    			'page' : {
    				'currentPage' : currentPage,
        			'itemsPerPage' : itemsPerPage	
    			}
    		};   		
    		
    		console.log(requestJsonData);
    		
    		let requestJsonDataString = JSON.stringify(requestJsonData); //요청 데이터 객체 JSON -> String 타입변경
			
    		$.ajax({
    			type: "POST",
    			url: "http://localhost:8080/foodSearchList", //ajax 통신 url
    			headers:{
					"Content-type":"application/json;charset:UTF-8"
				},
    			dataType: 'json', //데이터 반환 타입
    			data:requestJsonDataString, //전송 데이터
    			success: function(result){ //ajax 통신 성공 경우
    				
    				let searchResult;
    				if(result.page.totalItems != 0){ //검색결과 식품 리스트 값 있을 경우
    					searchResult = "검색결과 총 " + result.page.totalItems + "건";
    				} else { //검색결과 식품 리스트 값 없을 경우
    					searchResult = "해당하는 식품을 찾을 수 없어요";
    				}
    				
    				$('#searchResult').text(searchResult); //검색결과 항목 화면 텍스트 표기   				
    				
    				let data = "";
    				
    				for(item in result.foodList){
    					//식품 리스트 결과 table 행 추가용 String 저장 
    					data += '<tr onclick="location.href=\'foodDetail/' + result.foodList[item].foodCode + '\'">';
    					data += '<td>' + result.foodList[item].num + '</td>';
    					data += '<td>' + result.foodList[item].foodName + '</td>';
    					data += '<td>' + result.foodList[item].mainCategoryName + '</td>';
    					data += '<td>' + result.foodList[item].midCategoryName + '</td>';
    					data += '<td>' + result.foodList[item].kcal + '</td>';
	                    data += '</tr>';
    				}
    				
    				$('#foodList').html(data); //식품 리스트 결과 항목에 출력용 데이터 html 입력
    				
					//페이지 네이션 html 입력    				
    				$('#at_front').html(
        					'<a href="javascript:foodListShow(' + result.page.frontPage + ')"> <img src="../images/sub/icon/at_front.svg" alt=""> </a>'
       				); //건너 앞페이지(<<)
        				
       				$('#left').html(
           					'<a href="javascript:foodListShow(' + (result.page.currentPage-1) + ')"> <img src="../images/sub/icon/Icon akar-chevron-left-small.svg" alt=""> </a>'
           			); //앞페이지(<)    				
    				
    				data = "";
    				for(let i=result.page.pageStart; i<=result.page.pageEnd; i++) {
    					
    					if(i == result.page.currentPage) {
    						data += '<div class="number on" data-page="' + i + '"><a href="javascript:foodListShow(' + i + ')">' + i + '</a></div>';
    					} else {
    						data += '<div class="number" data-page="' + i + '"><a href="javascript:foodListShow(' + i + ')">' + i + '</a></div>';
    					}
    					  					
    				} //페이지 번호
    				$('.page-numbers').html(data);  
    				
    				
    				$('#right').html(
        					'<a href="javascript:foodListShow(' + (result.page.currentPage+1) + ')"> <img src="../images/sub/icon/Icon akar-chevron-right-small.svg" alt=""> </a>'
        			); //건너 뒤페이지(>>)   				
    				
    				$('#at_back').html(
        					'<a href="javascript:foodListShow(' + result.page.backPage + ')"> <img src="../images/sub/icon/at_back.svg" alt=""> </a>'
        			); //뒤페이지(>)
        		
    				
    			},
    			error: function(error){
    				console.log('통신실패');
    			}
    		});			
    	}
    
    </script>
</body>
</html>