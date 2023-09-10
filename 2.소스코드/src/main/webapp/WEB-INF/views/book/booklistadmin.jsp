<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="/resources/css/booklistadmin.css">
    
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
                    <div class="quHeader">
                        도서 관리
                    </div>
                    <hr style="margin: 0px;">
                    <table class="table">
                        <thead>
                            <tr>
                              <th scope="col" style="width: 100px;">No</th>
                              <th scope="col" style="width: 400px;">제목</th>
                              <th scope="col">글쓴이</th>
                              <th scope="col">출판사</th>
                              <th scope="col">출판일</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach items="${booklistadmin}" var="dto">
                            <tr>
                              <th scope="row">${dto.bookseq}</th>
                              <td class="title">
                              <a href='/book/bookdetailadmin.do?bookseq=${dto.bookseq}'>${dto.title}</a>
                              
                              </td>
                              <td>${dto.writer}</td>
                              <td>${dto.publisher}</td>
                              <td>${dto.regdate}</td>
                            </tr>
                            </c:forEach>
                          </tbody>
                          <tfoot>
                          </tfoot>
                    </table>
                    <div>
                        <div class="qButton">
                            <button type="button" class="btn btn-secondary" onclick="location.href='/book/bookadd.do?'">등록</button>
                        </div>
                        <div class="bookPaging">
                            <div><< < 1 2 3 4 5 6 7 8 9 > >></div>
                        </div>
                    </div>
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