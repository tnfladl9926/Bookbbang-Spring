<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   // 현재 날짜를 가져옴
   Calendar calendar = Calendar.getInstance();
   calendar.add(Calendar.DAY_OF_MONTH, 1); // 현재 날짜에 1일을 더함
   Date tomorrow = calendar.getTime();

   // SimpleDateFormat을 사용하여 원하는 날짜 형식으로 포맷팅
   SimpleDateFormat sdf = new SimpleDateFormat("M/d(E)");
   String formattedTomorrow = sdf.format(tomorrow);

   // JSP 페이지로 값을 전달하기 위해 request 객체에 저장
   request.setAttribute("formattedTomorrow", formattedTomorrow);
%>
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
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/cart.css">
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
          <div class="col-3 bd-sidebar">
            <ul class="nav" style="display: none;">
              <li><h3>목록목록</h3></li>
              <li><a>Side 1</a></li>
              <li><a>Side 2</a></li>
              <li><a>Side 3</a></li>
              <li><a>Side 4</a></li>
              <li><a>Side 5</a></li>
              <li><a>Side 6</a></li>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <div class="bookListAll">

                    <!-- 정렬탭 -->
                    <div class="cartHeader">
                        장바구니 
                    </div>
                    <hr>
                    <form method="GET" action="/payment/payment.do" id="form11">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="전체선택" id="selectAllCheckbox" name="bookseq">
                        <label class="form-check-label" for="selectAllCheckbox">
                            전체선택
                        </label>
                    </div>
                        <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
                        <table class="bookCont">
                        
                            <thead>
                               <tr>
                                   <th colspan="3">상품정보</th>
                                   <th style="width: 80px;">수량</th>
                                   <th>상품금액</th>
                                   <th>배송정보</th>
                                   <th>주문</th>
                                </tr>
                            </thead>
                        <c:set var="totalPrice" />
                       <c:forEach items="${getList}" var="dto">
                            <tbody>
                                <tr>
                                    <td class="bookChk">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="${dto.bookseq}" id="flexCheckDefault" name="bookseq">
                                            <label class="form-check-label" for="flexCheckDefault">
                                            </label>
                                          </div>
                                    </td>
                                    <td style="vertical-align: top; width: 100px;">
                                        <div class="cartImg">
                                        <img src="/resources/image/bookposter/${dto.image}" >
                                        </div>
                                    </td>
                                    <td class="bookInfo">
                                        <span class="sdgj">소득공제</span>
                                        <br>
                                        <div class="bookName">
                                   ${dto.title}
                                        </div>
                                        <div class="bookSale">
                                        ${dto.price}원
                                        </div>
                                    </td>
                                    <td class="bookNum">
                                        <input type="number" min="1" value="1">
                                    </td>
                                    <td class="bookPayment">
                                        ${dto.price}원
                                    </td>
                                    <td class="bookShip">
                                        <strong>${formattedTomorrow}</strong>
                                        <br>
                                        도착예정
                                    </td>
                                    <td class="orderButton">
                                        <button type="button" class="btn btn-secondary" data-bookseq="${dto.bookseq}" onclick="location.href='/payment/payment.do?bookseq=${dto.bookseq}&memberseq=<sec:authentication property="principal.memberseq"/>';">주문</button>
                                        <br>
                                        <button type="button" class="btn btn-dark deleteButton" data-bookseq="${dto.bookseq}" onclick="location.href='/cart/cartdel.do?memberseq=<sec:authentication property="principal.memberseq"/>&bookseq=${dto.bookseq}';">삭제</button>
                                    </td>
                                </tr>
                            </tbody>
                            <c:set var="totalPrice" value="${totalPrice + dto.price.replace(',','')}" />
                            </c:forEach>
                            <tfoot>
                                <tr>
                                    <td class="orderFoot" colspan="7">
                                        책빵배송 상품 총 금액 : ${totalPrice}원 ( + 배송비 0원 )
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                        <br>
                        <div>
                            <div class="bottomButton" id="hide">
                                <button type="submit" class="btn btn-secondary" onclick="sendSelectedValues()">주문하기</button>
                            </div>
                        </div>
                </form>
                </div>

            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#selectAllCheckbox').click(function() {
                if ($(this).is(':checked')) {
                    $('.bookCont tbody input[type="checkbox"]').prop('checked', true);
                } else {
                    $('.bookCont tbody input[type="checkbox"]').prop('checked', false);
                }
            });
        });
        
        
    </script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>