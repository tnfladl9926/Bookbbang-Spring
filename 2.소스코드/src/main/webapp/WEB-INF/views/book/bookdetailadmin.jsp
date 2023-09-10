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
    <link rel="stylesheet" href="/resources/css/bookdetailadmin.css">
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
            <ul class="nav" style="display: none;">
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
                <form method="POST" action="/book/bookeditadmin.do">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
<%--                 <input type="hidden" name="bookseq" value="${bookdetailadmin[0].bookseq}"> --%>
                <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>">
                <div class="bookListAll">

                    <!-- 정렬탭 -->
                    <div class="quHeader">
                        도서 등록
                    </div>
                    <hr style="margin: 0px;">
                    <table class="table tblQ">
                        <thead>
                          </thead>
                          <tbody>
                            <tr>
                                <th scope="col">도서 제목</th>
                                <td colspan="3">
                                  ${bookdetailadmin[0].title}
                                </td>
                            <tr>
                              <th scope="row">작가</th>
                              <td>
							   ${bookdetailadmin[0].writer}
							  </td>
                              <th scope="row">출판사</th>
                              <td>
							  	${bookdetailadmin[0].publisher}
							  </td>
                            </tr>
                            <tr>
                              <th scope="row">대분류</th>
                              <td>
							  	${bookdetailadmin[0].field}
							  </td>
                              <th scope="row">소분류</th>
                              <td>
							  	${bookdetailadmin[0].genre}
							  </td>
                            </tr>
                            <tr>
                              <th scope="row">가격</th>
                              <td>
							  	${bookdetailadmin[0].price}
							  </td>
                              <th scope="row">출판일</th>
                              <td>
							  	${bookdetailadmin[0].regdate}
							  </td>
                            </tr>
                            <tr>
                              <th scope="row">재고</th>
                              <td>${bookdetailadmin[0].inventory}</td>
                              <th scope="row">판매량</th>
                              <td>${bookdetailadmin[0].salesrate}</td>
                            </tr>
                            <tr>
                              <th scope="row">도서 설명</th>
                              <td colspan="3">
                                ${bookdetailadmin[0].explain}
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">표지</th>
                              <td colspan="3">
								<img src="/resources/image/bookposter/${bookdetailadmin[0].image}">
							  </td>
                            </tr>
                          </tbody>
                          <tfoot>
                          </tfoot>
                    </table>
                    <div class="btns">
                    <button type="button" class="btn btn-secondary" onclick="location.href='/book/bookeditadmin.do?bookseq=${bookdetailadmin[0].bookseq}';">수정</button>
                    <a href="javascript:history.back()" class="btn" style="border: 1px solid gray;">삭제</a>
                    <br>
                    <a href="javascript:history.back()" class="btn" style="border: 1px solid gray;">목록</a>
                    </div>
                </div>
            </form>
            
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

        $(document).ready(function() {
            $('#selectAllCheckbox2').click(function() {
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