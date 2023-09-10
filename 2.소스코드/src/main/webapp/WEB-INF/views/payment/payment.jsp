<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <!-- 지도 api -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    
    <!-- 부트스트랩 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link href="/resources/css/ydhn.css" rel="stylesheet">
    <link href="/resources/css/offcanvas.css" rel="stylesheet">
    
    <style>

        #paymenttbl th {
            text-align: center;
        }

        #paymenttbl td:nth-child(2),
        #paymenttbl td:nth-child(3),
        #paymenttbl td:nth-child(4),
        #paymenttbl td:nth-child(5),
        #paymenttbl td:nth-child(6){
            vertical-align: middle;
            text-align: center;
        }

        .radio-label {
            margin-right: 10px;
            cursor: pointer;
            
        }


    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <!--  -->
   <%@ include file="/WEB-INF/views/inc/header.jsp" %>

         
        

        <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          <div class="col-3 bd-sidebar">
            <ul class="nav" style="display:none;">
              <li><h3>책방센터</h3></li>
              <li><a href="/notice.html">공지사항</a></li>
              <li><a>고객문의</a></li>
              <li><a>Q/A</a></li>
              <li><a href="/payment.html">결제창링크~~</a></li>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <h3>Order/Payment</h3>
                <div class="my-3 p-3 bg-body rounded shadow-sm">
                    
                    <h5 class="border-bottom pb-2 mb-0">배송 정보</h5>
                    <div class="d-flex pt-3">
                        <div class="pb-3 mb-0 border-bottom w-100">
                            <strong class="text-gray-dark" style="font-size: 14px;">배송지</strong>
                            <span class="aligncenter">
                               <c:forEach items="${dlist}" var="dto" varStatus="status">
                                <label class="radio-label">
                                    <input type="radio" name="deliveryseq" id="dvseq" value="${dto.deliveryseq}" ${status.first ? 'checked' : ''}> ${dto.addressaname}
                                </label>
                                </c:forEach>
                                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#addressModal" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: whitesmoke;">
                                    신규 배송지 등록
                                </button>
                                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#addressModal2" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: whitesmoke;">
                                    배송지 관리
                                </button>
                            </span>
                        </div>
                    </div>
                    
                    <div class="d-flex pt-3">
                      <div class="pb-3 mb-0 border-bottom w-100">
                          <strong class="text-gray-dark" style="font-size: 14px;">이름/연락처</strong>
                          <span class="aligncenter contactSpan" id="memberinfo">${membername}/${phonenumber}</span>
                      </div>
                    </div>

                    
                    <div class="d-flex pt-3">
                        <div class="pb-3 mb-0 border-bottom w-100">
                            <strong class="text-gray-dark" style="font-size: 14px;">주소</strong>
                            <span class="aligncenter" id="memberaddress" >${address}</span>
                        </div>
                    </div>
                    
                    <div class="d-flex pt-3">
                        <div class="pb-3 mb-0 border-bottom w-100">
                            <strong class="text-gray-dark" style="font-size: 14px;">배송 요청사항</strong>
                            <span class="aligncenter" >
                                <select name="" id="selectbox" style="border: 1px solid gray; height: 30px; width: 400px; font-size: 13px;">
                                    <option>배송 요청사항을 선택해주세요.</option>
                                    <option>부재시 문앞에 놔주세요.</option>
                                    <option>부재시 경비실에 맡겨주세요.</option>
                                </select>
                            </span>
                        </div>
                    </div>
                </div>



   
   
                <div class="my-3 p-3 bg-body rounded shadow-sm">
                    
                    <h5 class="border-bottom pb-2 mb-0">상품 정보</h5>
                    <div class="d-flex pt-3">
                        <div class="pb-3 mb-0 w-100">
                            <table class="table table-bordered" id="paymenttbl">
                                <tr>
                                    <th class="th-center">상풍정보</th>
                                    <th class="th-center">수량</th>
                                    <th class="th-center">배송비</th>
                                    <th class="th-center">주문금액</th>
                                </tr>
                                <c:forEach items="${bdtoList}" var="bdto">
                                <tr>
                                    <td>
                                        <img src="/resources/image/bookposter/${bdto.image}" alt="" style="object-fit: cover; height:60px">
                                        <span>${bdto.title}</span>
                                    </td>
                                    <td>1</td>
                               
                                    <td>무료배송</td>
                                    <td>${bdto.price}원</td>
                                </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>


                   <%-- <c:forEach items="${list}" var="dto"> --%>
                <div class="my-3 p-3 bg-body rounded shadow-sm">
                    <h5 class="border-bottom pb-2 mb-0">결제 정보</h5>
                    <div class="d-flex pt-3">
                        <div class="pb-3 mb-0 border-bottom w-100">
                            <strong class="text-gray-dark" style="font-size: 14px;">상품 금액</strong>
                            <span class="aligncenter"><span id="price1">${total}</span>원</span>
                        </div>
                    </div>
                    
                    <div class="d-flex pt-3">
                      <div class="pb-3 mb-0 border-bottom w-100">
                          <strong class="text-gray-dark" style="font-size: 14px;">쿠폰 할인</strong>
                          <!-- Button trigger modal -->
                                <%-- <span class="aligncenter">-${Math.round(total * (dto.rate * 0.01))} <span>원</span></span> --%>
                                <%-- <span class="aligncenter"  class="rate-value">-${Math.round(total * (dto.rate * 0.01))} <span>원</span></span> --%>
                                <span class="aligncenter"  class="rate-value"><span id="price2">0</span> <span>원</span></span>
                                <button type="button" class="btn alignmorecenter" data-bs-toggle="modal" data-bs-target="#exampleModal" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: whitesmoke;">
                                    쿠폰조회/적용
                                </button>                          
                      </div>
                    </div>
                   
                    <div class="d-flex pt-3">
                        <div class="pb-3 mb-0 w-100">
                            <strong class="text-gray-dark" style="font-size: 14px;">최종 결제 금액</strong>
                            <%-- <span class="aligncenter">${total - Math.round(total * (dto.rate * 0.01))} 원</span> --%>
                            <span class="aligncenter"><span id="price3">${total}</span> 원</span>
                        </div>
                    </div>
                </div>
              <%--   </c:forEach> --%>

            </div>
            
            <div style="padding: 30px">
                <button class="pay btn btn-dark alignright"  onclick="requestPay();" >결제하기</button>            
            </div>
            
            
            <form method="POST"  id="paymentform1" action="/payment/payment">
             <input type="hidden" name="name" value="${membername}">        
             <input type="hidden" name="tel" value="${phonenumber}">        
             <input type="hidden" name="address" value="${address}">        
             <input type="hidden" name="pay" value="${total}">        
             <input type="hidden" name="checknumber" value="23132">        
               
             <input type="hidden" name="couponseq" value="2">        
             
           <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>">
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="token">
         <input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="csrf-header">
           
            </form>
            
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    

      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">보유 쿠폰</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <tr>
                        <th></th>
                        <th>번호</th>
                        <th>쿠폰명</th>
                        <th>사용기한</th>
                        <th>할인율</th>
                        <th>할인금액</th>
                    </tr>
                    <c:set var="total" value="${total}" />
                    <c:forEach items="${dto}" var="dto">
                    <tr>
                        <td><input type="radio" name="ab" class="cradio" value="${dto.couponseq}"></td>
                        <td>${dto.couponseq}</td>
                        <td>${dto.name}</td>
                        <td>${dto.deadline}</td>
                        <td>${dto.rate}</td>
                        <td>${Math.round(total * (dto.rate * 0.01))} 원</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="couponBtn">쿠폰 등록</button>
            </div>
        </div>
        </div>
    </div>

