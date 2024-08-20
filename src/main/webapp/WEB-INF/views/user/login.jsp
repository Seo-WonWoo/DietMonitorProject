<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
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
    <script type="text/javascript" src="../script/commen.js"></script>

    <title>식품영양성분 - 로그인</title>
</head>
<body>
	<header id="header">
        <div class="header_inner header_sub">
            <jsp:include page="../common/header.jsp" />
        </div>
    </header>



    <section class="login">
        <div class="inner">
            <div class="login_inner">
                <div class="login_title">로그인</div>

                <form action="/login" method="post">
                    <div class="login_input">
                        <input type="email" name="email" placeholder="이메일을 입력해 주세요" required>
                    </div>
                    <div class="login_input">
                        <input type="password" name="pw" placeholder="비밀번호를 입력해 주세요" required>
                    </div>
                    <c:if test="${ not empty logErrorMsg}">
						<span class="check_info red">${logErrorMsg}</span>
					</c:if>

                    <button class="common_btn" type="submit">로그인</button>
                    <button class="common_opposite_btn" type="button" onclick="location.href='/signup'">회원가입</button>
                </form>
            </div>
        </div>
    </section>

	
	<jsp:include page="../common/footer.jsp" />

    
</body>
</html>