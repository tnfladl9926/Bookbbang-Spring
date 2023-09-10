<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/style.css">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/mypage.css">
    
    <style>
        
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!--  --><%@ include file="/WEB-INF/views/inc/header.jsp" %>


        <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          

          <div class="col-3 bd-sidebar myinfo" style="overflow-y: hidden;">
            <!-- <div>
              <span>연진섭닙</span>
            </div>
            <div class="mybadge">

            </div> -->
            
            <div id="AsideMyProfile" class="my_profile_area" style="">
             
              <div class="profile_inner">
            <div class="profile_thumb_box no_img">
                    
              <div class="thumb_box">
                 <img src="/resources/image/bb1.png" style="width:100px;">
              </div>
            </div>
                  <div class="profile_name_box" style="">
              <span class="name" data-role="nickname">${name}님</span>
              <br>
              <div class="infobottom">
                <div class="zzim" >
                  <div class="zziminner">쿠폰</div>
                  <div class="zziminner" id="zzimcount">${couponResult}</div>
                </div>
                <div class="zzimcart" >
                  <div class="zziminner">장바구니</div>
                  <div class="zziminner" id="zzimcount">${result }</div>
                </div>
              </div>
          </div>
          
          <ul class="profile_info_list">
                  <li class="info_item" data-role="wish">
                      <a href="https://my.kyobobook.co.kr/library/wish" class="info_link">
                          <span class="title" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '찜', '');">찜</span>
                          <span class="val" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '찜', '');">0</span>
                      </a>
                  </li>
                  <li class="info_item" data-role="list">
                      <a href="https://my.kyobobook.co.kr/library/list" class="info_link">
                          <span class="title" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '리스트', '');">리스트</span>
                          <span class="val" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '리스트', '');">0</span>
                      </a>
                  </li>
          
          
           </ul>
              
          
              
          </div>
          
                      
                  
              
          </div>

          <ul class="nav">
          
          <form>
            <li><h5 class="mytitle">쇼핑 내역</h5></li>
            <li><a href="/member/mypagemain.do?memberseq=${memberseq}" class="acolor">주문내역</a></li>
          	<input type="hidden" value="${memberseq}"> 
          </form>
           
            <li><a href="/member/mypagestore.do?memberseq=${memberseq}" class="acolor"> 내 가게</a></li>
            <br>
            <li><h5 class="mytitle">문의 내역</h5></li>
            <li><a href="/member/mypagemain.do?memberseq=${memberseq}" class="acolor">1:1 문의</a></li>
            <li><a href="/member/mypagemain.do?memberseq=${memberseq}" class="acolor">상품 문의</a></li>
            <br>
            <li><h5 class="mytitle">내 정보</h5></li>
            <li><a href="/member/mypagedelivery.do?memberseq=${memberseq}" class="acolor">배송 주소록</a></li>
            <li><a href="/member/mypageedit.do?memberseq=${memberseq}" class="acolor">회원 정보 수정</a></li>
          </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <div  class="mypagemain">
                  
                  <!-- <div class="myhome">
                    <span class="material-symbols-outlined">
                      home
                      </span><span class="myhomespan"> 마이 홈</span>
                  </div> -->

                  <div class="mypageorder">
                    <div>
                      <span><h4 style="font-weight: bold;">회원 정보 수정</h4></span>
                    </div>
                    <br>
                    
                    <form method="POST" action="/member/mypageedit.do">
                    <table id="tbllist" class="table">
                        <thead>
                            <tr>
                                <th colspan="5" class="thAdd">내 정보 수정
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr class="trMenu">
                            <th class="short">이름 </th>
                            <td class="tdShort">${dto.name}</td>
                        </tr>
                        <tr class="trMenu">
                            <th class="short">이메일 </th>
                            <td class="tdShort">${dto.email}</td>
                        </tr>
                        <tr class="trMenu">
                            <th class="short">연락처 </th>
                            <td class="tdShort">${dto.tel}</td>
                        </tr>
                        <tr class="trMenu">
                            <th class="short">생년월일 </th>
                            <td class="tdShort">${dto.birth}</td>
                        </tr>
                        <tr class="trMenu">
                            <th class="short">아이디</th>
                            <td class="tdShort">${dto.id}</td>
                        </tr>
                        <tr class="trMenu">
                            <th class="short">새 비밀번호 </th>
                            <td class="tdShort"><input type="password" placeholder="비밀번호 입력" name="newPw" class="txt1 medit"></td>
                        </tr>
                        <tr class="trMenu">
                            <th class="short">비밀번호 재확인 </th>
                            <td class="tdShort"><input type="password" placeholder="비밀번호 확인" name="newPw2" class="txt1 medit"></td>
                        </tr>
                        </tbody>
                    </table>
  
                    <div style="text-align: right;">
                    <input type="button" class="btn btn-secondary" value="취소" onclick="history.back();">
                    <input type="submit" class="btn btn-primary" value="확인">
                   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
                    </div>
                    </form>
                
                </div>
                 
                </div>
               <br>
                
            </div>
          </div>
          <div class="col-1 over-wrap" id="aside1" >
            <table class="right-sidebar">
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>
            </table>
         </div>
        </div>
    </div> 
  </main>
      <hr>

      <div class="container-fluid footer-div" >
        <div class="footer1">
          <footer class="footer2">
              <div class="row footer3">
                <div class="col-6 col-md-10 mb-3">
                    <img src="/resources/image/bb1.png" class="footer-img">
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
    
    
    
   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</body>
</html>






