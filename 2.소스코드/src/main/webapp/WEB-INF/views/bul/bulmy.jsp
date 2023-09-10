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
 <link rel="stylesheet" href="/resources/css/fontJ.css">
<link href="/resources/css/inlineJ.css" rel="stylesheet">
    <style>
        
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
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
                
                <div class="bultitle">
                    북유럽 마이페이지
                </div>

                <br>

                <p class="bulmysubtitle"><span class="material-symbols-outlined">
                    rate_review
                    </span> <span style="font-weight: bold;"> <sec:authentication property="principal.nickname"/></span>님이 작성한 글  (${memboardcount})</p>
                <table class="table">
                    <thead>
                      <tr>
                        
                        <th scope="col">글제목</th>
                        <th scope="col">작성자</th>
                        <th scope="col">날짜</th>
                        <th scope="col">댓글수</th>
                        <th scope="col">글내용</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="dto">
                      <tr>
                        
                        <td>${dto.title}</td>
                        <td><sec:authentication property="principal.nickname"/></td>
                        <td>${dto.regdate}</td>
                        <td>45</td>
                        <td>${dto.content}</td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>

                  <br>

                  <p class="bulmysubtitle">
                    <span class="material-symbols-outlined">
                    chat
                    </span>
                    <span style="font-weight: bold;"> <sec:authentication property="principal.nickname"/></span>님이 작성한 댓글  (${memcommentcount})</p>
                  <table class="table">
                    <thead>
                      <tr>
                        
                        <th scope="col">글제목</th>
                        <th scope="col">작성자</th>
                        <th scope="col">날짜</th>
                        <th scope="col">댓글 내용</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${clist}" var="cdto">
                      <tr>
                        
                        <td>${cdto.title}</td>
                        <td><sec:authentication property="principal.nickname"/></td>
                        <td>${cdto.regdate}</td>
                        <td>${cdto.content}</td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>

              </div>

            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
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
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script>
    
    </script>   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</body>
</html>





