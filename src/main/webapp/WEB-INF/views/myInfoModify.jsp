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


    <section class="signup sig_modify">
        <div class="inner">
            <div class="sig_inner">
                <div class="sig_inputs">
                    <div class="sig_title">내 정보</div>

                    <div class="sig_input active wrap_s">
                        <p>아이디</p>
                        <p class="information">rkdwldms9058</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>이름</p>
                        <p class="information">강지은</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>나이</p>
                        <p class="information">26</p>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>성별</p>
                        <p class="information">여자</p>
                    </div>
                </div>
    
                <button class="common_btn">회원정보수정</button>
            </div>
            
            
        </div>

    </section>



    <jsp:include page="footer.jsp" />
</body>
</html>