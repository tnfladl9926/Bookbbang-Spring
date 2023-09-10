<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inlineJ.css" rel="stylesheet">
   
    
    <style>
        
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
  
  <hr>
    
    <!-- 목록 -->
    
   

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->

      <main class="py-md-3">
      <div id="main">


            <div class="store-list">
                <div class="store-phrase">
                    <span class="material-symbols-outlined">
                        location_on
                        </span>
                    <span>지점안내</span>
                </div>
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                      <a id="ys" class="text-secondary nav-link active ec" aria-current="page" href="">역삼점</a>
                    </li>
                    <li class="nav-item">
                    <span style="border-right: 1px solid #eaeaea;">
                      <a id="dr" class="text-secondary nav-link ec" href="#">광화문점</a>
                    </span>
                    </li>
                    <li class="nav-item">
                    <span style="border-right: 1px solid #eaeaea;">
                      <a id="gn" class="text-secondary nav-link ec" href="#">강남점</a>
                    </span>
                    </li>
                    <li class="nav-item">
                    <span style="border-right: 1px solid #eaeaea;">
                      <a id="md" class="text-secondary nav-link ec" href="#">명동점</a>
                    </span>
                    </li>
                  </ul>
            </div>
     
            <div class="store-detail">
                <div class="content-inner">
                    <div class="left-area">
                        <div class="info-box" id="scroll">
						<!-- 책빵 지점 이름 컨테이너 -->
                            <div class="store-name-container"></div>
                            
                            
		<p id="ys_desc" class="store-name" style="display: none;">책빵 역삼점</p>
		<p id="dr_desc" class="store-name" style="display: none;">책빵 광화문점</p>
		<p id="gn_desc" class="store-name" style="display: none;">책빵 강남점</p>
		<p id="md_desc" class="store-name" style="display: none;">책빵 명동점</p>
                            
                            
                            
                            <div class="info-detail">
                                <ul class="store_info_list">
                                    <li class="store_info_item">
                                        <span class="info_title">매장주소: </span>
                                        <span class="info_desc">서울특별시 중구 장충단로13길 20, 현대시티아울렛 지하 1층</span>
                                    </li>
                                    <li class="store_info_item">
                                        <span class="info_title">영업시간: </span>
                                        <span class="info_desc">월~목 : 10:30~21:00 금~일,공휴일 : 10:30~21:30</span>
                                    </li>
                                    <li class="store_info_item">
                                        <span class="info_title">휴점: </span>
                                        <span class="info_desc">설(당일), 추석(당일)</span>
                                    </li>
                                    <li class="store_info_item">
                                        <span class="info_title">매장문의: </span>
                                        <span class="info_desc">02-1234-5678</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 이미지 컨테이너 -->
                    <div id="img-container" class="right-area"></div>
                        <img id="ysbb" class="pic" src="/resources/image/역삼책빵.jpg" style="display: none;">
                        <img id="drbb" class="pic" src="/resources/image/광화문책빵.jpg" style="display: none;">
                        <img id="gnbb" class="pic" src="/resources/image/강남책빵.jpg" style="display: none;">
                        <img id="mdbb" class="pic" src="/resources/image/명동책빵.jpg" style="display: none;">
                </div>
            </div>
            <div class="guide-container">
              <div class="guide-nav">
                <div class="guide-navbar">
                  <div class="store-phrase">
                    <!-- <span class="material-symbols-outlined" style="font-size: 30px; margin-right: 10px;">
                      directions_walk
                      </span> -->
                    <!-- <span> 오시는 길</span> -->
                  </div>
                  <ul class="nav store-nav">
                    <li class="nav-item">
                      <a id="yeoksam" class="text-secondary nav-link ce" aria-current="page" href="#">역삼점</a>
                    </li>
                    <li class="nav-item">
                    <span style="border-right: 1px solid #eaeaea;">
                      <a id="door" class="text-secondary nav-link ce" href="#">광화문점</a>
                    </span>
                    </li>
                    <li class="nav-item">
                    <span style="border-right: 1px solid #eaeaea;">
                      <a id="river" class="text-secondary nav-link ce" href="#">강남점</a>
                    </span>
                    </li>
                    <li class="nav-item">
                    <span style="border-right: 1px solid #eaeaea;">
                      <a id="dong" class="text-secondary nav-link ce" href="#">명동점</a>
                    </span>
                    </li>
                  </ul>
                  
                </div>
                  <div class="store-map">
                    <div class="store-title">
                      <p class="way_maindesc"><span class="material-symbols-outlined" style="font-size: 30px; margin-right: 10px;">
                      directions_walk
                      </span>오시는 길</p>
                    
                      
                    </br>
                    </br>
                    </br>
                    </br>
                      
                      <div id="way_subdesc_container"></div>
                      
                      
                    <p id="yeoksam_desc" class="way_subdesc" style="display: none;">
	                    <span class="address">서울 강남구 테헤란로 132 역삼동 한독빌딩</span>
	                    <br>
	                    <br>
	                    <br>
	                    지하철 2호선 역삼역 하차 3번 출구로 나와 강남 방향으로 500m
                    </p>
                    
					<p id="door_desc" class="way_subdesc" style="display: none;">
						<span class="address">서울 종로구 사직로 132 도곡동 수림빌딩</span>
						<br>
						<br>
						<br>
						지하철 5호선 광화문역 하차 3번출구 나오기 직전 왼쪽 출입구
					</p>
					
					<p id="river_desc" class="way_subdesc" style="display: none;">
						<span class="address">서울 강남구 테헤란로 132 대치동 재현빌딩</span>
						<br>
						<br>
						<br>
						지하철 2호선 강남역 하차 4번출구 나오기 직전 오른쪽 출입구
					</p>
					
					<p id="dong_desc" class="way_subdesc" style="display: none;">
						<span class="address">서울 중구 퇴계로 132 명동 연섭빌딩</span>
						<br>
						<br>
						<br>
						지하철 1호선 종각역 하차 1번출구 오른쪽 건물 지하1층
					</p>


                    </div>
                    <div class="border-right">
                    
                    </div>
                    <div class="map-container">
                      <div class="map-info">
                        <div id="map" style="width:800px;height:500px;"></div>
                      </div>  
                    </div>
                  </div> 
              </div>
            </div>
            <div class="store-service">
              <div class="title_head">
                <h2>
                  <span class="material-symbols-outlined">
                    info
                    </span>
                  매장 서비스
                </h2>
              </div>
              <ul class="service_list">
                <li class="shadow-sm service_item">
                  <div class="service_title">
                    <span class="img">
                      <img src="/resources/image/도서예약.png">
                    </span>
                    <span class="title">
                      도서예약 서비스
                    </span>
                  </div>
                  <div class="service_content">
                    <p class="info_text">
                      도서재고가 없는 경우, 매장 예약서비스 이용시 집까지 무료배송 또는 10%할인된 가격으로 매장픽업 가능합니다.
                    </p>
                  </div>
                </li>
                <li class="shadow-sm service_item">
                  <div class="service_title">
                    <span class="img">
                      <img src="/resources/image/바로드림.png">
                    </span>
                    <span class="title">
                      바로드림
                    </span>
                  </div>
                  <div class="service_content">
                    <p class="info_text">
                      인터넷/모바일 책빵에서 결제한 도서를 가까운 매장에서 직접 받는 서비스로 온라인 주문가로 구매하고, 기다리는 번거로움 없는 책빵만의 특별한 서비스 입니다.
                    </p>
                  </div>
                </li>
                <li class="shadow-sm service_item">
                  <div class="service_title">
                    <span class="img">
                      <img src="/resources/image/무인검색서비스.png">
                    </span>
                    <span class="title">
                      무인검색 서비스
                    </span>
                  </div>
                  <div class="service_content">
                    <p class="info_text">
                      모바일 책빵과 매장 내 무인검색대를 통해 도서 위치/매장 안내/매장 행사 등 다양한 정보를 확인하실 수 있습니다.
                    </p>
                  </div>
                </li>
                <li class="shadow-sm service_item">
                  <div class="service_title">
                    <span class="img">
                      <img src="/resources/image/스마트영수증.png">
                    </span>
                    <span class="title">
                      스마트 영수증
                    </span>
                  </div>
                  <div class="service_content">
                    <p class="info_text">
                      매장에서 구매한 상품 영수증을 모바일 책빵에서 확인하실 수 있습니다.
                    </p>
                  </div>
                </li>
                <li class="shadow-sm service_item">
                  <div class="service_title">
                    <span class="img">
                      <img src="/resources/image/영수증 적립.png">
                    </span>
                    <span class="title">
                      영수증 후 적립
                    </span>
                  </div>
                  <div class="service_content">
                    <p class="info_text">
                      매장 구매 후 적립하지 못한 포인트를 적립하실 수 있습니다.
                    </p>
                  </div>
                </li>
                <li class="shadow-sm service_item">
                  <div class="service_title">
                    <span class="img">
                      <img src="/resources/image/기프트카드.png">
                    </span>
                    <span class="title">
                      기프트카드
                    </span>
                  </div>
                  <div class="service_content">
                    <p class="info_text">
                      책빵 온라인 및 오프라인 매장에서 선불식 상품권 기프트카드를 구매하실 수 있습니다.
                    </p>
                  </div>
                </li>
              </ul>
            </div>      
        </div>
  </main>
      <hr>
              
         
      <div class="container-fluid footer-div" >
        <div class="footer1">
          <footer class="footer2">
              <div class="row footer3">
                <div class="col-6 col-md-10 mb-3">
                    <img src="img/bb1.png" class="footer-img">
                    <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">회사소개&nbsp;&nbsp;이용약관&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;청소년보호정책&nbsp;&nbsp;대량주문안내&nbsp;&nbsp;협력사여러분&nbsp;&nbsp;채용정보&nbsp;&nbsp;광고소개</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">대표이사 : 유동현 서울특별시 종로구 종로 1 사업자등록번호 : 102-81-11670</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">대표전화 : 1544-1900 | FAX : 0502-987-5711(지역번호 공통) 서울특별시 통신판매업신고번호 : 제 653호 사업자정보확인</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">© KYOBO BOOK CENTRE</a></li>
                    <li class="nav-item mb-7"><a href="#" class="nav-link p-0 text-muted"></a><small>&copy;&nbsp;2023&nbsp;JDSC&nbsp;F7Company,&nbsp;Inc.&nbsp;All&nbsp;rights&nbsp;reserved.</small></li>
                    </ul>
                    
                </div>
              
                <div class="col-md-2  mb-3">
                  <a href="https://instagram.com/book._bbang?igshid=MmIzYWVlNDQ5Yg=="><i class="bi bi-instagram footer-ico n" style="font-size: 2rem;"></i></a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="https://www.youtube.com/@amazingc0met"><i class="bi bi-youtube footer-icon"></i></a>
                </div>
              </div> 
          </footer>
        </div>
      </div>
    
    
   
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=346872c12e9ff5be50553feadb9cb99e"></script>
    <script>
    
    
    $(document).ready(function() {
        var mapContainer = document.getElementById('map'); // 지도를 표시할 div

        var mapOptions = {
            center: new kakao.maps.LatLng(37.49940403048014, 127.03331593718781), // 초기 중심 좌표
            level: 3 // 지도의 초기 확대 레벨
        };

        var map = new kakao.maps.Map(mapContainer, mapOptions); // 지도를 생성합니다

        var markerPositionYeoksam = new kakao.maps.LatLng(37.49940403048014, 127.03331593718781);
        var markerPositionDoor = new kakao.maps.LatLng(37.57194099072378, 126.97430398330904);
        var markerPositionRiver = new kakao.maps.LatLng(37.49924334962887, 127.02748615485667);
        var markerPositionDong = new kakao.maps.LatLng(37.564756967326396, 126.98195226259679);

        var markerYeoksam = new kakao.maps.Marker({
            position: markerPositionYeoksam
        });

        var markerDoor = new kakao.maps.Marker({
            position: markerPositionDoor
        });

        var markerRiver = new kakao.maps.Marker({
            position: markerPositionRiver
        });

        var markerDong = new kakao.maps.Marker({
            position: markerPositionDong
        });

        markerYeoksam.setMap(map);
        markerDoor.setMap(map);
        markerRiver.setMap(map);
        markerDong.setMap(map);

        $('#yeoksam').click(function() {
            map.setCenter(markerPositionYeoksam);
            $('#way_subdesc_container').html($('#yeoksam_desc').clone());
    	    $('#way_subdesc_container').find('#yeoksam_desc').css('display', 'block');
    	    $('#way_subdesc_container').find('#door_desc, #river_desc, #dong_desc').css('display', 'none');
        });

        $('#door').click(function() {
            map.setCenter(markerPositionDoor);
            $('#way_subdesc_container').html($('#door_desc').clone());
    	    $('#way_subdesc_container').find('#yeoksam_desc').css('display', 'none');
    	    $('#way_subdesc_container').find('#door_desc').css('display', 'block');
    	    $('#way_subdesc_container').find('#river_desc, #dong_desc').css('display', 'none');
        });

        $('#river').click(function() {
            map.setCenter(markerPositionRiver);
            $('#way_subdesc_container').html($('#river_desc').clone());
    	    $('#way_subdesc_container').find('#yeoksam_desc').css('display', 'none');
    	    $('#way_subdesc_container').find('#river_desc').css('display', 'block');
    	    $('#way_subdesc_container').find('#door_desc, #dong_desc').css('display', 'none');
        });

        $('#dong').click(function() {
            map.setCenter(markerPositionDong);
            $('#way_subdesc_container').html($('#dong_desc').clone());
    	    $('#way_subdesc_container').find('#yeoksam_desc').css('display', 'none');
    	    $('#way_subdesc_container').find('#door_desc, #river_desc').css('display', 'none');
    	    $('#way_subdesc_container').find('#dong_desc').css('display', 'block');
        });
        
        // 페이지 로드 시 역삼점에 대한 정보 보이도록 초기 설정
        $('#way_subdesc_container').html($('#yeoksam_desc').clone());
        $('#way_subdesc_container').find('#yeoksam_desc').css('display', 'block');
        $('#way_subdesc_container').find('#door_desc, #river_desc, #dong_desc').css('display', 'none');
        
        
        
        
        
        
        $('#ys').click(function() {
     
            $('.store-name-container').html($('#ys_desc').clone());
    	    $('.store-name-container').find('#ys_desc').css('display', 'block');
    	    $('.store-name-container').find('#dr_desc, #gn_desc, #md_desc').css('display', 'none');
    	    
    	    
    	    $('#img-container').html($('#ysbb').clone());
    	    $('#img-container').find('#ysbb').css('display', 'block');
    	    $('#img-container').find('#drbb, #gnbb, #mdbb').css('display', 'none');
        });

        $('#dr').click(function() {
           
            $('.store-name-container').html($('#dr_desc').clone());
    	    $('.store-name-container').find('#ys_desc').css('display', 'none');
    	    $('.store-name-container').find('#dr_desc').css('display', 'block');
    	    $('.store-name-container').find('#gn_desc, #md_desc').css('display', 'none');
    	    
    	    
    	    $('#img-container').html($('#drbb').clone());
    	    $('#img-container').find('#ysbb').css('display', 'none');
    	    $('#img-container').find('#drbb').css('display', 'block');
    	    $('#img-container').find('#gnbb, #mdbb').css('display', 'none');
        });

        $('#gn').click(function() {
           
            $('.store-name-container').html($('#gn_desc').clone());
    	    $('.store-name-container').find('#ys_desc').css('display', 'none');
    	    $('.store-name-container').find('#gn_desc').css('display', 'block');
    	    $('.store-name-container').find('#dr_desc, #md_desc').css('display', 'none');
    	    
    	    
    	    
    	    $('#img-container').html($('#gnbb').clone());
    	    $('#img-container').find('#ysbb').css('display', 'none');
    	    $('#img-container').find('#gnbb').css('display', 'block');
    	    $('#img-container').find('#drbb, #mdbb').css('display', 'none');
    	    
        });

        $('#md').click(function() {
           
            $('.store-name-container').html($('#md_desc').clone());
    	    $('.store-name-container').find('#ys_desc').css('display', 'none');
    	    $('.store-name-container').find('#dr_desc, #gn_desc').css('display', 'none');
    	    $('.store-name-container').find('#md_desc').css('display', 'block');
    	    
    	    
    	    
    	    $('#img-container').html($('#mdbb').clone());
    	    $('#img-container').find('#ysbb').css('display', 'none');
    	    $('#img-container').find('#drbb, #gnbb').css('display', 'none');
    	    $('#img-container').find('#mdbb').css('display', 'block');
        });
        
        
     // 페이지 로드 시 역삼점에 대한 정보 보이도록 초기 설정
        $('.store-name-container').html($('#ys_desc').clone());
        $('.store-name-container').find('#ys_desc').css('display', 'block');
        $('.store-name-container').find('#dr_desc, #gn_desc, #md_desc').css('display', 'none');
        
        $('#img-container').html($('#ysbb').clone());
        $('#img-container').find('#ysbb').css('display', 'block');
        $('#img-container').find('#drbb, #gnbb, #mdbb').css('display', 'none');
        
        
    });

    
    $(document).ready(function() {
        // 페이지 로드 시 역삼점에 active 클래스 추가
        $('#ys').addClass('active');

        $('.ec').click(function() {
            $('.ec').removeClass('active'); // 모든 nav-link 요소에서 active 클래스 제거
            $(this).addClass('active'); // 클릭된 요소에 active 클래스 추가
        });
    });

    $(document).ready(function() {
        // 페이지 로드 시 역삼점에 active 클래스 추가
        $('#yeoksam').addClass('active');

        $('.ce').click(function() {
            $('.ce').removeClass('active'); // 모든 nav-link 요소에서 active 클래스 제거
            $(this).addClass('active'); // 클릭된 요소에 active 클래스 추가
        });
    });
    
    
    $('#yeoksam').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#yeoksam_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
   
    $('#door').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#door_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
    $('#river').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#river_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
    $('#dong').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#dong_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
    $('#ys').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#ys_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
   
    $('#dr').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#dr_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
    $('#gn').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#gn_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });
    
    $('#md').click(function(event) {
        event.preventDefault(); // 기본 클릭 동작을 중지합니다.

        var targetElement = $('#md_desc');
        var anchor = targetElement.attr('id');

        window.location.hash = anchor; // 앵커를 URL에 추가합니다.
    });

    
    
    </script>



</body>
</html>