<form method="post" action="/payment/paymentok.do">
    <div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">신규 배송지</h1>
           
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="tbladdress">
                    <tr style="margin-bottom: 30px;">
                        <th style="width: 100px;">수령인</th>
                        <td><input type="text" class="input-middle" name="membername" id=""></td>
                    </tr>
                    <tr>
                        <th>배송지명</th>
                        <td><input type="text" class="input-middle" name="addressaname" id=""></td>
                    </tr>
                    <tr>
                        <th>휴대전화</th>
                        <td>
                            <input type="text" class="input-small" name="phone1" id="">
                            <span>-</span>
                            <input type="text" class="input-small" name="phone2" id="">
                            <span>-</span>
                            <input type="text" class="input-small" name="phone3" id="">
                        </td>
                        
                    </tr>
                    <tr>
                        <th>배송지 주소</th>
                        <td>
                            <div>
                                <input type="text" class="input-middle" name="" id="member_post" readonly>
                                <input class="btn btn-dark" type="button" name="" value="검색" onclick="findAddr()">
                            </div>
                            <div>
                                <input type="text" class="input-long" name="address1" id="member_addr" readonly>
                                <input type="text" class="input-long" name="address2" id="" placeholder="상세주소 입력">
                            </div>

                        </td>
                        
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
            <button type="submit" class="btn btn-info">배송지 등록</button>
            </div>
        </div>
        </div>
    </div>
       <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="token">
      <input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="csrf-header">
    </form>
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script>
        var IMP = window.IMP;
        IMP.init("imp23835256"); // 예: imp00000000
        
        /* let tgo = document.getElementById('price3').val();
        
        console.log(tgo); */
        
        function requestPay() {
          // IMP.request_pay(param, callback) 결제창 호출
          IMP.request_pay({ // param
              pg: "html5_inicis",
              pay_method: "card",
              merchant_uid: "ORD20180131-0000011",
              name: "과학 커뮤니케이터 궤도의 지켜라! 과학 1 새창",
              amount: 26568,
              buyer_email: "gildong@gmail.com",
              buyer_name: "홍길동",
              buyer_tel: "010-4242-4242",
              buyer_addr: "서울특별시 강남구 신사동",
              buyer_postcode: "01181"
          }, function (rsp) { // 
              if (rsp.success) {
                  // 결제 성공 시 로직
              } else {
                  // 결제 실패 시 로직
              }
          });
          
          
          
          
        }

        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {
                    
                    console.log(data);
                    
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('member_post').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("member_addr").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("member_addr").value = jibunAddr;
                    }
                }
            }).open();
        }
        
        
        $('input[name="deliveryseq"]').each(function(){
            $(this).change(function(){
                let dvseq = $(this).val();

                $.ajax({
                   url : "/payment/paymentok2.do",
                    type: "post",
                    dataType: "json",
                    data: {
                        dvseq: dvseq
                    },
                    success: function(data) {
                        // 서버로부터 받은 응답 처리
                        $("#memberinfo").html(data.membername+"/"+ data.phonenumber);
                        $("#memberaddress").html(data.address);
                        
                    },
                    beforeSend: function(jqXHR, settings) {
                        var header = $('.csrf-header').val();
                        var token = $('.token').val();
                        jqXHR.setRequestHeader(header, token);
                    }
                });
            });
        });
        
     
     /*진섭  */ 
        
     // HTML에서 라디오 버튼 그룹의 이름을 "ab"로 가정합니다.
       /*  var radios = document.getElementById('cradio');
        var selectedValue;

        
        for (var i = 0; i < radios.length; i++) {
            if (radios[i].checked) {
                selectedValue = radios[i].value;
                break;
            }
        }
         */
     // 선택된 버튼의 값을 출력합니다.
        /* console.log(selectedValue); */
        
     $('#couponBtn').click(function(){
    
        //alert($('.cradio:checked').parent().next().next().next().next().next().text().replace(' 원', ''));
        
        let price = parseInt($('.cradio:checked').parent().next().next().next().next().next().text());
        
        $('#price2').text(price*-1);
        
        $('#price3').text(parseInt($('#price3').text()) - price);
        
            
     });
        
        
        
        
        
        
    </script>
</body>
</html>





