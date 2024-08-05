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
                    <div class="sig_title">회원정보수정</div>

                    <div class="sig_input active wrap_s">
                        <p>아이디<span class="red">*</span></p>
                        <input type="text" placeholder="rkdwldms9058" readonly>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>비밀번호<span class="red">*</span></p>
                        <input type="text" placeholder="비밀번호를 입력해 주세요">
                    </div>
                    <div class="sig_input wrap_s">
                        <p>비밀번호확인<span class="red">*</span></p>
                        <input type="text" placeholder="비밀번호를 한번 더 입력해 주세요">
                    </div>
                    <div class="sig_input wrap_s">
                        <p>이름<span class="red">*</span></p>
                        <input type="text" placeholder="이름을 입력해주세요">
                    </div>
                    <div class="sig_input wrap_s">
                        <p>나이<span class="red">*</span></p>
                        <input type="text" placeholder="나이를 입력해주세요">
                    </div>
                    <div class="sig_input wrap_s">
                        <p>성별<span class="red">*</span></p>
                        <div class="wrap_s">
                            <input type="radio" name="chk_info" value="gender"><span class="mr20">여자</span>
                            <input type="radio" name="chk_info" value="man" checked="checked"><span>남자</span>
                        </div>
                    </div>
                    <div class="sig_input wrap_s">
                        <p>키/몸무게<span class="red">*</span></p>
                        <input type="text" placeholder="키/몸무게 입력해 주세요">
                    </div>
                </div>
    
                <button class="common_btn">회원정보수정</button>
            </div>
            
            
        </div>

    </section>



    <jsp:include page="footer.jsp" />
</body>
</html>