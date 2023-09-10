<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="canonical"
   href="https://getbootstrap.com/docs/5.2/examples/headers/">
<link rel='stylesheet'
   href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/sulim.css">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="/resources/css/style.css">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/inlineJ.css" rel="stylesheet">
 <link rel="stylesheet" href="/resources/css/fontJ.css">
<style>
select option[value=""][disabled] {
   display: none;
}
</style>
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<%@ include file="/WEB-INF/views/inc/bulheader.jsp"%>


   
   <hr>

   <!-- 목록 -->

   <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
         <div class="row ">
            <div class="bulNavbar dropdown-menu d-block position-static pt-0 mx-0 rounded-3 shadow overflow-hidden w-280px col-2" style="text-indent: 1rem;">
                <div class="navbar-title">
                    Book U Love 
                </div>
                <hr>
                <ul class="mb-0">
                  <li><a class="d-flex align-items-center gap-2 py-2" href="/bul/bulreviewboard.do">
                    <span class="side_title d-inline-block rounded-circle p-1">
                    북유럽 서평
                    </span>
                  </a></li>
                  <li><a class="d-flex align-items-center gap-2 py-2" href="/bul/bulfreeboard.do">
                    <span class="side_title d-inline-block rounded-circle p-1">
                    북유럽 커뮤니티
                    </span>
                  </a></li>
                  <li><a class="d-flex align-items-center gap-2 py-2" href="/bul/bulmy.do">
                    <span class="side_title d-inline-block rounded-circle p-1">
                    북유럽 마이페이지
                    </span>
                  </a></li>
                </ul>
              </div>
              
            <div class="col-8 main-width">
               <div class="over-wrap">

                  <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->

                  <div id="container">

                     <div style="display: flex; justify-content: space-between;">
                        <div class="bultitle">북유럽 자유게시판</div>

                        <div>
                           <button class="btn btn-outline-secondary"
                              onclick="location.href='/bul/bulfreeadd.do';">글쓰기</button>
                        </div>
                     </div>

                     <br>
                     <!-- 
                <div style="background-color: black; float: left;">
                  <select name="bulboardsel" id="bulboardsel" class="form-select" aria-label="Default select example" style="margin-bottom: 10px; float: left;">
                    <option selected>글유형을 선택하세요</option>
                    <option value="">자유</option>
                    <option value="">모집</option>
                    <option value="">기타</option>
                  </select>
                  <input type="text" placeholder="검색어를 입력하세요" style="float: left;">
                  <button class="btn btn-outline-secondary">검색</button>
                </div> -->

                     <div
                        style="background-color: #F4F4F4; display: flex; justify-content: center; align-items: center; padding: 10px;">
                        <select name="bulboardsel" id="bulboardsel" class="form-select"
                           aria-label="Default select example"
                           style="margin-right: 10px; width: 200px; border: #F4F4F4;">
                           <option value="" disabled selected>글유형을 선택하세요</option>
                           <option value="">후기</option>
                           <option value="">추천</option>
                           <option value="">커뮤니티</option>
                           <option value="">공유</option>
                           <option value="">토론</option>
                           <option value="">기타</option>
                        </select> <input type="text" placeholder="검색어를 입력하세요"
                           style="margin-right: 10px; border: #F4F4F4; padding: 6px;">
                        <button class="btn btn-outline-secondary">검색</button>
                     </div>



                     <table class="table">
                        <thead>
                           <tr>
                              <th scope="col">#</th>
                              <th scope="col">글제목</th>
                              <th scope="col">작성자</th>
                              <th scope="col">날짜</th>
                              <th scope="col">조회수</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:forEach items="${list}" var="dto">
                              <tr
                                 onclick="location.href='/bul/bulfreedetail.do?memberseq=${dto.memberseq}&bulboardseq=${dto.bulboardseq}';">
                                 <th scope="row">${dto.bulboardseq}</th>
                                 <td>[${dto.type}] ${dto.title}</td>
                                 <td>${dto.nickname}</td>
                                 <td>${dto.regdate}</td>
                                 <td>${dto.viewcount}</td>
                              </tr>
                           </c:forEach>
                        </tbody>
                     </table>

                  </div>

               </div>
            </div>
           
           <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>

         <div id="pagerBox">
            <nav aria-label="Page navigation example">
               <ul class="pagination justify-content-center" style="cursor: pointer;">
                  <c:if test="${pager.prev}">
                     <li class="page-item"><a class="page-link"
                        onClick="fn_prev('${pager.page}', '${pager.range}','${pager.rangeSize}')">Previous</a></li>
                  </c:if>
                  <c:forEach begin="${pager.startPage}" end="${pager.endPage}"
                     var="idx">

                     <li class="page-item <c:out value="${pager.page == idx ? 'active' : ''}"/> ">
                           <a class="page-link"
                           onClick="fn_pagination('${idx}', '${pager.range}', '${pager.rangeSize}')">
                              ${idx} </a>
                  </c:forEach>

                  <c:if test="${pager.next}">
                     <li class="page-item"><a class="page-link"
                        onClick="fn_next('${pager.page}', '${pager.range}', '${pager.rangeSize}')">Next</a></li>
                  </c:if>
               </ul>
            </nav>
         </div>

         </div>
      </div>
   </main>
   <hr>

   <div class="container-fluid footer-div">
      <div class="footer1">
         <footer class="footer2">
            <div class="row footer3">
               <div class="col-6 col-md-10 mb-3">
                  <img src="img/bb1.png" class="footer-img">
                  <ul class="nav flex-column">
                     <li class="nav-item mb-2"><a href="#"
                        class="nav-link p-0 text-muted">회사소개&nbsp;&nbsp;이용약관&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;청소년보호정책&nbsp;&nbsp;대량주문안내&nbsp;&nbsp;협력사여러분&nbsp;&nbsp;채용정보&nbsp;&nbsp;광고소개</a></li>
                     <li class="nav-item mb-2"><a href="#"
                        class="nav-link p-0 text-muted">대표이사 : 유동현 서울특별시 종로구 종로 1
                           사업자등록번호 : 102-81-11670</a></li>
                     <li class="nav-item mb-2"><a href="#"
                        class="nav-link p-0 text-muted">대표전화 : 1544-1900 | FAX :
                           0502-987-5711(지역번호 공통) 서울특별시 통신판매업신고번호 : 제 653호 사업자정보확인</a></li>
                     <li class="nav-item mb-2"><a href="#"
                        class="nav-link p-0 text-muted">© KYOBO BOOK CENTRE</a></li>
                     <li class="nav-item mb-7"><a href="#"
                        class="nav-link p-0 text-muted"></a><small>&copy;&nbsp;2023&nbsp;JDSC&nbsp;F7Company,&nbsp;Inc.&nbsp;All&nbsp;rights&nbsp;reserved.</small></li>
                  </ul>

               </div>

               <div class="col-md-2  mb-3">
                  <a
                     href="https://instagram.com/book._bbang?igshid=MmIzYWVlNDQ5Yg=="><i
                     class="bi bi-instagram footer-ico n" style="font-size: 2rem;"></i></a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
                     href="https://www.youtube.com/@amazingc0met"><i
                     class="bi bi-youtube footer-icon"></i></a>
               </div>
            </div>
         </footer>
      </div>
   </div>


   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

   <script>
      <c:url var="getFreeBoardList" value="/bul/bulfreeboard.do">
      </c:url>

      var url = "${getFreeBoardList}";

      //이전 버튼 이벤트

      function fn_prev(page, range, rangeSize) {

         var page = ((range - 2) * rangeSize) + 1;

         var range = range - 1;

         url = url + "?page=" + page;

         url = url + "&range=" + range;

         location.href = url;

      }

      //페이지 번호 클릭

      function fn_pagination(page, range, rangeSize) {

         url = url + "?page=" + page;

         url = url + "&range=" + range;

         location.href = url;

      }

      //다음 버튼 이벤트

      function fn_next(page, range, rangeSize) {

         var page = parseInt((range * rangeSize)) + 1;

         var range = parseInt(range) + 1;

         url = url + "?page=" + page;

         url = url + "&range=" + range;

         location.href = url;

      }
   </script>



</body>
</html>





