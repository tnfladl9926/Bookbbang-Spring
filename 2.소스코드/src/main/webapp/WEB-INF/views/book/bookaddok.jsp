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
    <link rel="stylesheet" href="/resources/css/bookaddok.css">
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
              <li><h3>${bookList[3].field}</h3></li>
              <c:forEach items="${booknav}" var="dto">
              <li><a href="booklist.do?field=${bookList[3].field}&genre=${dto.genre}">${dto.genre}</a></li>
              </c:forEach>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">
                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <div class="bookListAll">

                    <!-- 정렬탭 -->
                    <div class="quHeader">
                        도서 등록
                    </div>
                    <hr style="margin: 0px;">
                    <table class="table tblQ" style="text-align-last: center; width:300px; margin-left: calc(50% - 150px); margin-top: 100px; margin-bottom: 100px;">
                        <thead>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    도서가 정상적으로 등록되었습니다.
                                </td>
                              </tr>
                            <tr>
                                <td style="border-style: none;">
                                    <div class="btns">
                                        <button type="button" class="btn btn-light" onclick="location.href='/book/booklistadmin.do?'">확인</button>
                                    </div>
                                </td>
                            </tr>
                          </tbody>
                    </table>
                    <hr>
                    <br>
                    <div class="btns">
                      <button type="button" class="btn btn-light">목록</button>
                    </div>
                </div>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        
    </script>
</body>
</html>