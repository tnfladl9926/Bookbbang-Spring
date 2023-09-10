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
   SimpleDateFormat sdf = new SimpleDateFormat("M/d E");
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
    <link rel="stylesheet" href="/resources/css/booklist.css">
<title>Insert title here</title>
<style>

.bd-sidebar .nav>li>a {
	display: block;
    padding: 0.3rem 0.5rem;
    font-size: 90%;
    text-align: start;
    color: #333;
    text-decoration: none;
}

.bd-sidebar .nav>li>a:hover {
	background-color: #eee;
}

.nav>li {
text-align: start;
}

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
            <ul class="nav">
              <li><h3 class="fieldName">${bookList[3].field}</h3></li>
              <c:forEach items="${booknav}" var="dto">
              <li><a href="booklist.do?field=${bookList[3].field}&genre=${dto.genre}">${dto.genre}</a></li>
              </c:forEach>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">
                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <form method="GET" action="/cart/cartall.do">
                <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>">
                <div class="bookListAll">
                    <!-- 정렬탭 -->
                   <div class="sortRadius">
                            <div class="bookSortArea">
                                <div class="bookSortMenu">
                                    <!-- * hover하면 bold -->
                                    <a href="#" class="on">기본순</a>
                                    <a href="#" class="">판매량순</a>
                                    <a href="#" class="">신상품순</a>
                                    <a href="#" class="">낮은가격순</a>
                                    <a href="#" class="">높은가격순</a>
                                </div>
                                <select class="form-select form-select-sm" style="width:130px;">
                                    <option>20개씩 보기</option>
                                    <option>40개씩 보기</option>
                                </select>
                            </div>
                            <div class="bookPaging">
                                <div id="pagerBox">

			                        <ul class="pagination">
			
			                           <c:if test="${pager.prev}">
			
			                              <li class="page-item"><a class="page-link" href="#"
			                                 onClick="fn_prev('${pager.page}', '${pager.range}', '${pager.rangeSize}')">Previous</a></li>
			
			                           </c:if>
			
			
			
			                           <c:forEach begin="${pager.startPage}" end="${pager.endPage}"
			                              var="idx">
											
											
			                              <li class="page-item <c:out value="${pager.page == idx ? 'active' : ''}"/> ">
			                                 <a class="page-link"
			                                    onClick="fn_pagination('${idx}', '${pager.range}', '${pager.rangeSize}')">
			                                    ${idx} </a></li>
			
			                           </c:forEach>
			
			
			
			                           <c:if test="${pager.next}">
			
			                              <li class="page-item"><a class="page-link"
			                                 onClick="fn_next('${pager.page}', '${pager.range}', '${pager.rangeSize}')">Next</a></li>
			
			                           </c:if>
			
			                        </ul>

                     		</div>
                                <div>
                                    <input class="form-check-input" type="checkbox" value="전체선택" id="selectAllCheckbox2">
                                    <label class="form-check-label" for="selectAllCheckbox">
                                        전체선택&nbsp;&nbsp;
                                    <button type="button" class="btn btn-light">장바구니</button>
                                </div>
                            </div>
                            </div>
                    <div class="bookListArea">
                        <ul class="bookul">
                            	<c:forEach items="${bookList}" var="dto">
                            <li>
                                <table class="bookCont">
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="${dto.bookseq}" id="flexCheckDefault" name="bookseq">
                                                <label class="form-check-label" for="flexCheckDefault">
                                                </label>
                                              </div>
                                        </td>
                                        <td style="vertical-align: top;">
                                            <div class="bookListimg">
                                            <img src="/resources/image/bookposter/${dto.image}" >
                                            </div>
                                        </td>
                                        <td>
                                            <div class="bookListInfo">
                                                <div class="bookName"><a href='/book/bookview.do?bookseq=${dto.bookseq}&field=${dto.field}'>${dto.title}</a></div>
                                                <div class="bookPubs">
                                                    <span>${dto.writer}</span> 저
                                                    <span class="beforeLine">${dto.publisher}</span>
                                                    <span class="beforeLine">${dto.regdate}</span>
                                                </div>
                                                <div class="bookPrice">
                                                    <em class="realPrice">${dto.price}</em>원 
                                                    <span class="bookDisc">(10% 할인)</span>
                                                </div>
                                                <div class="bookRate">
                                                    <span class="reviewCount">리뷰(1건)</span>
                                                    <span><img src="/resources/image/star10.png"></span><em class="yes_b">9.4</em>
                                                </div>
                                                <div class="shipDate">
                                                    24시까지 주문하면 <strong style="color: #333;">내일(${formattedTomorrow})</strong> 도착예정
                                                </div>
                                                <div class="bookRead">
                                                    ${dto.explain}
                                                </div>
                                            </div>  
                                        </td>
                                        <td>
                                            <div class="orderButton">
