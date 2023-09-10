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
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="/resources/css/style.css">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/mypage.css">
    <link rel="stylesheet" href="/resources/css/charin.css">
    
    <style>
        
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>

<style>
   
</style>
</head>

<body>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
        

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
              <span class="name" data-role="nickname">${name}</span>
              <br>
             
              <div class="infobottom">
                <div class="zzim" >
                  <div class="zziminner">쿠폰</div>
                  <div class="zziminner" id="zzimcount">${couponResult}</div>
                </div>
                <div class="zzimcart" >
                  <div class="zziminner">장바구니</div>
                  <div class="zziminner" id="zzimcount">${result}</div>
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
         <form>
          <ul class="nav">
            <li><h5 class="mytitle">쇼핑 내역</h5></li>
            <li><a href="/member/mypagemain.do" class="acolor">주문내역</a></li>
           
            <li><a href="/member/mypagestore.do" class="acolor"> 내 가게</a></li>
            <br>
            <li><h5 class="mytitle">문의 내역</h5></li>
            <li><a href="/member/mypagemain.do" class="acolor">1:1 문의</a></li>
            <li><a href="/member/mypagemain.do" class="acolor">상품 문의</a></li>
            <br>
            <li><h5 class="mytitle">내 정보</h5></li>
            <li><a href="/member/mypagedelivery.do" class="acolor">배송 주소록</a></li>
            <li><a href="/member/mypageedit.do" class="acolor">회원 정보 수정</a></li>
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
                      <span><h4 style="font-weight: bold;">주문 내역</h4></span>
                    </div>
                    <br>
                    
                    <div class="order_history_group">
                      <!-- 주문내역 타이틀 영역 -->
                      <!-- DESC : 타이틀 영역은 [.type_title] 클래스 추가 -->
                      <div class="order_history_box type_title">
                          <span class="history_val">주문내역</span>
                          <span class="history_desc">
                              주문/배송안내
                          </span>
                      </div>
                      <!-- //주문내역 타이틀 영역 -->
                      <!-- 수정 220428 리스트 목록 수정 -->
                      <div class="order_history_box">
                          <button type="button" class="btn_filter_history">
                              <span class="ordercount history_val" data-order-summary-preparation="">1</span>
                              <span class="history_desc">주문접수</span>
                          </button>
                      </div>
                      <div class="order_history_box">
                          <button type="button" class="btn_filter_history">
                              <span class="history_val" data-order-summary-delivery="">0</span>
                              <span class="history_desc">배송중</span>
                          </button>
                      </div>
                      <div class="order_history_box">
                          <button type="button" class="btn_filter_history">
                              <span class="history_val" data-order-summary-delivery-finish="">0</span>
                              <span class="history_desc">배송완료</span>
                          </button>
                      </div>
                      <div class="order_history_box">
                        <!--   <button type="button" class="btn_filter_history"> -->
                              <span class="paycount history_val"data-order-summary-cancel="">0</span>
                              <span class="history_desc">취소</span>
                          <!-- </button> -->
                      </div>
                      <div class="order_history_box">
                          <button type="button" class="btn_filter_history">
                              <span class="history_val" data-order-summary-exchange-returned-goods="">0</span>
                              <span class="history_desc">교환/반품</span>
                          </button>
                      </div>
                      <!-- //수정 220428 리스트 목록 수정 -->
                  </div>
                  </div>
                  <br>
                  <br>
                  
                  <!-- 채린 -->
                  <c:forEach items="${paylist}" var="pay">
                  <div class="orderCont">
                    <div class="orderHead">
                        <span>주문번호 : ${pay.checknum}</span><span>주문날짜 : ${pay.regdate}</span>
                    </div>
                    <div>
                        <table class="bookCont">
                            <tbody>
                                <tr>
                                    <td class="bookChk">
                                        <input type="checkbox">
                                    </td>
                                    <td style="vertical-align: top; width: 100px;">
                                        <div class="cartImg">
                                        <img src="/resources/image/bookposter/${pay.image}" >
                                        </div>
                                    </td>
                                    <td class="bookInfo">
                                        <div class="bookName">
                                            ${pay.title}
                                        </div>
                                        <div class="quantity">
                                            수량: 1
                                        </div>
                                    </td>
                                    <td class="bookPayment">
                                        ${pay.price}원
                                    </td>
                                    <td class="orderStatement">
                                        <strong style="color:rgb(38, 104, 226)" class="ordertext" >주문접수</strong>
                                    </td>
                                    <td class="orderButton">
                                      
                                      <form method="POST" action="">
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-secondary" data-address="new-btn" data-bs-toggle="modal" data-bs-target="#cancelmodal">
                                          <span class="text" style="text-align: center;">주문 취소</span>
                                        </button>
                
                                          <!-- Modal -->
                                          <div class="modal fade" id="cancelmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h1 class="modal-title fs-5" id="exampleModalLabel">주문 삭제</h1>
                                                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                  <div><p>주문을 취소하시겠습니까?</p></div>
                                              </div>
                                              <div class="modal-footer">
                                                <div style="margin-right: 130px;">
                                                  <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal" style="display: inline-block; width:100px;">취소</button>
                                                  <button type="button" class="btn btn-primary" id="corder" data-bs-dismiss="modal" style="display: inline-block; width:100px;">확인</button>
                                                </div>
                                               
                                              </div>
                                              </div>
                                            </div>
                                          </div>
                                      </form>
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                </c:forEach>
               
        

                </div>
               <br>
               

            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
    
    
    
    
    $('#corder').click(function(){
       
       let cancle = $('.ordertext').text();
         let cc = 1;
       let bb = 0;
         
       $('.ordertext').text('주문취소');
       $('.paycount').text(cc);
       $('.ordercount').text(bb);
    });
    
    
    </script>


</body>
</html>





