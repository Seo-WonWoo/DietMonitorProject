$(document).ready(function() {
	//foodSearch 탭메뉴
    $(".search_cont ul.tab li.lnb").on('click', function() {
        let index = $(".search_cont ul.tab li.lnb").index(this);
      
        $('.search_cont ul.tab li.lnb').removeClass('on');
        $(this).addClass('on');
        
        $('.search_cont .tab_content').hide();
        $('.search_cont .tab_content:eq(' + index + ')').show();
    });

    $('.search_cont .tab_content').hide();
    $('.search_cont .tab_content:first').show();

    //foodSearch 검색부분 체크박스 - 체크 시 tag_gnb에 표시
    $(".icheck_sm_wrap input[type='checkbox']").change(function() {
        let checkboxId = $(this).attr('id');
        let checkboxLabel = $("label[for='" + checkboxId + "']").text();
        let $tagContainer = $(".tag_gnb");

        if ($(this).is(':checked')) {
            if (!$tagContainer.find(`.tag[data-id='${checkboxId}']`).length) {
                $tagContainer.append(`
                    <div class="tag" data-id="${checkboxId}">
                        ${checkboxLabel}
                        <span class="close-btn"></span>
                    </div>
                `);
            }
        } else {
            $tagContainer.find(`.tag[data-id='${checkboxId}']`).remove();
        }
    });

	//foodSearch 검색부분 체크박스 - close-btn클릭 시 해당 태그 지우기
    $(document).on('click', '.tag .close-btn', function() {
        let $tag = $(this).closest('.tag');
        let checkboxId = $tag.data('id');
        $(`#${checkboxId}`).prop('checked', false).trigger('change');
        $tag.remove();
    });

	//foodSearch 검색부분 체크박스 - 선택초기화 버튼 클릭시 리셋
    $(".reset").click(function() {
        $(".icheck_sm_wrap input[type='checkbox']").prop('checked', false);
        $(".tag_gnb").empty();
    });




    // 나의 영양성분 비교분석 - 슬라이드 상세보기 클릭시 보이기 / 닫기 클릭시 숨김
    $(".popup .box .close").click(function(){
        $(".popup").hide();
    });
	
	

    /*$(".decibal_title .slide_box .box .more").click(function(){
        $(".popup").show();
    });*/
	
	$(".decibal_title .slide_box .box .more").each(function(i) {
	    $(this).click(function() {
	        $(".popup").eq(i).show();
	    });
	});

    const slideDistance = 600; // 슬라이드 이동 거리
    const animationDuration = 300; // 애니메이션 지속 시간 (밀리초)

	//표 상세 영양정보 슬라이드 버튼 클릭시 각 해당 기능 작동
    function updateScroll(button, direction) {
        var target = $(button).data('target');
        var $nutrient = $(target);
        var currentScroll = $nutrient.scrollLeft();
        var maxScroll = $nutrient[0].scrollWidth - $nutrient.width();
        
        if (direction === 'left') {
            var newScroll = Math.max(currentScroll - slideDistance, 0);
        } else {
            var newScroll = Math.min(currentScroll + slideDistance, maxScroll);
        }
        
        $nutrient.animate({ scrollLeft: newScroll }, 300);
    }
    
    function updateScroll(button, direction) {
        var target = $(button).data('target');
        var $nutrients = $(target);
        var currentScroll = $nutrients.scrollLeft();
        var maxScroll = $nutrients[0].scrollWidth - $nutrients.width();
        
        if (direction === 'left') {
            var newScroll = Math.max(currentScroll - slideDistance, 0);
        } else {
            var newScroll = Math.min(currentScroll + slideDistance, maxScroll);
        }
        
        $nutrients.animate({ scrollLeft: newScroll }, 300);
    }

    $('.slider-left').click(function() {
        updateScroll(this, 'left');
    });

    $('.slider-right').click(function() {
        updateScroll(this, 'right');
    });

	// 표 tr 클릭시 해당 tr요소의 정보 보임 / 숨김
    $('tbody tr').click(function() {
        var $nextTr = $(this).next('tr');
        if ($nextTr.length > 0 && $nextTr.hasClass('tr_event')) {
            $('.more_information').not($nextTr.find('.more_information')).hide();
            
            $nextTr.find('.more_information').toggle();
        }
    });
    
	// 표 슬라이드 해당 버튼 클릭시 이동
    $('.table_menu').each(function() {
        const $section = $(this);
        const $tableInner = $section.find('.table_inner');
        const $leftBtn = $section.find('.slider_prev img');
        const $rightBtn = $section.find('.slider_next img');
        const $linearBox = $section.find('.linear_box');

        let scrollLeft = 0;
        let linearBoxRight = 0;

        function updateLinearBoxPosition() {
            $linearBox.css('right', `${linearBoxRight}px`);
        }

        $leftBtn.on('click', function() {
            scrollLeft = Math.max(0, scrollLeft - slideDistance);
            linearBoxRight = Math.min(0, linearBoxRight + slideDistance);

            updateLinearBoxPosition();

            $tableInner.animate({
                scrollLeft: scrollLeft
            }, animationDuration);
        });

        $rightBtn.on('click', function() {
            const maxScroll = $tableInner[0].scrollWidth - $tableInner.width();
            scrollLeft = Math.min(maxScroll, scrollLeft + slideDistance);
            linearBoxRight = Math.max(-maxScroll, linearBoxRight - slideDistance);

            updateLinearBoxPosition();

            // 테이블을 오른쪽으로 슬라이드
            $tableInner.animate({
                scrollLeft: scrollLeft
            }, animationDuration);
        });

        updateLinearBoxPosition();
    });

	const slideContainer = document.querySelector('.swiper-wrapper');
    const slideBoxes = document.querySelectorAll('.swiper-slide');
    const slidePrev = document.querySelector('.slide_prev img');
    const slideNext = document.querySelector('.slide_next img');

    let currentSlide = 0;
    const slideWidth = slideBoxes[0].clientWidth + 60; // 박스 너비 + margin-right

    slideNext.addEventListener('click', () => {
        if (currentSlide < slideBoxes.length - 1) {
            currentSlide++;
            slideContainer.style.transform = `translateX(-${slideWidth * currentSlide}px)`;
        }
    });

    slidePrev.addEventListener('click', () => {
        if (currentSlide > 0) {
            currentSlide--;
            slideContainer.style.transform = `translateX(-${slideWidth * currentSlide}px)`;
        }
    });

    
});