<%--                                                 <button type="submit" class="btn btn-secondary" data-bookseq="${dto.bookseq}" onclick="location.href='/cart/cartadd.do?memberseq=<sec:authentication property="principal.memberseq"/>&bookseq=${dto.bookseq}';">장바구니</button> --%>
<button type="button" class="btn btn-secondary" data-bookseq="${dto.bookseq}" onclick="location.href='/cart/cartadd.do?memberseq=<sec:authentication property="principal.memberseq"/>&bookseq=${dto.bookseq}';">장바구니</button>
                                                <button type="button" class="btn btn-dark" data-bookseq="${dto.bookseq}" onclick="location.href='/payment/payment.do?memberseq=<sec:authentication property="principal.memberseq"/>&bookseq=${dto.bookseq}';">바로구매</button>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </li>
                                </c:forEach>
                        </ul>
                        <div class="sortRadius">
                            <div class="bookSortArea">
                                <div class="bookSortMenu">
                                    <!-- * hover하면 bold -->
                                    <a href="#" class="on">기본순</a>
                                    <a href="#" class="">판매량순</a>
                                    <a href="#" class="">신상품순</a>
                                    <a href="#" class="">낮은가격순</a>
                                    <a href="#" class="">높은가격순</a>
                                </div>
                                <select class="form-select form-select-sm" style="width:130px;">
                                    <option>20개씩 보기</option>
                                    <option>40개씩 보기</option>
                                </select>
                            </div>
                            <div class="bookPaging">
                                <div id="pagerBox">

			                        <ul class="pagination">
			
			                           <c:if test="${pager.prev}">
			
			                              <li class="page-item"><a class="page-link" href="#"
			                                 onClick="fn_prev('${pager.page}', '${pager.range}', '${pager.rangeSize}')">Previous</a></li>
			
			                           </c:if>
			
			
			
			                           <c:forEach begin="${pager.startPage}" end="${pager.endPage}"
			                              var="idx">
											
											
			                              <li class="page-item <c:out value="${pager.page == idx ? 'active' : ''}"/> ">
			                                 <a class="page-link"
			                                    onClick="fn_pagination('${idx}', '${pager.range}', '${pager.rangeSize}')">
			                                    ${idx} </a></li>
			
			                           </c:forEach>
			
			
			
			                           <c:if test="${pager.next}">
			
			                              <li class="page-item"><a class="page-link"
			                                 onClick="fn_next('${pager.page}', '${pager.range}', '${pager.rangeSize}')">Next</a></li>
			
			                           </c:if>
			
			                        </ul>

                     		</div>
                                <div>
                                    <input class="form-check-input" type="checkbox" value="전체선택" id="selectAllCheckbox2">
                                    <label class="form-check-label" for="selectAllCheckbox">
                                        전체선택&nbsp;&nbsp;
                                    <button type="button" class="btn btn-light">장바구니</button>
                                </div>
                            </div>
                            </div>
                    </div>
                </div>
                </form>

            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
      <hr>

      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="js/jquery-3.6.4.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

        $(document).ready(function() {
            $('#selectAllCheckbox2').click(function() {
                if ($(this).is(':checked')) {
                    $('.bookCont tbody input[type="checkbox"]').prop('checked', true);
                } else {
                    $('.bookCont tbody input[type="checkbox"]').prop('checked', false);
                }
            });
        });
        
        //explain 생략
        
        
        
        
      <c:url var="getBookList" value="/book/booklist.do">
   
      </c:url>

      var url = "${getBookList}";
      
      //이전 버튼 이벤트

      function fn_prev(page, range, rangeSize) {

         var page = ((range - 2) * rangeSize) + 1;

         var range = range - 1;

         let field = $('.fieldName').html();
         
         url = url + "?page=" + page;

         url = url + "&range=" + range;

         url = url + "&field=" + field;
         location.href = url;
         

      }

      //페이지 번호 클릭

      function fn_pagination(page, range, rangeSize) {

    	 let field = $('.fieldName').html(); 
    	  
         url = url + "?page=" + page;

         url = url + "&range=" + range;
         
         url = url + "&field=" + field;
         
         location.href = url;

      }

      //다음 버튼 이벤트

      function fn_next(page, range, rangeSize) {
        
         var page = parseInt((range * rangeSize)) + 1;

         var range = parseInt(range) + 1;
        
         let field = $('.fieldName').html();
         
         url = url + "?page=" + page;

         url = url + "&range=" + range;
         
         url = url + "&field=" + field;
        
         location.href = url;

      }
        
        
        
    </script>


</body>
</html>