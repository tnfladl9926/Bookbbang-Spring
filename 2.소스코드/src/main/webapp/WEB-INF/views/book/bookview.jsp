<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/sulim.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="/resources/css/style.css">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/inline.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <link rel="stylesheet" href="/resources/css/bookview.css">
    <style>
        

</style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/inc/header.jsp" %>

        <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          <div class="col-3 bd-sidebar">
            <ul class="nav">
              <li><h3>${bookview[0].field}</h3></li>
              <c:forEach items="${booknav}" var="dto">
              <li><a href="booklist.do?field=${bookview[0].field}&genre=${dto.genre}">${dto.genre}</a></li>
              </c:forEach>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <form method="GET" action="/cart/cartall.do">
				<input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>">
                   
      <!-- content -->
      <section class="py-5">
        <div class="container">
          <div class="row gx-5">
            <aside class="col-lg-6">
              <div class="border rounded-4 mb-3 d-flex justify-content-center" style="border: 0px !important;">
                <a data-fslightbox="mygalley" class="rounded-4" target="_blank" data-type="image" href="/image/test.jpg">
                  <!-- <img style="max-width: 90%; max-height: 90vh; margin: auto;" class="rounded-4 fit" src="/img/event.jpeg"  /> -->
                  <img style="object-fit: cover; margin: auto;" class="rounded-4 fit" src="/resources/image/bookposter/${bookview[0].image}"  />
                </a>
              </div>
           
              <!-- thumbs-wrap.// -->
              <!-- gallery-wrap .end// -->
            </aside>
            <main class="col-lg-6">
              <div class="ps-lg-3">
                <h4 class="title text-dark">
                  ${bookview[0].title}<br />
                </h4>

                
                <div class="mb-3">
                    <span class="writer">${bookview[0].writer}</span>
                    <span class="beforeLine"> ${bookview[0].publisher}</span>
                    <span class="beforeLine"> 출판날짜 ${bookview[0].regdate}</span>
                </div>

                


                <div class="d-flex flex-row my-3">
                  <div class="text-warning mb-1 me-2">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <!-- <span class="material-symbols-rounded">
                      star_half
                      </span> -->
                    <span class="ms-1">
                      5.0
                    </span>
                  </div>
                  <span class="text-muted"><i class="fas fa-shopping-basket fa-sm mx-1"></i>판매지수</span>
                  <span class="text-success ms-2">판매중</span>
                </div>
      
                
                <div class="mb-3">
                  <span class="h4">할인가: ${bookview[0].price}원</span>
                  <span class="text-muted">/개당</span>
                </div>
      
                <div class="mb-3">
                    <span class=></span>
                </div>
                
                
                
                
                
                
                
                
                 

               
                <hr />
      
                

                  <!-- col.// -->
                  <div class="col-md-4 col-6 mb-3">
                    <label class="mb-2 d-block">수량</label>
                    <div class="input-group mb-3" style="width: 170px;">
                      <button class="btn btn-white border border-secondary px-3" type="button" id="decrementButton" data-mdb-ripple-color="dark" >
                        <i class="fas fa-minus"></i>
                      </button>
                      <input type="text" class="form-control text-center border border-secondary" placeholder="1" aria-label="Example text with button addon" aria-describedby="button-addon1" id="quantityInput" />
                      <button class="btn btn-white border border-secondary px-3" type="button" id="incrementButton" data-mdb-ripple-color="dark" >
                        <i class="fas fa-plus"></i>
                      </button>
                    </div>
                  </div>
                </div>
                <button type="button" class="btn btn-warning shadow-0" onclick="location.href='/payment/payment.do?memberseq=<sec:authentication property="principal.memberseq"/>&bookseq=${bookview[0].bookseq}';">바로구매</button>
                <button type="button" class="btn btn-primary shadow-0" onclick="location.href='/cart/cartadd.do?memberseq=<sec:authentication property="principal.memberseq"/>&bookseq=${bookview[0].bookseq}';"><i class="me-1 fa fa-shopping-basket"></i>장바구니</button>
              </div>
          </form>

              <!-- <form>
                <input type=button value="-" onClick="javascript:this.form.amount.value--;">
                <input type=text name=amount value=1 style="text-align: center;">
                <input type=button value="+" onClick="javascript:this.form.amount.value++;">
                </form> -->

             
                
            
          </div>
        </div>
        </div>
        <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
      <!-- content -->
      
      <section class="border-top py-4" style="background-color: #fff; border-top: 0px !important;">
        <div class="container" style="display: flex;">
          <div class="row gx-4" style="margin-left: 150px;">
            <div class="col-lg-8 mb-4">
              <div class="border rounded-2 px-3 py-2 bg-white" style="width: 1000px;">

                <!-- Pills navs -->
                <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                  <li class="nav-item d-flex" role="presentation">
                    <a class="nav-link d-flex align-items-center justify-content-center w-100 active" id="ex1-tab-1" data-toggle="tab" href="#ex1-pills-1" role="tab" aria-controls="ex1-pills-1" aria-selected="true">도서 정보</a>
                    
                  </li>
                  <li class="nav-item d-flex" role="presentation">
                    <a class="nav-link d-flex align-items-center justify-content-center w-100" id="ex1-tab-2" data-toggle="tab" href="#ex1-pills-2" role="tab" aria-controls="ex1-pills-2" aria-selected="false">리뷰/한줄평</a>
                  </li>
                  <li class="nav-item d-flex" role="presentation">
                    <a class="nav-link d-flex align-items-center justify-content-center w-100" id="ex1-tab-3" data-toggle="tab" href="#ex1-pills-3" role="tab" aria-controls="ex1-pills-3" aria-selected="false">배송/반품/교환</a>
                  </li>
                </ul>
                <!-- Pills navs -->
      
                <!-- Pills content -->
                <br class="tab-content" id="ex1-content">
                  <div class="tab-pane fade show active" id="ex1-pills-1" role="tabpanel" aria-labelledby="ex1-tab-1">
                    <p>
                      ${bookview[0].explain}
                    </p>
                    
                  </div>
                  <div class="tab-pane fade mb-2" id="ex1-pills-2" role="tabpanel" aria-labelledby="ex1-tab-2">
                    <span class="reivew" style="font-size: 20px;">회원리뷰</span> (19건) <br> 
                    <span class="reviewD" style="font-size: 13px;">매주 10건의 우수리뷰를 선정하여 YES포인트 3만원을 드립니다. <br>
                    3,000원 이상 구매 후 리뷰 작성 시 일반회원 300원, 마니아회원 600원의 YES포인트를 드립니다. <br>
                    (CD/LP, DVD/Blu-ray, 패션 및 판매금지 상품, 예스24 앱스토어 상품 제외)</span> <br>
                  
                  

                        <div class="container justify-content-center mt-5">
                          <!-- <div class="d-flex justify-content-center pt-3 pb-2"> <input type="text" name="text" placeholder="+ Add a note" class="form-control addtxt"> </div> -->
                          <div class="d-flex justify-content-center py-2">
                              <div class="second py-2 px-2"> <span class="text1">리뷰 및 한줄평입니다.</span>
                                  <div class="d-flex justify-content-between py-1 pt-2">
                                      <div><span class="text2">작성자</span><div class="text-warning mb-1 me-2" style="font-size: 18px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                      </div></div>
                                      <div><span class="text3">추천수</span><span class="thumbup"><i class="fa fa-thumbs-o-up"></i></span><span class="text4">3</span></div>
                                  </div>
                              </div>
                          </div>
                          <div class="d-flex justify-content-center py-2">
                            <div class="second py-2 px-2"> <span class="text1">리뷰 및 한줄평입니다.</span>
                                <div class="d-flex justify-content-between py-1 pt-2">
                                    <div><span class="text2">작성자</span><div class="text-warning mb-1 me-2" style="font-size: 18px;">
                                      <i class="fa fa-star"></i>
                                      <i class="fa fa-star"></i>
                                      <i class="fa fa-star"></i>
                                      <i class="fa fa-star"></i>
                                      <i class="fa fa-star"></i>
                                    </div></div>
                                    <div><span class="text3">추천수</span><span class="thumbup"><i class="fa fa-thumbs-o-up"></i></span><span class="text4">3</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center py-2">
                          <div class="second py-2 px-2"> <span class="text1">리뷰 및 한줄평입니다.</span>
                              <div class="d-flex justify-content-between py-1 pt-2">
                                  <div><span class="text2">작성자</span><div class="text-warning mb-1 me-2" style="font-size: 18px;">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                  </div></div>
                                  <div><span class="text3">추천수</span><span class="thumbup"><i class="fa fa-thumbs-o-up"></i></span><span class="text4">3</span></div>
                              </div>
                          </div>
                      </div>
                          
                      </div>

                    <hr style="margin-top: 35px;">

                      
                    <div class="marginTop" style="margin-top: 35px;">
                    <span class="reivew" style="font-size: 20px;">한줄평</span> (19건) <br> 
                    <span class="reviewD" style="font-size: 13px;">
                      1,000원 이상 구매 후 한줄평 작성 시 일반회원 50원, 마니아회원 100원의 YES포인트를 드립니다.<br>
                    (CD/LP, DVD/Blu-ray, 패션 및 판매금지 상품, 예스24 앱스토어 상품 제외)</span> <br>
                      
                    
                    <section class="review-container" style="margin-top: 40px;">
                      
               
                        <div class="row">
                            
                            <div class="col-10">
                                
                                <div class="comment-box ml-2">
                                    
                                    <h5>리뷰 등록</h5>

                                    <div class="reviewWrite" style="width: 670px;">
                                    
                                        <div class="rating" style="padding-top: 5px; padding-bottom: 5px;">
                                          <span class="rating__result" style="font-size: 15px;"></span>
            
                                          <i class="rating__star far fa-star"></i>
                                          <i class="rating__star far fa-star"></i>
                                          <i class="rating__star far fa-star"></i>
                                          <i class="rating__star far fa-star"></i>
                                          <i class="rating__star far fa-star"></i>

                                        </div>
                                        
                                        <div class="comment-area" style="padding-top: 15px;">
                                            
                                            <textarea class="form-control" placeholder="한줄평을 작성해주세요." rows="4" style="width: 80%;"></textarea>
                                        
                                        </div>
                                        
                                        <div class="comment-btns mt-2">
                                            
                                            <div class="row">
                                            
                                                <div class="col-6">
                                                    
                                                    <div class="pull-right">
                                                    
                                                    <button class="btn btn-success send btn-sm">Send <i class="fa fa-long-arrow-right ml-1"></i></button>      
                                                        
                                                    </div>
                                                
                                                </div>
                                            
                                            </div>
                                        
                                        </div>
                                    
                                    
                                    </div>
                            
                            </div>
                        
                        
                        </div>
              
                    </div>
                  </section>
       
          
                  </div>
                  </div>
                  
        
   
                  <div class="tab-pane fade mb-2" id="ex1-pills-3" role="tabpanel" aria-labelledby="ex1-tab-3">
                    <p class="title_heading" style="font-size: larger; font: bold;">반품/교환방법</p>
                    
                    마이룸 > 주문관리 > 주문/배송내역 > 주문조회 > 반품/교환 신청, [1:1 상담 > 반품/교환/환불] 또는 고객센터 (1544-1900) <br>
                    * 오픈마켓, 해외배송 주문, 기프트 주문시 [1:1 상담>반품/교환/환불] 또는 고객센터 (1544-1900) <br>

                    <hr>

                    <p class="title_heading" style="font-size: larger; font: bold;">반품/교환 가능 기간</p>
                    
                    변심반품의 경우 수령 후 7일 이내, <br>
                    상품의 결함 및 계약내용과 다를 경우 문제점 발견 후 30일 이내 <br>

                    <hr>

                    <p class="title_heading" style="font-size: larger; font: bold;">반품/교환비용</p>
                    
                    변심 혹은 구매착오로 인한 반품/교환은 반송료 고객 부담 <br>

                    <hr>

                    <p class="title_heading" style="font-size: larger; font: bold;">반품/교환비용</p>

                    1) 소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우 <br>
                    (단지 확인을 위한 포장 훼손은 제외) <br>
                    2) 소비자의 사용, 포장 개봉에 의해 상품 등의 가치가 현저히 감소한 경우 <br>
                    예) 화장품, 식품, 가전제품(악세서리 포함) 등 <br>
                    3) 복제가 가능한 상품 등의 포장을 훼손한 경우 <br>
                    예) 음반/DVD/비디오, 소프트웨어, 만화책, 잡지, 영상 화보집 <br>
                    4) 소비자의 요청에 따라 개별적으로 주문 제작되는 상품의 경우 ((1)해외주문도서) <br>
                    5) 디지털 컨텐츠인 eBook, 오디오북 등을 1회 이상 다운로드를 받았을 경우 <br>
                    6) 시간의 경과에 의해 재판매가 곤란한 정도로 가치가 현저히 감소한 경우 <br>
                    7) 전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우 <br>

                  </div>
                </div>
              
                <!-- Pills content -->
              </div>
            </div>
            <div class="col-lg-4" style="display: none;">
              <div class="px-0 border rounded-2 shadow-0">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">이 분야 베스트셀러</h5>
                    <div class="d-flex mb-3">
                      <a href="#" class="me-3">
                        <img src="/img/event.jpeg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                      </a>
                      <div class="info">
                        <a href="#" class="nav-link mb-1">
                          제목 <br />
                          저자
                        </a>
                        <strong class="text-dark"> 가격</strong>
                      </div>
                    </div>
      
                    <div class="d-flex mb-3">
                      <a href="#" class="me-3">
                        <img src="/image/test3.jpg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                      </a>
                      <div class="info">
                        <a href="#" class="nav-link mb-1">
                          제목 <br />
                          저자
                        </a>
                        <strong class="text-dark"> 가격</strong>
                      </div>
                    </div>
      
                    <div class="d-flex mb-3">
                      <a href="#" class="me-3">
                        <img src="/BB/img/event.jpeg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                      </a>
                      <div class="info">
                        <a href="#" class="nav-link mb-1"> 
                          제목 <br />
                          저자 </a>
                        <strong class="text-dark"> 가격</strong>
                      </div>
                    </div>
      
                    <div class="d-flex">
                      <a href="#" class="me-3">
                        <img src="/image/test5.jpg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                      </a>
                      <div class="info">
                        <a href="#" class="nav-link mb-1"> 
                          제목 <br />
                          저자 </a>
                        <strong class="text-dark"> 가격</strong>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

            </div>
          
          </main>
          
      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script>

          document.addEventListener("DOMContentLoaded", function() {
            const decrementButton = document.getElementById("decrementButton");
            const incrementButton = document.getElementById("incrementButton");
            const quantityInput = document.getElementById("quantityInput");

            decrementButton.addEventListener("click", function() {
              if (quantityInput.value > 1) {
                quantityInput.value--;
              }
            });

            incrementButton.addEventListener("click", function() {
              quantityInput.value++;
            });
          });

          const ratingStars = [...document.getElementsByClassName("rating__star")];
          const ratingResult = document.querySelector(".rating__result");

          printRatingResult(ratingResult);

          function executeRating(stars, result) {
            const starClassActive = "rating__star fas fa-star";
            const starClassUnactive = "rating__star far fa-star";
            const starsLength = stars.length;
            let i;
            stars.map((별) => {
                star.onclick = () => {
                  i = stars.indexOf(별);

                  if (star.className.indexOf(starClassUnactive) !== -1) {
                      printRatingResult(result, i + 1);
                      for (i; i >= 0; --i) stars[i].className = starClassActive;
                  } else {
                      printRatingResult(result, i);
                      for (i; i < starsLength; ++i) stars[i].className = starClassUnactive;
                  }
                };
            });
          }

          function printRatingResult(result, num = 0) {
            result.textContent = `${num}/5`;
          }

          executeRating(ratingStars, ratingResult);


          // ratingToPercent() {
          //       const score = +this.restaurant.averageScore * 20;
          //       return score + 1.5;
          // };


    
    </script>
</body>
</html>