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
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="/resources/css/bootstrap.css" rel="stylesheet">    
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link href="/resources/css/ydhn.css" rel="stylesheet">


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
            <ul class="nav" style="display: none;">
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
                <div style="padding-bottom: 20px">
                  <input class="btn btn-light" type="button" name="" id="" value="배송">
                  <input class="btn btn-light" type="button" name="" id="" value="결제">
                  <input class="btn btn-light" type="button" name="" id="" value="환불">
                </div>
                <table class="table table-hover">
                    <tr class="table-secondary">
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                    <c:forEach items="${noticelist}" var="dto">
                    <tr>
                        <td>${dto.rnum}</td>
                        <td><a href="/notice/noticedetail.do?noticeseq=${dto.noticeseq}">${dto.title}</a></td>
                        <td>관리자</td>
                        <td>${dto.regdate}</td>
                        <td>${dto.viewcnt}</td>
                    </tr>
                    </c:forEach>
                </table>
                
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                  <button class="btn btn-light" type="button">
                    <a href="/notice/noticeadd.do">글쓰기 <span class="material-symbols-outlined">draw</span></a>
                  </button>
                </div>
            </div>
            
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
    <script src="js/jquery-3.6.4.js"></script>
    <script>
    
    </script>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</body>
</html>






