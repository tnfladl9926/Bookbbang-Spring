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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/bookadd.css">
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
                <form method="POST" action="/book/bookaddok.do">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="csrf_token">
			    <input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="csrf_header">
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
                                  <input type="text" style="width: 55%;"name="title" required>
                                </td>
                            <tr>
                              <th scope="row">작가</th>
                              <td><input type="text" name="writer" required></td>
                              <th scope="row">출판사</th>
                              <td><input type="text" name="publisher" required></td>
                            </tr>
                            <tr>
                              <th scope="row">대분류</th>
                              <td>
                              	<select id="field" name="field" style="width: 150px;" required onchange="showgenre()">
                              		<option value="소설/시/희곡">소설/시/희곡</option>
                              		<option value="경제/경영">경제/경영</option>
                              		<option value="IT 모바일">IT 모바일</option>
                              		<option value="자연과학">자연과학</option>
                              		<option value="에세이">에세이</option>
                              		<option value="역사">역사</option>
                              		<option value="인문">인문</option>
                              		<option value="예술">예술</option>
                              		<option value="자연과학">자연과학</option>
                              		<option value="여행">여행</option>
                              		<option value="잡지">잡지</option>
                              	</select>
							  </td>
                              <th scope="row">소분류</th>
                              <td>
							  	<select id="genre" name="genre" style="width: 150px;" required>
						  		</select>
							  </td>
                            </tr>
                            <tr>
                              <th scope="row">가격</th>
                              <td><input type="text" name="price" required></td>
                              <th scope="row">출판일</th>
                              <td><input type="text" name="regdate" required></td>
                            </tr>
                            <tr>
                              <th scope="row">재고</th>
                              <td><input type="text" name="inventory" required></td>
                              <th scope="row">판매량</th>
                              <td><input type="text" name="salesrate" required></td>
                            </tr>
                            <tr>
                              <th scope="row">도서 설명</th>
                              <td colspan="3">
                                <textarea style="width: 100%; height: 200px;" name="explain" required></textarea>
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">표지</th>
                              <td colspan="3"><input type=file name="image"></td>
                            </tr>
                          </tbody>
                          <tfoot>
                          </tfoot>
                    </table>
                    <div class="btns">
                    <button type="submit" class="btn btn-secondary">등록</button>
                    <a href="javascript:history.back()" class="btn" style="border: 1px solid gray;">취소</a>
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
    
    
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
		
		//gpt2
		function showgenre() {
		  var field = $('#field').val();
		  var genreSelect = $('#genre');
		
		  //alert(field);
		
		  $.ajax({
		    url: "/book/bookgenre.do",
		    type: "post",
		    dataType: "json",
		    data: {
		      field: field
		    },
		    success: function(response) {
		      genreSelect.empty();
		      //genreSelect.append($('<option value=""></option>'));
		
		      for (var i = 0; i < response.length; i++) {
		        //genreSelect.append($('<option></option>').attr('value', response[i]).text(response[i]));
		    	  genreSelect.append($(`<option value="\${response[i].genre}">\${response[i].genre}</option>`));
		      }
		    },
		    error: function(a,b,c) {
		    	console.log(a,b,c);
		      alert('서버와의 통신에 문제가 발생했습니다.');
		    },
		    beforeSend: function(jqXHR, settings) {
		      var header = $('.csrf_header').val();
		      var token = $('.csrf_token').val();
		      jqXHR.setRequestHeader(header, token);
		    }
		  });
		}
    
    </script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>